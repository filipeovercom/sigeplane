<template>
  <div>
    <q-card class="bg-light">
      <q-card-title>
        <div slot="right">
          <q-btn push
                 class="q-mr-sm"
                 color="primary"
                 icon="save"
                 title="Salvar"
                 label="Salvar"
                 @click="saveDisciplina"/>
          <q-btn push
                 color="tertiary"
                 icon="close"
                 title="Cancelar"
                 label="Cancelar"
                 @click="$router.push({path: '/pages/disciplinas'})"/>
        </div>
      </q-card-title>
      <q-card-separator/>
      <q-card-main class="q-pa-lg">
        <p class="q-title">Dados principais</p>
        <div class="row gutter-sm">
          <div class="col-xs-12 col-md-4 col-lg-4">
            <v-text-field v-model="disciplina.codigoInterno"
                          label="Código Interno"
                          placeholder="Informe um código"
                          outline
                          clearable/>
          </div>
          <div class="col-xs-12 col-md-8 col-lg-4">
            <v-text-field v-model="disciplina.nome"
                          placeholder="Informe o nome da Disciplina"
                          label="Disciplina"
                          outline
                          clearable/>
          </div>
          <div class="col-xs-12 col-md-6 col-lg-4">
            <v-autocomplete v-model="disciplina.curso"
                            :loading="cursos.isSearching"
                            :items="cursos.items"
                            :search-input.sync="cursos.searchValue"
                            cache-items
                            flat
                            hide-selected
                            clearable
                            outline
                            hide-details
                            item-text="nome"
                            item-value="uuid"
                            return-object
                            label="Curso"
                            placeholder="Informe o Curso">
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
        <br>
        <q-card-separator/>
        <br>
        <div class="row">
          <div class="col-xs-12">
            <p class="q-title">Ementa</p>
            <q-editor v-model="disciplina.ementa"/>
            <!--<vue-editor v-model="disciplina.ementa" :editor-toolbar="editor.customToolbar"/>-->
          </div>
        </div>
        <br>
        <q-card-separator/>
        <br>
        <div class="row">
          <div class="col-xs-12">
            <p class="q-title">
              Bibliografia
              <q-btn icon="add"
                     round
                     color="primary"
                     title="Adicionar nova bibliografia"
                     @click="modalBibliografia = true"/>
            </p>
            <div class="row">
              <div class="col-lg-6">
                <q-list no-border>
                  <q-list-header>1. Básica</q-list-header>
                  <q-item v-for="item in bibliografiaBasica"
                          :key="item.bibliografia.uuid">
                    <q-item-main :label="item.bibliografia.descricao"/>
                    <q-item-side right>
                      <q-item-tile>
                        <q-btn icon="delete"
                               flat
                               round
                               color="red"
                               @click="removeItemBibliografia(item.bibliografia.uuid)"/>
                      </q-item-tile>
                    </q-item-side>
                  </q-item>
                </q-list>
              </div>
              <div id="div-bibliografia-complementar"
                   class="col-lg-6">
                <q-list no-border>
                  <q-list-header>2. Complementar</q-list-header>
                  <q-item v-for="item in bibliografiaComplementar"
                          :key="item.bibliografia.uuid">
                    <q-item-main :label="item.bibliografia.descricao"/>
                    <q-item-side right>
                      <q-item-tile>
                        <q-btn icon="delete"
                               flat
                               round
                               color="red"
                               @click="removeItemBibliografia(item.bibliografia.uuid)"/>
                      </q-item-tile>
                    </q-item-side>
                  </q-item>
                </q-list>
              </div>
            </div>
          </div>
        </div>
      </q-card-main>
    </q-card>

    <v-dialog v-model="modalBibliografia"
              :fullscreen="$vuetify.breakpoint.smAndDown"
              width="70vw"
              scrollable>
      <v-card tile>
        <v-toolbar card
                   dark
                   color="primary">
          <v-btn icon
                 dark
                 @click.native="modalBibliografia = false">
            <v-icon>close</v-icon>
          </v-btn>
          <v-toolbar-title>Adicionar Referências</v-toolbar-title>
          <v-spacer/>
          <q-btn push
                 label="Salvar"
                 icon="save"
                 color="green"
                 @click="addNewBibliografia"/>
        </v-toolbar>
        <v-card-text>
          <v-container grid-list-md>
            <v-layout wrap>
              <v-flex xs12>
                <v-combobox v-model="referencia.bibliografias"
                            :loading="bibliografias.isSearching"
                            :items="bibliografias.items"
                            :search-input.sync="bibliografias.searchValue"
                            :filter="filter"
                            :hide-no-data="!bibliografias.searchValue"
                            item-text="descricao"
                            hide-selected
                            outline
                            multiple
                            label="Informe parte da descrição da referência">
                  <template slot="no-data">
                    <v-list-tile>
                      <v-list-tile-title>
                        Criar: {{ bibliografias.searchValue }}
                      </v-list-tile-title>
                    </v-list-tile>
                  </template>
                  <template v-if="item === Object(item)"
                            slot="selection"
                            slot-scope="{ item, selected, parent }">
                    <span class="q-ma-xs q-pa-sm bg-grey"
                          style="border-radius: 10px">
                      {{ item.descricao }}
                    </span>
                  </template>
                  <template slot="item"
                            slot-scope="{ item, tile }">
                    <v-list-tile-content>
                      <q-chip color="primary">
                        {{ item.descricao }}
                      </q-chip>
                    </v-list-tile-content>
                  </template>
                </v-combobox>
              </v-flex>
              <v-flex xs12>
                <v-select
                  :items="tiposBibliografia"
                  v-model="referencia.tipo"
                  outline
                  item-text="title"
                  item-value="value"
                  label="Informe o tipo"/>
              </v-flex>
            </v-layout>
          </v-container>
        </v-card-text>
      </v-card>
    </v-dialog>
  </div>
