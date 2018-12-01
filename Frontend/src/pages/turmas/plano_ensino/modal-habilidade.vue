<template>
  <v-dialog v-model="isShowModal"
            :fullscreen="$vuetify.breakpoint.mdAndDown"
            width="90vw"
            scrollable
            @keydown.esc="isShowModal = false">
    <v-card tile>
      <v-toolbar card
                 dark
                 color="primary">
        <v-btn icon
               dark
               @click.native="isShowModal = false">
          <v-icon>close</v-icon>
        </v-btn>
        <v-toolbar-title>Adicionar Habiliade(s)</v-toolbar-title>
        <v-spacer/>
        <q-btn push
               label="Salvar"
               icon="save"
               color="green"
               @click="addNewHabilidade"/>
      </v-toolbar>
      <v-card-text>
        <v-autocomplete
          v-model="habilidades.selecionadas"
          :items="habilidades.items"
          :loading="habilidades.isLoading"
          :search-input.sync="habilidades.searchValue"
          box
          chips
          cache-items
          color="blue-grey lighten-2"
          label="Habilidades"
          placeholder="Digite 3 letras para pesquisar"
          item-text="descricao"
          multiple
          return-object>
          <template
            slot="selection"
            slot-scope="data">
            <v-chip
              :selected="data.selected"
              close
              class="chip--select-multi"
              @input="remove(data.item)">
              {{ data.item.descricao }}
            </v-chip>
          </template>
          <template
            slot="item"
            slot-scope="data">
            <template v-if="typeof data.item !== 'object'">
              <v-list-tile-content v-text="data.item"/>
            </template>
            <template v-else>
              <v-list-tile-content>
                <v-list-tile-title v-html="data.item.descricao"/>
              </v-list-tile-content>
            </template>
          </template>
        </v-autocomplete>
      </v-card-text>
    </v-card>
  </v-dialog>
</template>

<script>
import {habilidadeService}   from './habilidadeService';
import {notificationService} from '../../../utils/notificationService';

export default {
  name: 'ModalHabilidade',
  props: {
    item: {
      type: Object,
      require: true,
      default: () => ({})
    },
    showModal: {type: Boolean, default: () => false}
  },
  data () {
    return {
      isShowModal: false,
      habilidades: {
        searchValue: '',
        selecionadas: [],
        items: [],
        isLoading: false
      }
    };
  },
  watch: {
    'habilidades.searchValue' (value) {
      const valueAtual = value;
      if (valueAtual) {
        if (valueAtual.length > 2) {
          setTimeout(async () => {
            this.habilidades.isLoading = true;
            if (valueAtual === this.habilidades.searchValue) {
              await habilidadeService.getAllByDescricao(valueAtual)
              .then(data => {
                data && data.forEach(item => {
                  const index = this.habilidades.items.findIndex(comp => comp.uuid === item.uuid);
                  if (index < 0) {
                    this.habilidades.items.push(item);
                  }
                });
              })
              .catch(() => notificationService.error('Erro ao buscar competências!'))
              .finally(() => {
                this.habilidades.isLoading = false;
              });
            }
          }, 500);
        }
      }
    },
    showModal (value) {
      this.isShowModal = value;
    },
    isShowModal (value) {
      if (!value) this.$emit('hideModal', value);
    }
  },
  methods: {
    remove (item) {
      this.habilidades.items = this.habilidades.items.filter(it => it.id !== item.id);
    },
    addNewHabilidade () {
      this.$emit('addHabilidade', {
        itemCronograma: {
          uuid: this.item.uuid
        },
        habilidades: this.habilidades.selecionadas.map(hab => hab.descricao)
      });
    }
  }
};
</script>
