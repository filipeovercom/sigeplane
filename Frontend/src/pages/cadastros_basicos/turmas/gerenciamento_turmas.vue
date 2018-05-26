<template>
  <q-page padding class="docs-table">
    <!--region CARD TABELA-->
    <q-card>
      <q-card-main class="q-pa-none">
        <q-table ref="table" color="primary" :data="turmas" :columns="dataTable.columns"
                 :visible-columns="dataTable.visibleColumns" :filter="dataTable.filter"
                 selection="multiple" :selected.sync="dataTable.selected" row-key="id"
                 :loading="dataTable.loading">
          <template slot="top-left" slot-scope="props">
            <q-search v-model="dataTable.filter"
                      hide-underline style="width: 350px"
                      placeholder="Procurar (Cód. Interno, Descrição, Curso)"/>
          </template>
          <template slot="top-right" slot-scope="props">
            <q-btn push class="q-mr-sm" color="primary" round icon="add" title="Nova Turma"
                   @click="onClickAddTurma"/>
            <q-btn push class="q-mr-sm" color="secondary" round icon="edit" title="Editar Turma"
                   @click="onClickEditTurma"
                   :disable="dataTable.selected.length !== 1"/>
            <q-btn push color="tertiary" round icon="delete" title="Desativar Turma"
                   @click="onClickDesaTurma"
                   :disable="dataTable.selected.length === 0"/>
          </template>
          <q-td slot="body-cell-status" slot-scope="props" :props="props">
            <q-icon color="positive" v-if="props.value" name="fa-check-circle" title="Ativo"/>
            <q-icon color="negative" v-if="!props.value" name="fa-times-circle" title="Inativo"/>
          </q-td>
        </q-table>
      </q-card-main>
    </q-card>
    <!--endregion CARD TABELA-->
    <!--region MODAL ADICIONAR/EDITAR-->
    <q-modal v-model="modal" :content-css="{minWidth: '60%', minHeight: '300px'}">
      <q-modal-layout>
        <q-toolbar slot="header">
          <q-btn flat round dense @click="modal = false"
                 icon="back" wait-for-ripple/>
          <q-toolbar-title>
            {{ turma.id === '' ? 'Adicionar' : 'Editar' }} Turma
          </q-toolbar-title>
        </q-toolbar>
        <div class="layout-padding">
          <div class="row gutter-sm">
            <div class="col-md-6 col-lg-4">
              <q-input color="amber" v-model="turma.codInterno" placeholder="Código Interno"
                       stack-label="Cód. Interno"/>
            </div>
            <div class="col-md-6 col-lg-4">
              <q-select v-model="turma.curso" placeholder="Informe o Curso"
                        stack-label="Curso" filter separator
                        :options="cursos"/>
            </div>
            <div class="col-md-6 col-lg-4">
              <q-select v-model="turma.disciplina" placeholder="Informe o disciplina"
                        stack-label="Disciplina" filter separator
                        :options="disciplinas"/>
            </div>
            <div class="col-md-6 col-lg-4">
              <q-select stack-label="Professor" placeholder="Informe o Professor"
                        :options="professores" filter separator
                        v-model="turma.professor"/>
            </div>
          </div>
        </div>
        <q-toolbar slot="footer" class="justify-end">
          <q-btn v-if="!turma.id" label="Salvar" icon="save" class="bg-white text-primary"
                 @click="addTurma"/>
          <q-btn v-if="turma.id" label="Salvar" icon="save" class="bg-white text-primary"
                 @click="editTurma"/>
          <q-btn label="Cancelar" icon="close" class="bg-white text-negative q-ml-sm"
                 @click="modal = false"/>
        </q-toolbar>
      </q-modal-layout>
    </q-modal>
    <!--endregion MODAL ADICIONAR/EDITAR-->
  </q-page>
</template>

<script>
function getNewTurma () {
  return {
    id: '',
    codInterno: '',
    curso: '',
    disciplina: '',
    professor: ''
  };
}

export default {
  data () {
    return {
      modal: false,
      turma: getNewTurma(),
      dataTable: {
        visibleColumns: [
          'codInterno',
          'disciplina',
          'curso',
          'professor',
          'status'
        ],
        columns: [
          {name: 'id', field: 'id'},
          {
            name: 'codInterno',
            label: 'Cód. Interno',
            field: 'codInterno',
            align: 'left'
          },
          {
            name: 'disciplina',
            label: 'Disciplina',
            field: 'disciplina',
            align: 'left'
          },
          {name: 'curso', label: 'Curso', field: 'curso', align: 'left'},
          {
            name: 'professor',
            label: 'Professor',
            field: 'professor',
            align: 'center'
          },
          {name: 'status', label: 'Status', field: 'status', align: 'center'}
        ],
        filter: '',
        selected: [],
        loading: false
      }
    };
  },
  computed: {
    turmas () {
      return this.$store.getters['turmas/getData'];
    },
    disciplinas () {
      return this.$store.getters['disciplinas/getData'].map(disciplina => {
        return {
          label: disciplina.nome,
          sublabel: 'Cód. Interno: ' + disciplina.codInterno,
          value: disciplina.nome
        };
      });
    },
    cursos () {
      return this.$store.getters['cursos/getData'].map(curso => {
        return {
          label: curso.nome,
          sublabel: 'Coordenador: ' + curso.coordenador,
          value: curso.nome
        };
      });
    },
    professores () {
      return this.$store.getters['professores/getData'].map(professor => {
        return {
          label: professor.nome,
          sublabel: 'Matrícula: ' + professor.matricula,
          value: professor.nome
        };
      });
    }
  },
  methods: {
    selected (item) {
      this.$q.notify(`Selected suggestion "${item.label}"`);
    },
    addTurma () {
      this.$store.dispatch('turmas/addTurma', this.turma);
      this.$q.notify({
        type: 'positive',
        position: 'top',
        message: 'Turma inserida com sucesso'
      });
      this.turma = getNewTurma();
    },
    editTurma () {
      this.$q.notify({
        type: 'positive',
        position: 'top',
        message: 'Turma editada com sucesso'
      });
      this.turma = getNewTurma();
    },
    onClickAddTurma () {
      this.turma = getNewTurma();
      this.modal = true;
    },
    onClickEditTurma () {
      this.turma = this.dataTable.selected[0];
      this.modal = true;
    },
    onClickDesaTurma () {
      this.$q
        .dialog({
          title: 'Confirmação',
          message: 'Deseja realmente desativar a turma?',
          ok: true,
          cancel: false
        })
        .then(() => {
          this.dataTable.selected.forEach(turma => {
            turma.status = false;
          });
          this.$q.notify({
            type: 'positive',
            position: 'top',
            message: 'Turma desativada com sucesso'
          });
        });
    }
  }
};
</script>
