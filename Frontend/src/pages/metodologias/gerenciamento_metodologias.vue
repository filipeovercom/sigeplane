<template>
  <q-page padding
          class="docs-table">
    <!--region CARD TABELA-->
    <q-card>
      <q-card-main class="q-pa-none">
        <q-table ref="table"
                 :data="metodologias"
                 :columns="dataTable.columns"
                 :visible-columns="dataTable.visibleColumns"
                 :filter="dataTable.filter"
                 :selected.sync="dataTable.selected"
                 :loading="dataTable.loading"
                 color="primary"
                 selection="single"
                 row-key="id">
          <template slot="top-left"
                    slot-scope="props">
            <q-search v-model="dataTable.filter"
                      hide-underline
                      style="width: 350px"
                      placeholder="Procurar (Descrição, Utilização)"/>
          </template>
          <template slot="top-right"
                    slot-scope="props">
            <q-btn push
                   class="q-mr-sm"
                   color="primary"
                   round
                   icon="add"
                   title="Nova Metodologia"
                   @click="onClickAddMetodologia"/>
            <q-btn :disable="!dataTable.selected"
                   push
                   class="q-mr-sm"
                   color="secondary"
                   round
                   icon="edit"
                   title="Editar Metodologia"
                   @click="onClickEditMetodologia"/>
          </template>
          <q-td slot="body-cell-nome"
                slot-scope="props"
                :props="props">
            <p class="ellipsis"
               style="max-width: 800px;"
               v-text="props.value"/>
            <q-tooltip anchor="bottom middle"
                       style="max-width: 500px;">
              {{ props.value }}
            </q-tooltip>
          </q-td>
          <q-td slot="body-cell-utilizacao"
                slot-scope="props"
                :props="props">
            <q-item v-for="value in props.value"
                    :key="value.curso">
              <q-item-main :label="value.curso"/>
              <q-item-side right>
                <q-chip color="primary"
                        class="shadow-2">{{ value.qtd }}
                </q-chip>
              </q-item-side>
            </q-item>
          </q-td>
        </q-table>
      </q-card-main>
    </q-card>
    <!--endregion CARD TABELA-->
    <!--region MODAL ADICIONAR/EDITAR-->
    <q-modal v-model="modal"
             :content-css="{minWidth: '60%', minHeight: '400px', maxHeight: '400px'}">
      <q-modal-layout>
        <q-toolbar slot="header">
          <q-btn flat
                 round
                 dense
                 icon="close"
                 wait-for-ripple
                 @click="modal = false"/>
          <q-toolbar-title>
            {{ metodologia.id === '' ? 'Adicionar' : 'Editar' }} Metodologia
          </q-toolbar-title>
        </q-toolbar>
        <div class="q-pa-lg">
          <div class="row gutter-sm">
            <div class="col-xs-12">
              <p class="caption">Descrição</p>
              <q-input
                v-model="metodologia.descricao"
                :max-height="200"
                placeholder="Informe a descrição da metodologia"
                type="textarea"
                max="255"/>
            </div>
          </div>
        </div>
        <q-toolbar slot="footer"
                   class="justify-end">
          <q-btn label="Salvar"
                 icon="save"
                 class="bg-white text-primary"
                 @click="salvarMetodologia"/>
          <q-btn label="Cancelar"
                 icon="close"
                 class="bg-white text-negative q-ml-sm"
                 @click="modal = false"/>
        </q-toolbar>
      </q-modal-layout>
    </q-modal>
    <!--endregion MODAL ADICIONAR/EDITAR-->
  </q-page>
</template>

<script>
function getNewMetodologia () {
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
      metodologia: getNewMetodologia(),
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
    metodologias () {
      return this.$store.getters['metodologias/getData'];
    }
  },
  methods: {
    salvarMetodologia () {
      const hasID = this.metodologia.id !== '';
      this.metodologia.descricao.trim();
      if (!hasID) {
        this.$store.dispatch('metodologias/addMetodologia', this.metodologia);
      }
      this.$q.notify({
        type: 'positive',
        position: 'top',
        message: `Metodologia ${hasID ? 'alterada' : 'inserida'} com sucesso!`
      });
      this.metodologia = getNewMetodologia();
    },
    onClickAddMetodologia () {
      this.metodologia = getNewMetodologia();
      this.modal       = true;
    },
    onClickEditMetodologia () {
      this.metodologia = this.dataTable.selected[0];
      this.modal       = true;
    }
  }
};
</script>
