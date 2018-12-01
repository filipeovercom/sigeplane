<template>
  <div>
    <q-card class="bg-light">
      <q-card-title>
        <div slot="right">
          <q-btn push
                 class="q-mr-sm"
                 color="primary"
                 icon="add"
                 label="Salvar"
                 title="Salvar"
                 @click="saveTurma"/>
          <q-btn push
                 class="q-mr-sm"
                 color="tertiary"
                 icon="edit"
                 label="Cancelar"
                 title="Cancelar"
                 @click="$router.back(1)"/>
        </div>
      </q-card-title>
      <q-card-separator/>
      <q-card-main>
        <p class="q-title">Dados Principais</p>
        <div class="row gutter-sm">
          <div class="col-md-6 col-lg-3">
            <v-text-field v-model="turma.nome"
                          outline
                          label="Nome"
                          placeholder="Informe o nome"/>
          </div>
          <div class="col-md-6 col-lg-4">
            <v-autocomplete v-model="turma.curso"
                            :loading="cursos.isSearching"
                            :items="cursos.items"
                            :search-input.sync="cursos.searchValue"
                            cache-items
                            hide-selected
                            clearable
                            outline
                            hide-details
                            item-text="nome"
                            item-value="uuid"
                            return-object
                            label="Curso"
                            placeholder="Informe o curso">
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
          <div class="col-md-6 col-lg-5">
            <v-autocomplete v-model="turma.professor"
                            :loading="professores.isSearching"
                            :items="professores.items"
                            :search-input.sync="professores.searchValue"
                            cache-items
                            hide-selected
                            clearable
                            outline
                            hide-details
                            item-text="nome"
                            item-value="uuid"
                            return-object
                            label="Professor(a)"
                            placeholder="Informe um professor(a)">
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
          <div class="col-md-6 col-lg-7">
            <v-autocomplete v-model="turma.disciplina"
                            :disabled="!turma.curso"
                            :loading="disciplinas.isSearching"
                            :items="disciplinas.items"
                            :search-input.sync="disciplinas.searchValue"
                            cache-items
                            hide-selected
                            clearable
                            outline
                            hide-details
                            item-text="nome"
                            item-value="uuid"
                            return-object
                            label="Disciplina"
                            placeholder="Informe uma Disciplina">
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
        </div>
      </q-card-main>
    </q-card>
  </div>
</template>

<script>
import {TurmaService}      from './turmaService';
import {CursoService}      from '../../utils/cursosService';
import {UsuarioService}    from '../../utils/usuarioService';
import {DisciplinaService} from '../disciplinas/disciplinaService';

function getNewTurma () {
  return {
    professor: undefined,
    disciplina: undefined,
    curso: undefined,
    nome: ''
  };
}

export default {
  name: 'Cadastro',
  data () {
    return {
      turma: getNewTurma(),
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
      }
    };
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
            console.log(valueAtual);
            await DisciplinaService.getByCursoAndNomeLimit10(this.turma.curso.uuid, valueAtual)
            .then(data => {
              console.log(data);
              this.disciplinas.items = data;
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
    }
  },
  beforeEnter () {
    alert('oi');
  },
  methods: {
    isEdicao () {
      return !!this.turma.uuid;
    },
    saveTurma () {
      const isEdicao = this.isEdicao();
      const method   = isEdicao ? TurmaService.updateTurma : TurmaService.insertTurma;
      method(this.turma).then(() => {
        this.$notify.success(`Turma ${isEdicao ? 'alterada' : 'inserida'} com sucesso`);
        if (!isEdicao) {
          this.turma = getNewTurma();
        } else {
          this.$router.push({path: '/pages/turmas'});
        }
      }).catch(error => {
        this.$notify.error(error.message ? error.message : 'Oops! Não foi possível salvar as alterações!');
      });
    }
  }
};
</script>