</template>

<script>
import {CursoService}        from '../../utils/cursosService';
import {BibliografiaService} from '../../utils/bibliografiaService';
import {DisciplinaService}   from './disciplinaService';
import {uid}                 from 'quasar';
import {tipoBibliografia}    from '../../utils/constants';

function getNewDisciplina () {
  return {
    uuid: '',
    codigoInterno: '',
    nome: '',
    curso: undefined,
    ementa: '',
    bibliografias: []
  };
}

function getNewReferencia () {
  return {
    bibliografias: [],
    tipo: undefined
  };
}

export default {
  name: 'Cadastro',
  props: {
    uuid: {
      type: String,
      default: undefined
    }
  },
  data () {
    return {
      disciplina: getNewDisciplina(),
      referencia: getNewReferencia(),
      bibliografias: {
        isSearching: false,
        searchValue: '',
        items: [{
          header: 'Selecione ou crie uma bibliografia'
        }]
      },
      modalBibliografia: false,
      cursos: {
        isSearching: false,
        items: [],
        searchValue: ''
      },
      editor: {
        customToolbar: [
          ['bold', 'italic', 'underline'],
          [{list: 'ordered'}, {list: 'bullet'}]
        ]
      }
    };
  },
  computed: {
    tiposBibliografia: function () {
      return tipoBibliografia.itens;
    },
    bibliografiaBasica: function () {
      return this.disciplina.bibliografias.filter(item => item.tipo === tipoBibliografia.BASICA);
    },
    bibliografiaComplementar: function () {
      return this.disciplina.bibliografias.filter(item => item.tipo === tipoBibliografia.COMPLEMENTAR);
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
    'bibliografias.searchValue' (value) {
      const valueAtual = value;
      if (valueAtual && valueAtual.length > 2) {
        setTimeout(async () => {
          if (valueAtual === this.bibliografias.searchValue) {
            this.bibliografias.isSearching = true;
            await BibliografiaService.buscaLimitadaPorNome(valueAtual)
            .then(data => {
              data.forEach(item => {
                const index = this.bibliografias.items.findIndex(bibliografia => bibliografia.uuid === item.uuid);
                if (index < 0) {
                  this.bibliografias.items.push(...data);
                }
              });
            })
            .catch(() => this.$q.notify({
              message: `Ooops! Estamos com problemas`,
              type: 'negative',
              detail: 'Aguarde e tente novamente',
              position: 'top'
            }))
            .finally(() => {
              this.bibliografias.isSearching = false;
            });
          }
        }, 500);
      }
    },
    'referencia.bibliografias' (valAtual, valAnterior) {
      if (valAtual.length === valAnterior.length) return;
      this.referencia.bibliografias = valAtual.map(item => {
        if (typeof item === 'string') {
          item = {
            uuid: uid(),
            descricao: item
          };
          this.bibliografias.items.push(item);
        }
        return item;
      });
    }
  },
  mounted () {
    if (this.uuid) {
      DisciplinaService.getDisciplinaByUUID(this.uuid)
      .then(data => {
        if (!data) {
          this.$router.push({path: '/pages/disciplinas'});
          this.$q.notify({
            type: 'warning',
            position: 'top',
            message: 'Disciplina não encontrada!'
          });
        } else {
          this.disciplina = data;
          this.cursos.items.push(this.disciplina.curso);
        }
        this.$q.loading.hide();
      });
    } else {
      this.$q.loading.hide();
    }
  },
  methods: {
    isEdicao () {
      return !!this.disciplina.uuid;
    },
    saveDisciplina () {
      const isEdicao = this.isEdicao();
      const method   = isEdicao ? this.updateDisciplina : this.insertDisciplina;
      method(this.disciplina).then(() => {
        this.$q.notify({
          type: 'positive',
          position: 'top',
          message: `Disciplina ${isEdicao ? 'alterada' : 'inserida'} com sucesso`
        });
      }).catch(error => {
        console.log(error);
        this.$q.notify({
          type: 'error',
          position: 'top',
          message: error.message ? error.message : 'Oops! Não foi possível salvar as alterações!'
        });
      }).finally(() => {
        if (!isEdicao) {
          this.disciplina = getNewDisciplina();
        } else {
          this.$router.push({path: '/pages/disciplinas'});
        }
      });
    },
    updateDisciplina () {
      return DisciplinaService.updateDisciplina(this.disciplina);
    },
    insertDisciplina () {
      return DisciplinaService.insertDisciplina(this.disciplina);
    },
    removeItemBibliografia (uuid) {
      console.log(uuid);
      this.disciplina.bibliografias = this.disciplina.bibliografias.filter(item => item.bibliografia.uuid !== uuid);
    },
    addNewBibliografia () {
      if (!this.referencia.tipo) {
        this.$q.notify({
          type: 'warning',
          position: 'top',
          message: 'Necessário informar o tipo!'
        });
        return;
      }

      const bibliografiasEncontradas = this.disciplina.bibliografias.filter(item => {
        const result = this.referencia.bibliografias.filter(item2 => item2.uuid === item.bibliografia.uuid);
        return result && result.length > 0;
      });
      if (bibliografiasEncontradas && bibliografiasEncontradas.length > 0) {
        this.$q.notify({
          type: 'warning',
          position: 'top',
          message: 'Esta referência já foi inserida anteriormente!'
        });
        return;
      }

      this.referencia.bibliografias.forEach(bibliografia => this.disciplina.bibliografias.push({
        bibliografia: bibliografia,
        tipo: this.referencia.tipo,
        uuid: uid()
      }));

      this.referencia = getNewReferencia();

      this.$q.notify({
        type: 'positive',
        position: 'top',
        message: 'Bibliografia inserida com sucesso!'
      });
    },
    filter (item, queryText, itemText) {
      if (item.header) return false;

      const hasValue = val => val != null ? val : '';
      const text     = hasValue(itemText.descricao ? itemText.descricao : item.descricao);
      const query    = hasValue(queryText);

      return text.toString()
      .toLowerCase()
      .indexOf(query.toString().toLowerCase()) > -1;
    }
  }
};
</script>
