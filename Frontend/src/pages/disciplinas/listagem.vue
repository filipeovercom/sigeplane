<template>
  <q-card>
    <q-card-title>
      <h4 class="q-headline text-primary q-ma-none">Disciplinas</h4>
      <div slot="right">
        <q-btn push
               class="q-mr-sm"
               color="primary"
               icon="add"
               title="Nova Disciplina"
               @click="onClickAddDisciplina"/>
        <q-btn :disable="dataTable.selected.length !== 1"
               push
               class="q-mr-sm"
               color="secondary"
               icon="edit"
               title="Editar Disciplina"
               @click="onClickEditDisciplina"/>
        <q-btn v-if="false"
               :disable="dataTable.selected.length === 0"
               push
               color="tertiary"
               icon="delete"
               title="Desativar Disciplina"
               @click="onClickDesaDisciplina"/>
      </div>
    </q-card-title>
    <q-card-separator/>
    <q-card-main class="q-pa-none">
      <q-table ref="table"
               :data="dataTable.data"
               :columns="dataTable.columns"
               :visible-columns="dataTable.visibleColumns"
               :filter="dataTable.filter"
               :selected.sync="dataTable.selected"
               :pagination.sync="dataTable.pagination"
               :loading="dataTable.loading"
               color="primary"
               selection="multiple"
               row-key="uuid"
               @request="onDatatableRequest">
        <template slot="top-left"
                  slot-scope="props">
          <q-search v-model="dataTable.filter"
                    hide-underline
                    style="width: 350px"
                    placeholder="Procurar (Cód. Interno, Nome, Curso, Ementa)"/>
        </template>
        <q-td slot="body-cell-curso"
              slot-scope="props"
              :props="props">
          {{ props.value ? props.value.nome : '--' }}
        </q-td>
      </q-table>
    </q-card-main>
  </q-card>
</template>

<script>
import {DisciplinaService} from './disciplinaService';

export default {
  name: 'Listagem',
  data () {
    return {
      modal: false,
      dataTable: {
        data: [],
        visibleColumns: ['codigoInterno', 'nome', 'curso'],
        columns: [
          {name: 'id', field: 'id'},
          {name: 'uuid', field: 'uuid'},
          {name: 'codigoInterno', label: 'Cód. Interno', field: 'codigoInterno', align: 'left'},
          {name: 'nome', label: 'Nome', field: 'nome', align: 'left'},
          {name: 'curso', label: 'Curso', field: 'curso', align: 'left'}
        ],
        pagination: {
          page: 1,
          rowsPerPage: 10,
          rowsNumber: 0,
          sortBy: 'dataHoraCadastro',
          descending: true
        },
        filter: '',
        selected: [],
        loading: false
      }
    };
  },
  mounted () {
    this.fetchData();
  },
  methods: {
    onDatatableRequest (props) {
      if (props.filter) {
        let valor = props.filter;
        setTimeout(() => {
          if (valor === props.filter) {
            this.fetchData(props);
          }
        }, 700);
      } else {
        this.fetchData(props);
      }
    },
    onClickAddDisciplina () {
      this.$router.push({path: '/pages/disciplinas/nova'});
    },
    onClickEditDisciplina () {
      const selected = this.dataTable.selected[0];
      this.$router.push({path: `/pages/disciplinas/edicao/${selected.uuid}`});
    },
    onClickDesaDisciplina () {
      this.$q.dialog({
        title: 'Confirmação',
        message: 'Deseja realmente desativar a disciplina?',
        ok: true,
        cancel: false
      })
      .then(() => {
        this.dataTable.selected.forEach(disciplina => {
          disciplina.status = false;
        });
        this.$q.notify({
          type: 'positive',
          position: 'top',
          message: 'Disciplina desativada com sucesso'
        });
      });
    },
    async fetchData (tableProps) {
      this.dataTable.loading = true;
      if (tableProps) {
        this.dataTable.pagination = tableProps.pagination;
        this.dataTable.filter     = tableProps.filter;
      }
      await DisciplinaService.getDisciplinas(this.dataTable.pagination, this.dataTable.filter)
      .then(({content, totalElements}) => {
        this.dataTable.data                  = content;
        this.dataTable.pagination.rowsNumber = totalElements;
      }).catch(error => {
        this.$q.notify({
          message: `Ooops! Estamos com problemas`,
          type: 'negative',
          detail: 'Aguarde e tente novamente',
          position: 'top'
        });
        console.error('Erro ao carregar dados para a tabela: ', error);
      }).finally(() => {
        this.dataTable.loading = false;
      });
    }
  }
};
</script>
