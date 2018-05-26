<template>
  <q-page padding class="docs-table">
    <!--region CARD TABELA-->
    <q-card>
      <q-card-main class="q-pa-none">
        <q-table ref="table" color="primary" :data="disciplinas" :columns="dataTable.columns"
                 :visible-columns="dataTable.visibleColumns" :filter="dataTable.filter"
                 selection="multiple" :selected.sync="dataTable.selected" row-key="id"
                 :loading="dataTable.loading">
          <template slot="top-left" slot-scope="props">
            <q-search v-model="dataTable.filter"
                      hide-underline style="width: 350px"
                      placeholder="Procurar (Cód. Interno, Nome, Curso, Ementa)"/>
          </template>
          <template slot="top-right" slot-scope="props">
            <q-btn push class="q-mr-sm" color="primary" round icon="add" title="Nova Disciplina"
                   @click="onClickAddDisciplina"/>
            <q-btn push class="q-mr-sm" color="secondary" round icon="edit" title="Editar Disciplina"
                   @click="onClickEditDisciplina"
                   :disable="dataTable.selected.length !== 1"/>
            <q-btn push color="tertiary" round icon="delete" title="Desativar Disciplina"
                   @click="onClickDesaDisciplina"
                   :disable="dataTable.selected.length === 0"/>
          </template>
          <q-td slot="body-cell-ementa" slot-scope="props" :props="props">
            <p class="ellipsis" style="max-width: 500px;">
              {{ props.value }}
            </p>
            <q-tooltip anchor="bottom middle" style="max-width: 500px;">
              {{ props.value }}
            </q-tooltip>
          </q-td>
          <q-td slot="body-cell-status" slot-scope="props" :props="props">
            <q-icon color="positive" v-if="props.value" name="fa-check-circle" title="Ativo"/>
            <q-icon color="negative" v-if="!props.value" name="fa-times-circle" title="Inativo"/>
          </q-td>
        </q-table>
      </q-card-main>
    </q-card>
    <!--endregion CARD TABELA-->
    <!--region MODAL ADICIONAR/EDITAR-->
    <q-modal v-model="modal" :content-css="{minWidth: '60%', minHeight: '80%'}">
      <q-modal-layout>
        <q-toolbar slot="header">
          <q-btn flat round dense @click="modal = false"
                 icon="close" wait-for-ripple/>
          <q-toolbar-title>
            {{ disciplina.id === '' ? 'Adicionar' : 'Editar' }} Disciplina
          </q-toolbar-title>
        </q-toolbar>
        <div class="q-pa-lg">
          <div class="row gutter-sm">
            <div class="col-md-6 col-lg-2">
              <p class="caption">Cód. Interno</p>
              <q-input v-model="disciplina.codInterno" placeholder="Código Interno"/>
            </div>
            <div class="col-md-6 col-lg-6">
              <p class="caption">Nome</p>
              <q-input v-model="disciplina.nome" placeholder="Nome da Disciplina"/>
            </div>
            <div class="col-md-6 col-lg-4">
              <p class="caption">Curso</p>
              <q-select v-model="disciplina.curso" placeholder="Informe o Curso"
                        filter separator :options="cursos"/>
            </div>
            <div class="col-xs-12">
              <p class="caption">Ementa</p>
              <q-editor
                v-model="disciplina.ementa"
                toolbar-text-color="white"
                toolbar-toggle-color="yellow-8"
                toolbar-flat toolbar-bg="primary"
                max-height="200px"
                :toolbar="[
                  ['bold', 'italic', 'underline']
                ]"
              />
            </div>
            <div class="col-xs-12">
              <p class="caption">Contribuição para Formação do Perfil do Egresso</p>
              <q-editor
                v-model="disciplina.contribuicaoFormacao"
                toolbar-text-color="white"
                toolbar-toggle-color="yellow-8"
                toolbar-flat toolbar-bg="primary"
                max-height="200px"
                :toolbar="[
                  ['bold', 'italic', 'underline']
                ]"
              />
            </div>
            <div class="col-xs-12">
              <p class="caption">Bibliografia Básica</p>
              <q-editor
                v-model="disciplina.bibliografiaBasica"
                toolbar-text-color="white"
                toolbar-toggle-color="yellow-8"
                toolbar-flat toolbar-bg="primary"
                max-height="200px"
                :toolbar="[
                  ['bold', 'italic', 'underline']
                ]"
              />
            </div>
            <div class="col-xs-12">
              <p class="caption">Bibliografia Complementar</p>
              <q-editor
                v-model="disciplina.bibliografiaComplementar"
                toolbar-text-color="white"
                toolbar-toggle-color="yellow-8"
                toolbar-flat toolbar-bg="primary"
                max-height="200px"
                :toolbar="[
                  ['bold', 'italic', 'underline']
                ]"
              />
            </div>
          </div>
        </div>
        <q-toolbar slot="footer" class="justify-end">
          <q-btn label="Salvar" icon="save" class="bg-white text-primary"
                 @click="salvarDisciplina"/>
          <q-btn label="Cancelar" icon="close" class="bg-white text-negative q-ml-sm"
                 @click="modal = false"/>
        </q-toolbar>
      </q-modal-layout>
    </q-modal>
    <!--endregion MODAL ADICIONAR/EDITAR-->
  </q-page>
</template>

<script>
function getNewDisciplina () {
  return {
    id: '',
    codInterno: '',
    nome: '',
    curso: '',
    ementa: '',
    contribuicaoFormacao: '',
    bibliografiaBasica: '',
    bibliografiaComplementar: ''
  };
}

export default {
  data () {
    return {
      modal: false,
      disciplina: getNewDisciplina(),
      dataTable: {
        visibleColumns: ['codInterno', 'nome', 'curso', 'ementa', 'status'],
        columns: [
          {name: 'id', field: 'id'},
          {
            name: 'codInterno',
            label: 'Cód. Interno',
            field: 'codInterno',
            align: 'left'
          },
          {name: 'nome', label: 'Nome', field: 'nome', align: 'left'},
          {name: 'curso', label: 'Curso', field: 'curso', align: 'left'},
          {name: 'ementa', label: 'Ementa', field: 'ementa', align: 'left'},
          {name: 'status', label: 'Status', field: 'status', align: 'center'}
        ],
        filter: '',
        selected: [],
        loading: false
      }
    };
  },
  computed: {
    disciplinas () {
      return this.$store.getters['disciplinas/getData'];
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
    salvarDisciplina () {
      const hasID = this.disciplina.id !== '';
      if (!hasID) {
        this.$store.dispatch('disciplinas/addDisciplina', this.disciplina);
      }
      this.$q.notify({
        type: 'positive',
        position: 'top',
        message: `Disciplina ${hasID ? 'alterada' : 'inserida'} com sucesso`
      });
      this.disciplina = getNewDisciplina();
    },
    onClickAddDisciplina () {
      this.disciplina = getNewDisciplina();
      this.modal = true;
    },
    onClickEditDisciplina () {
      this.disciplina = this.dataTable.selected[0];
      this.modal = true;
    },
    onClickDesaDisciplina () {
      this.$q
        .dialog({
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
    }
  }
};
</script>
