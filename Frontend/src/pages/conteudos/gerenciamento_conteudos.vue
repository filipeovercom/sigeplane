<template>
  <q-page padding
          class="docs-table">
    <!--region CARD TABELA-->
    <q-card>
      <q-card-main class="q-pa-none">
        <q-table ref="table"
                 :data="conteudos"
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
                      placeholder="Procurar (Descrição ou Curso)"/>
          </template>
          <template slot="top-right"
                    slot-scope="props">
            <q-btn push
                   class="q-mr-sm"
                   color="primary"
                   round
                   icon="add"
                   title="Novo Conteúdo"
                   @click="onClickAddConteudo"/>
            <q-btn :disable="dataTable.selected.length !== 1"
                   push
                   class="q-mr-sm"
                   color="secondary"
                   round
                   icon="edit"
                   title="Editar Conteúdo"
                   @click="onClickEditConteudo"/>
            <q-btn :disable="dataTable.selected.length === 0"
                   push
                   color="tertiary"
                   round
                   icon="delete"
                   title="Excluir Conteudo"
                   @click="onClickDesaConteudo"/>
          </template>
          <q-td slot="body-cell-nome"
                slot-scope="props"
                :props="props">
            {{ props.value && props.value.length > 110 ? props.value.substring(0, 110) + '...' : props.value }}
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
            {{ conteudo.id === '' ? 'Adicionar' : 'Editar' }} Conteúdo
          </q-toolbar-title>
        </q-toolbar>
        <div class="q-pa-lg">
          <div class="row gutter-sm">
            <div class="col-md-6 col-lg-6">
              <p class="caption">Descrição</p>
              <q-input v-model="conteudo.descricao"
                       type="textarea"
                       placeholder="Descrição do Conteúdo"/>
            </div>
            <div class="col-md-6 col-lg-4">
              <p class="caption">Curso</p>
              <q-select v-model="conteudo.curso"
                        :options="cursos"
                        placeholder="Informe o Curso"
                        filter
                        separator/>
            </div>
          </div>
        </div>
        <q-toolbar slot="footer"
                   class="justify-end">
          <q-btn label="Salvar"
                 icon="save"
                 class="bg-white text-primary"
                 @click="salvarConteudo"/>
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
function getNewConteudo () {
  return {
    id: '',
    descricao: '',
    curso: ''
  };
}

export default {
  data () {
    return {
      modal: false,
      conteudo: getNewConteudo(),
      dataTable: {
        visibleColumns: ['descricao', 'curso'],
        columns: [
          {name: 'id', field: 'id'},
          {name: 'descricao', label: 'Descrição', field: 'descricao', align: 'left'},
          {name: 'curso', label: 'Curso', field: 'curso', align: 'left'}
        ],
        filter: '',
        selected: [],
        loading: false
      }
    };
  },
  computed: {
    conteudos () {
      return this.$store.getters['conteudos/getData'];
    },
    cursos () {
      return this.$store.getters['cursos/getData'].map(curso => {
        return {
          label: curso.nome,
          sublabel: 'Coordenador: ' + curso.coordenador,
          value: curso.nome
        };
      });
    }
  },
  methods: {
    salvarConteudo () {
      const hasID = this.conteudo.id !== '';
      if (!hasID) {
        this.$store.dispatch('conteudos/addConteudo', this.conteudo);
      }
      this.$q.notify({
        type: 'positive',
        position: 'top',
        message: `Conteudo ${hasID ? 'alterado' : 'inserido'} com sucesso`
      });
      this.conteudo = getNewConteudo();
    },
    onClickAddConteudo () {
      this.conteudo = getNewConteudo();
      this.modal    = true;
    },
    onClickEditConteudo () {
      this.conteudo = this.dataTable.selected[0];
      this.modal    = true;
    },
    onClickDesaConteudo () {
      this.$q
      .dialog({
        title: 'Confirmação',
        message: 'Deseja realmente excluir a conteúdo?',
        ok: true,
        cancel: false
      })
      .then(() => {
        this.dataTable.selected.forEach(conteudo => {
          conteudo.status = false;
        });
        this.$q.notify({
          type: 'positive',
          position: 'top',
          message: 'Conteúdo excluído com sucesso'
        });
      });
    }
  }
};
</script>
