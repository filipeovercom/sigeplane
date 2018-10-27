<template>
  <q-page padding
          class="docs-table">
    <!--region CARD TABELA-->
    <q-card>
      <q-card-main class="q-pa-none">
        <q-table ref="table"
                 :data="recursos"
                 :columns="dataTable.columns"
                 :visible-columns="dataTable.visibleColumns"
                 :filter="dataTable.filter"
                 :selected.sync="dataTable.selected"
                 :loading="dataTable.loading"
                 color="primary"
                 selection="multiple"
                 row-key="id">
          <template slot="top-left"
                    slot-scope="props">
            <q-search v-model="dataTable.filter"
                      hide-underline
                      style="width: 350px"
                      placeholder="Procurar (Descrição ou Utilização)"/>
          </template>
          <template slot="top-right"
                    slot-scope="props">
            <q-btn push
                   class="q-mr-sm"
                   color="primary"
                   round
                   icon="add"
                   title="Novo Recurso"
                   @click="onClickAddRecurso"/>
            <q-btn :disable="dataTable.selected.length !== 1"
                   push
                   class="q-mr-sm"
                   color="secondary"
                   round
                   icon="edit"
                   title="Editar Recurso"
                   @click="onClickEditRecurso"/>
            <q-btn :disable="dataTable.selected.length === 0"
                   push
                   color="tertiary"
                   round
                   icon="delete"
                   title="Desativar Recurso"
                   @click="onClickDesaRecurso"/>
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
             :content-css="{minWidth: '60%', minHeight: '80%'}">
      <q-modal-layout>
        <q-toolbar slot="header">
          <q-btn flat
                 round
                 dense
                 icon="close"
                 wait-for-ripple
                 @click="modal = false"/>
          <q-toolbar-title>
            {{ recurso.id === '' ? 'Adicionar' : 'Editar' }} Recurso
          </q-toolbar-title>
        </q-toolbar>
        <div class="q-pa-lg">
          <div class="row gutter-sm">
            <div class="col-md-6 col-lg-6">
              <p class="caption">Nome</p>
              <q-input v-model="recurso.nome"
                       placeholder="Nome do Recurso"/>
            </div>
          </div>
        </div>
        <q-toolbar slot="footer"
                   class="justify-end">
          <q-btn label="Salvar"
                 icon="save"
                 class="bg-white text-primary"
                 @click="salvarRecurso"/>
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
function getNewRecurso () {
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
      recurso: getNewRecurso(),
      dataTable: {
        visibleColumns: ['descricao', 'utilizacao'],
        columns: [
          {name: 'id', field: 'id'},
          {name: 'descricao', label: 'Descrição', field: 'descricao', align: 'left'},
          {name: 'utilizacao', label: 'Utilização', field: 'utilizacao', align: 'left'}
        ],
        filter: '',
        selected: [],
        loading: false
      }
    };
  },
  computed: {
    recursos () {
      return this.$store.getters['recursos/getData'];
    }
  },
  methods: {
    salvarRecurso () {
      const hasID = this.recurso.id !== '';
      if (!hasID) {
        this.$store.dispatch('recursos/addRecurso', this.recurso);
      }
      this.$q.notify({
        type: 'positive',
        position: 'top',
        message: `Recurso ${hasID ? 'alterada' : 'inserida'} com sucesso`
      });
      this.recurso = getNewRecurso();
    },
    onClickAddRecurso () {
      this.recurso = getNewRecurso();
      this.modal   = true;
    },
    onClickEditRecurso () {
      this.recurso = this.dataTable.selected[0];
      this.modal   = true;
    },
    onClickDesaRecurso () {
      this.$q
      .dialog({
        title: 'Confirmação',
        message: 'Deseja realmente desativar a recurso?',
        ok: true,
        cancel: false
      })
      .then(() => {
        this.dataTable.selected.forEach(recurso => {
          recurso.status = false;
        });
        this.$q.notify({
          type: 'positive',
          position: 'top',
          message: 'Recurso desativada com sucesso'
        });
      });
    }
  }
};
</script>
