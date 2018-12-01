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
        <v-toolbar-title>Adicionar Competência</v-toolbar-title>
        <v-spacer/>
        <q-btn push
               label="Salvar"
               icon="save"
               color="green"
               @click="addNewCompetencia"/>
      </v-toolbar>
      <v-card-text>
        <v-autocomplete
          v-model="competencias.selecionadas"
          :items="competencias.items"
          :loading="competencias.isLoading"
          :search-input.sync="competencias.searchValue"
          box
          chips
          cache-items
          color="blue-grey lighten-2"
          label="Competências"
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
import {competenciaService}  from './competenciaService';
import {notificationService} from '../../../utils/notificationService';

export default {
  name: 'ModalItemCronograma',
  props: {
    showModal: {type: Boolean, default: () => false}
  },
  data () {
    return {
      isShowModal: false,
      competencias: {
        searchValue: '',
        selecionadas: [],
        items: [],
        isLoading: false
      }
    };
  },
  watch: {
    'competencias.searchValue' (value) {
      const valueAtual = value;
      if (valueAtual) {
        if (valueAtual.length > 2) {
          setTimeout(async () => {
            this.competencias.isLoading = true;
            if (valueAtual === this.competencias.searchValue) {
              await competenciaService.getAllByDescricao(valueAtual)
              .then(data => {
                data && data.forEach(item => {
                  const index = this.competencias.items.findIndex(comp => comp.uuid === item.uuid);
                  if (index < 0) {
                    this.competencias.items.push(item);
                  }
                });
              })
              .catch(() => notificationService.error('Erro ao buscar competências!'))
              .finally(() => {
                this.competencias.isLoading = false;
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
      this.competencias.items = this.competencias.items.filter(it => it.id !== item.id);
    },
    addNewCompetencia () {
      this.$emit('addCompetencia', this.competencias.selecionadas);
    }
  }
};
</script>
