<template>
  <div>
    <div class="row no-print"
         style="border-bottom: 1px solid grey">
      <div class="col-xs-12 q-ma-md">
        <q-btn
          push
          class="q-mr-sm"
          color="primary"
          icon="arrow_back"
          label="Voltar"
          @click="onClickBtnVoltar"/>
        <q-btn
          push
          color="primary"
          icon="print"
          label="Imprimir"/>
      </div>
    </div>
    <div id="page-impressao">
      <div class="row justify-center q-mb-md">
        <div class="col-xs-6 text-center">
          <img class="q-mt-sm"
               src="http://www.catolica-to.edu.br/portal/portal/media/img/logo_catolica_azul.png"
               width="300px">
        </div>
        <div class="col-xs-6">
          NOSSA MISSÃO: “Potencializar a formação integral do cidadão, por meio da geração e transferência de
          conhecimento
          e da educação evangelizadora, na perspectiva do desenvolvimento sustentável”.
        </div>
      </div>
      <div class="row q-mb-lg">
        <div class="col-xs-12 text-center">
          <h1 style="font-size: 25px;font-weight: bold;">Plano de Ensino</h1>
        </div>
      </div>
      <div class="row q-mb-xl">
        <div class="col-xs-12">
          <table id="table-identificacao">
            <tr>
              <td>
                Curso:
              </td>
              <td>
                {{ plano.turma.curso.nome }}
              </td>
              <td>
                Período Letivo:
              </td>
              <td>
                {{ plano.turma.periodo }}
              </td>
            </tr>
            <tr>
              <td>
                Disciplina:
              </td>
              <td colspan="3">
                {{ plano.turma.disciplina.nome }}
              </td>
            </tr>
            <tr>
              <td>
                Professor(a):
              </td>
              <td colspan="3">
                {{ plano.turma.professor.nome }}
              </td>
            </tr>
            <tr>
              <td>
                Coordenador(a):
              </td>
              <td colspan="3">
                {{ plano.turma.curso.coordenador.nome }}
              </td>
            </tr>
            <tr>
              <td>
                Carga Horária Teórica:
              </td>
              <td colspan="3">
                {{ plano.qtdHorasTeorica }}h
              </td>
            </tr>
            <tr>
              <td>
                Carga Horária Prática:
              </td>
              <td colspan="3">
                {{ plano.qtdHorasPratica }}h
              </td>
            </tr>
          </table>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12">
          <h2 style="font-size: 20px;font-weight: bold;">1. EMENTA</h2>
          <p>
            {{ plano.turma.disciplina.ementa }}
          </p>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12">
          <h2 style="font-size: 20px;font-weight: bold;">2. CONTRIBUIÇÃO PARA FORMAÇÃO DO PERFIL DO EGRESSO</h2>
          <p>
            {{ plano.contribuicaoFormacao }}
          </p>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12">
          <h2 style="font-size: 20px;font-weight: bold;">3. CONTEÚDO</h2>
          <p>
            {{ plano.conteudo }}
          </p>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12">
          <h2 style="font-size: 20px;font-weight: bold;">4. CRITÉRIOS DE AVALIAÇÃO</h2>
          <p>
            {{ plano.criteriosAvaliacao }}
          </p>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12">
          <h2 style="font-size: 20px;font-weight: bold;">5. REFERÊNCIA BIBLIOGRÁFICA</h2>
          <div class="row">
            <div class="col-xs-12 col-md-6">
              <p class="text-weight-bold">
                5.1 Bibliografia Básica
              </p>
              <p v-for="(ref, index) in plano.turma.disciplina.bibliografiaBasica"
                 :key="index">
                {{ ref }}
              </p>
              <p v-if="!plano.turma.disciplina.bibliografiaBasica">
                Nenhuma informação encontrada!
              </p>
            </div>
            <div class="col-xs-12 col-md-6">
              <p class="text-weight-bold">
                5.1 Bibliografia Complementar
              </p>
              <p v-for="(ref, index) in plano.turma.disciplina.bibliografiaComplementar"
                 :key="index">
                {{ ref }}
              </p>
              <p v-if="!plano.turma.disciplina.bibliografiaComplementar">
                Nenhuma informação encontrada!
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="row q-mb-lg">
        <div class="col-xs-12">
          <h2 style="font-size: 20px;font-weight: bold;">6. CRONOGRAMA</h2>
          <cronograma/>
        </div>
      </div>
      <div class="row q-mb-xl">
        <div class="col-xs-12">
          <p style="font-size: 20px;font-weight: bold;">PARECER DO NDE</p>
        </div>
      </div>
      <div class="row q-mb-lg">
        <div class="col-xs-6 text-center">
          <hr style="width: 70%;margin-left: 15%">
          Professor
        </div>
        <div class="col-xs-6 text-center">
          <hr style="width: 70%;margin-left: 15%">
          Coordenador
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Cronograma            from './cronograma';
import {planoEnsinoService}  from './planoEnsinoService';
import ModalComentario       from './modal-comentario';
import {notificationService} from '../../../utils/notificationService';
import ModalCompetencia      from './modal-competencia';
import ModalHabilidade       from './modal-habilidade';

