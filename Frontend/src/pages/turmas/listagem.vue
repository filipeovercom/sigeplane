<template>
  <q-card>
    <q-card-title>
      <q-btn push
             color="tertiary"
             icon="filter_list"
             label="Filtros"
             title="Filtros"
             @click="showFilters = !showFilters"/>
      <div slot="right">
        <q-btn push
               class="q-mr-sm"
               color="primary"
               icon="add"
               label="Adicionar"
               title="Nova Turma"
               @click="onClickAddTurma"/>
        <q-btn :disable="dataTable.selected.length !== 1"
               push
               color="secondary"
               icon="edit"
               label="Editar"
               title="Editar Turma"
               @click="onClickEditTurma"/>
        <q-btn v-if="false"
               :disable="dataTable.selected.length === 0"
               push
               color="tertiary"
               icon="delete"
               title="Desativar Turma"
               @click="onClickDesaDisciplina"/>
      </div>
    </q-card-title>
    <div v-if="showFilters"
         class="row q-pa-md gutter-x-sm">
      <div class="col-md-6 col-lg-3">
        <v-text-field v-model="nomeFilter"
                      solo
                      label="Nome"/>
      </div>
      <div class="col-md-6 col-lg-3">
        <v-autocomplete v-model="filters.curso"
                        :loading="cursos.isSearching"
                        :items="cursos.items"
                        :search-input.sync="cursos.searchValue"
                        cache-items
                        hide-selected
                        clearable
                        solo
                        hide-details
                        item-text="nome"
                        item-value="uuid"
                        label="Curso">
          <template slot="no-data">
            <v-list-tile>
              <v-list-tile-title>
                Nenhum registro encontrado...
              </v-list-tile-title>
            </v-list-tile>
          </template>
          <template slot="selection"
                    slot-scope="{ item, selected }">
            {{ item.nome }}
          </template>
          <template slot="item"
                    slot-scope="{ item, tile }">
            <v-list-tile-content>
              <v-list-tile-title v-text="item.nome"/>
            </v-list-tile-content>
          </template>
        </v-autocomplete>
      </div>
      <div v-if="$can('COORDENADOR')"
           class="col-md-6 col-lg-3">
        <v-autocomplete v-model="filters.professor"
                        :loading="professores.isSearching"
                        :items="professores.items"
                        :search-input.sync="professores.searchValue"
                        cache-items
                        hide-selected
                        clearable
                        solo
                        hide-details
                        item-text="nome"
                        item-value="uuid"
                        label="Professor(a)">
          <template slot="no-data">
            <v-list-tile>
              <v-list-tile-title>
                Nenhum registro encontrado...
              </v-list-tile-title>
            </v-list-tile>
          </template>
          <template slot="selection"
                    slot-scope="{ item, selected }">
            {{ item.nome }}
          </template>
          <template slot="item"
                    slot-scope="{ item, tile }">
            <v-list-tile-content>
              <v-list-tile-title v-text="item.nome"/>
            </v-list-tile-content>
          </template>
        </v-autocomplete>
      </div>
      <div class="col-md-6 col-lg-3">
        <v-autocomplete v-model="filters.disciplina"
                        :loading="disciplinas.isSearching"
                        :items="disciplinas.items"
                        :search-input.sync="disciplinas.searchValue"
                        cache-items
                        hide-selected
                        clearable
                        solo
                        hide-details
                        item-text="nome"
                        item-value="uuid"
                        label="Disciplina">
          <template slot="no-data">
            <v-list-tile>
              <v-list-tile-title>
                Nenhum registro encontrado...
              </v-list-tile-title>
            </v-list-tile>
          </template>
          <template slot="selection"
                    slot-scope="{ item, selected }">
            {{ item.nome }}
          </template>
          <template slot="item"
                    slot-scope="{ item, tile }">
            <v-list-tile-content>
              <v-list-tile-title v-text="item.nome"/>
            </v-list-tile-content>
          </template>
        </v-autocomplete>
      </div>
      <div class="col-md-6 col-lg-3">
        <v-select
          v-model="filters.statusPlanoEnsino"
          :items="statusPlanoItems"
          :clearable="true"
          item-text="text"
          item-value="value"
          label="Status do Plano de Ensino"
          solo/>
      </div>
    </div>
    <q-card-main class="q-pa-none">
      <q-table
        v-if="$vuetify.breakpoint.smAndDown"
        :data="dataTable.data"
        :columns="dataTable.columns"
        :filter="dataTable.filter"
        :selected.sync="dataTable.selected"
        :visible-columns="dataTable.visibleColumns"
        selection="multiple"
        grid
        hide-header
        row-key="uuid">
        <div
          slot="item"
          slot-scope="props"
          :style="props.selected ? 'transform: scale(0.95);' : ''"
          class="q-pa-xs col-xs-12 col-md-6 transition-generic">
          <q-card :class="props.selected ? 'bg-grey-2' : ''"
                  class="transition-generic"
                  @click.native="props.selected = !props.selected">
            <q-card-title class="relative-position">
              {{ props.row.nome }}
            </q-card-title>
            <q-card-separator/>
            <q-card-main class="q-pa-none">
              <q-list no-border>
                <q-item v-for="(col, index) in props.cols"
                        :key="index">
                  <q-item-main>
                    <q-item-tile label>{{ col.label }}</q-item-tile>
                  </q-item-main>
                  <q-item-side right>
                    <q-item-tile>{{ col.value }}</q-item-tile>
                  </q-item-side>
                </q-item>
              </q-list>
            </q-card-main>
          </q-card>
        </div>
      </q-table>
      <q-table
        v-if="$vuetify.breakpoint.mdAndUp"
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
        <q-td slot="body-cell-statusPlanoEnsino"
              slot-scope="props"
              :props="props">
          <q-chip v-if="props.value">
            {{ props.value | statusPlanoEnsino }}
          </q-chip>
        </q-td>
      </q-table>
    </q-card-main>
  </q-card>
