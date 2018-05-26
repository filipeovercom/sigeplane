<template>
  <q-page padding class="docs-table">
    <!--region CARD TABELA-->
    <q-card>
      <q-card-main class="q-pa-none">
        <q-table ref="table" color="primary" :data="habilidades" :columns="dataTable.columns"
                 :visible-columns="dataTable.visibleColumns" :filter="dataTable.filter"
                 selection="single" :selected.sync="dataTable.selected" row-key="id"
                 :loading="dataTable.loading">
          <template slot="top-left" slot-scope="props">
            <q-search v-model="dataTable.filter"
                      hide-underline style="width: 350px"
                      placeholder="Procurar (Descrição, Utilização)"/>
          </template>
          <template slot="top-right" slot-scope="props">
            <q-btn push class="q-mr-sm" color="primary" round icon="add" title="Nova Habilidade"
                   @click="onClickAddHabilidade"/>
            <q-btn push class="q-mr-sm" color="secondary" round icon="edit" title="Editar Habilidade"
                   @click="onClickEditHabilidade"
                   :disable="!dataTable.selected"/>
          </template>
          <q-td slot="body-cell-descricao" slot-scope="props" :props="props">
            <p v-text="props.value" class="ellipsis" style="max-width: 800px;"/>
            <q-tooltip anchor="bottom middle" style="max-width: 500px;">
              {{ props.value }}
            </q-tooltip>
          </q-td>
          <q-td slot="body-cell-utilizacao" slot-scope="props" :props="props">
            <q-item v-for="value in props.value" :key="value.curso">
              <q-item-main :label="value.curso"/>
              <q-item-side right>
                <q-chip color="primary" class="shadow-2">{{ value.qtd }}</q-chip>
              </q-item-side>
            </q-item>
          </q-td>
        </q-table>
      </q-card-main>
    </q-card>
    <!--endregion CARD TABELA-->
    <!--region MODAL ADICIONAR/EDITAR-->
    <q-modal v-model="modal" :content-css="{minWidth: '60%', minHeight: '400px', maxHeight: '400px'}">
      <q-modal-layout>
        <q-toolbar slot="header">
          <q-btn flat round dense @click="modal = false"
                 icon="close" wait-for-ripple/>
          <q-toolbar-title>
            {{ habilidade.id === '' ? 'Adicionar' : 'Editar' }} Habilidade
          </q-toolbar-title>
        </q-toolbar>
        <div class="q-pa-lg">
          <div class="row gutter-sm">
            <div class="col-xs-12">
              <p class="caption">Descrição</p>
              <q-input
                v-model="habilidade.descricao"
                placeholder="Informe a descrição da competência"
                type="textarea" max="255" :max-height="200"/>
            </div>
          </div>
        </div>
        <q-toolbar slot="footer" class="justify-end">
          <q-btn label="Salvar" icon="save" class="bg-white text-primary"
                 @click="salvarHabilidade"/>
          <q-btn label="Cancelar" icon="close" class="bg-white text-negative q-ml-sm"
                 @click="modal = false"/>
        </q-toolbar>
      </q-modal-layout>
    </q-modal>
    <!--endregion MODAL ADICIONAR/EDITAR-->
  </q-page>
</template>

<script>
function getNewHabilidade () {
  return {
    id: '',
    descricao: '',
    utilizacao: []
  };
}

export default {
  data () {
    return {
      modal: false,
      habilidade: getNewHabilidade(),
      dataTable: {
        visibleColumns: ['descricao', 'utilizacao'],
        columns: [
          {name: 'id', field: 'id'},
          {name: 'descricao', label: 'Descrição', field: 'descricao', align: 'left'},
          {name: 'utilizacao', label: 'Utilização', field: 'utilizacao', align: 'left'}
        ],
        filter: '',
        selected: undefined,
        loading: false
      }
    };
  },
  computed: {
    habilidades () {
      return this.$store.getters['habilidades/getData'];
    }
  },
  methods: {
    salvarHabilidade () {
      const hasID = this.habilidade.id !== '';
      this.habilidade.descricao.trim();
      if (!hasID) {
        this.$store.dispatch('habilidades/addHabilidade', this.habilidade);
      }
      this.$q.notify({
        type: 'positive',
        position: 'top',
        message: `Habilidade ${hasID ? 'alterada' : 'inserida'} com sucesso!`
      });
      this.habilidade = getNewHabilidade();
    },
    onClickAddHabilidade () {
      this.habilidade = getNewHabilidade();
      this.modal = true;
    },
    onClickEditHabilidade () {
      this.habilidade = this.dataTable.selected[0];
      this.modal = true;
    }
  }
};
</script>