const NO_CONTENT_MESSAGE = 'Nenhuma informação encontrada!';

export default {
  name: 'DetalhesPlanoEnsino',
  components: {ModalHabilidade, ModalCompetencia, ModalComentario, Cronograma},
  props: {
    uuid: {
      type: String,
      default: undefined,
      require: true
    }
  },
  data () {
    return {
      plano: {
        id: undefined,
        uuid: undefined,
        contribuicaoFormacao: NO_CONTENT_MESSAGE,
        conteudo: NO_CONTENT_MESSAGE,
        criteriosAvaliacao: NO_CONTENT_MESSAGE,
        qtdHorasPratica: 0,
        qtdHorasTeorica: 0,
        itensCronograma: [],
        turma: {
          uuid: undefined,
          nome: '',
          statusPlanoEnsino: '',
          disciplina: {
            uuid: undefined,
            nome: '',
            ementa: NO_CONTENT_MESSAGE,
            bibliografiaBasica: [NO_CONTENT_MESSAGE],
            bibliografiaComplementar: [NO_CONTENT_MESSAGE]
          },
          professor: {
            uuid: undefined,
            nome: ''
          },
          curso: {
            uuid: undefined,
            nome: '',
            coordenador: {
              uuid: undefined,
              nome: ''
            }
          }
        }
      }
    };
  },
  async created () {
    if (this.uuid) {
      this.$q.loading.show();
      await planoEnsinoService.getPlanoImpressaoByTurmaUUID(this.uuid)
      .then(data => {
        if (!data) {
          this.$router.push({path: '/pages/turmas'});
          notificationService.warning('Disciplina não encontrada!');
        } else {
          this.plano = {
            ...this.plano,
            ...data
          };
        }
      })
      .catch(() => {
        this.$router.push({path: '/pages/turmas'});
        notificationService.error('Erro ao buscar informações!');
      })
      .finally(() => {
        this.$q.loading.hide();
      });
    }
  },
  methods: {
    onClickBtnVoltar () {
      this.$router.back(1);
    }
  }
};
</script>

<style>
  body {
    height: 100%;
  }

  div#page-impressao {
    width: 29.7cm;
    height: 21cm;
    padding: 1cm 1cm;
  }

  #table-identificacao tr td {
    padding: 4px 15px;
    background: #273c75;
    color: white;
  }

  #table-identificacao tr td:nth-child(odd) {
    text-align: right;
  }

  #table-identificacao tr td:nth-child(even) {
    font-weight: bold;
  }

  @media print {
    .no-print {
      display: none;
    }
  }
</style>