</template>

<script>
import {TurmaService}      from './turmaService';
import {CursoService}      from '../../utils/cursosService';
import {UsuarioService}    from '../../utils/usuarioService';
import {DisciplinaService} from '../disciplinas/disciplinaService';
import {statusPlanoEnsino} from '../../utils/constants';

export default {
  name: 'Listagem',
  data () {
    return {
      modal: false,
      dataTable: {
        data: [],
        visibleColumns: ['nome', 'curso', 'professor', 'disciplina', 'statusPlanoEnsino'],
        columns: [
          {name: 'uuid', field: 'uuid'},
          {name: 'nome', label: 'Nome', field: 'nome', align: 'left', fixed: true},
          {name: 'curso', label: 'Curso', field: 'curso', align: 'left'},
          {name: 'professor', label: 'Professor', field: 'professor', align: 'left'},
          {name: 'disciplina', label: 'Disciplina', field: 'disciplina', align: 'left'},
          {name: 'statusPlanoEnsino', label: 'Status', field: 'statusPlanoEnsino', align: 'left'}
        ],
        pagination: {
          page: 1,
          rowsPerPage: 10,
          rowsNumber: 0
        },
        filter: '',
        selected: [],
        loading: false
      },
      professores: {
        items: [],
        searchValue: '',
        isSearching: false
      },
      disciplinas: {
        items: [],
        searchValue: '',
        isSearching: false
      },
      cursos: {
        items: [],
        searchValue: '',
        isSearching: false
      },
      nomeFilter: '',
      filters: {
        nome: '',
        curso: undefined,
        professor: undefined,
        disciplina: undefined,
        statusPlanoEnsino: undefined
      },
      showFilters: false
    };
  },
  computed: {
    statusPlanoItems () {
      return statusPlanoEnsino.itens;
    }
  },
  watch: {
    'cursos.searchValue' (value) {
      const valueAtual = value;
      if (valueAtual && valueAtual.length > 2) {
        setTimeout(async () => {
          if (valueAtual === this.cursos.searchValue) {
            this.cursos.isSearching = true;
            await CursoService.buscaLimitadaPorNome(valueAtual)
            .then(data => {
              this.cursos.items = data;
            })
            .catch(() => this.$q.notify({
              message: `Ooops! Estamos com problemas`,
              type: 'negative',
              detail: 'Aguarde e tente novamente',
              position: 'top'
            }))
            .finally(() => {
              this.cursos.isSearching = false;
            });
          }
        }, 500);
      }
    },
    'professores.searchValue' (value) {
      const valueAtual = value;
      if (valueAtual && valueAtual.length > 2) {
        setTimeout(async () => {
          if (valueAtual === this.professores.searchValue) {
            this.professores.isSearching = true;
            await UsuarioService.getAllProfessores({rowsPerPage: 5}, valueAtual)
            .then(({content}) => {
              this.professores.items = content;
            })
            .catch(() => this.$q.notify({
              message: `Ooops! Estamos com problemas`,
              type: 'negative',
              detail: 'Aguarde e tente novamente',
              position: 'top'
            }))
            .finally(() => {
              this.professores.isSearching = false;
            });
          }
        }, 500);
      }
    },
    'disciplinas.searchValue' (value) {
      const valueAtual = value;
      if (valueAtual && valueAtual.length > 2) {
        setTimeout(async () => {
          if (valueAtual === this.disciplinas.searchValue) {
            this.disciplinas.isSearching = true;
            await DisciplinaService.getDisciplinas({rowsPerPage: 5}, valueAtual)
            .then(({content}) => {
              this.disciplinas.items = content;
            }).catch(() => this.$q.notify({
              message: `Ooops! Estamos com problemas`,
              type: 'negative',
              detail: 'Aguarde e tente novamente',
              position: 'top'
            })).finally(() => {
              this.disciplinas.isSearching = false;
            });
          }
        }, 500);
      }
    },
    nomeFilter (value) {
      const valorAtual = value;
      setTimeout(() => {
        if (valorAtual === this.nomeFilter) {
          this.filters.nome = valorAtual;
        }
      }, 300);
    },
    filters: {
      handler () {
        this.fetchData();
      },
      deep: true
    }
  },
  mounted () {
    this.fetchData();
    this.$root.$on('contextoAlterado', this.fetchData);
  },
  methods: {
    onDatatableRequest (props) {
      this.fetchData(props);
    },
    onClickAddTurma () {
      this.$router.push({path: '/pages/turmas/nova'});
    },
    onClickEditTurma () {
      const selected = this.dataTable.selected[0];
      this.$router.push({path: `/pages/turmas/edicao/${selected.uuid}`});
    },
    async fetchData (tableProps) {
      this.dataTable.loading = true;
      this.$q.loading.show();
      if (tableProps) {
        this.dataTable.pagination = tableProps.pagination;
      }
      await TurmaService.getTurmas(this.dataTable.pagination, this.filters)
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
        this.$q.loading.hide();
      });
    }
  }
};
</script>
