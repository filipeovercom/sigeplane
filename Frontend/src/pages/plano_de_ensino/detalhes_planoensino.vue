<template>
  <q-page padding>
    <q-card class="text-primary bg-light">
      <q-card-main>
        <div class="row gutter-sm">
          <div class="col-xs-12 col-md-3">
            <p class="q-toolbar-title text-positive">
              <q-icon name="bookmark" size="35px"/>
              Em Produção
            </p>
          </div>
          <div class="col-xs-12 col-md-3">
            <p class="q-toolbar-title">
              <q-icon name="beenhere" size="35px"/>
              Semestre 2018/2
            </p>
          </div>
          <div class="col-xs-12 col-md-2">
            <p class="q-toolbar-title">
              <q-icon name="school" size="35px"/>
              302N4A
            </p>
          </div>
          <div class="col-xs-12 col-md-4">
            <p class="q-toolbar-title">
              <q-icon name="book" size="35px"/>
              Fundamentos de Matemática
            </p>
          </div>
        </div>
        <div class="row gutter-sm">
          <div class="col-xs-12 col-md-3">
            <p class="q-toolbar-title">
              <q-icon name="dashboard" size="35px"/>
              Sistemas de Informação
            </p>
          </div>
          <div class="col-xs-12 col-md-3">
            <p class="q-toolbar-title">
              <q-icon name="person" size="35px"/>
              Me. Thiago Ruiz Garcia
            </p>
          </div>
          <div class="col-xs-12 col-lg-6">
            <q-btn push label="Copiar Plano" icon="fa-copy" color="primary"
                   @click="modalCopiar = !modalCopiar"/>
            <q-btn push label="Enviar P/ Análise" icon="send" color="info"/>
            <q-btn push label="Aprovar" icon="check" color="positive"/>
            <q-btn push label="Reprovar" icon="close" color="negative"/>
          </div>
        </div>
      </q-card-main>
    </q-card>
    <br>
    <q-collapsible opened class="q-pa-sm bg-light">
      <template slot="header">
        <q-item-main class="q-title">
          1. Ementa
        </q-item-main>
      </template>
      <p>
        Sociologia como ciência. Conceitos básicos. Características das principais escolas / teorias da administração e
        sua localização na história. Fundamentos teóricos para análise das organizações como unidades sociais; estudo da
        formação e manutenção dos grupos formais e informais na empresa, destacando aspectos relativos ao poder,
        autoridade, comunicações e processos sociais. Análise da empresa no contexto da sociedade e suas relações com as
        mudanças tecnológicas e sociais. A organização formal como unidade social. Cultura organizacional. A inserção
        dos indivíduos nas organizações formais e a pressão interna para o trabalho. Poder e autoridade nas
        organizações. Mudança Social e organizacional. O novo mundo do trabalho.
      </p>
    </q-collapsible>
    <br>
    <q-collapsible opened class="q-pa-sm bg-light">
      <template slot="header">
        <q-item-main class="q-title">
          2. Contribuição Para a Formação do Perfil do Egresso
        </q-item-main>
      </template>
      <p>
        O PROFISSIONAL DE SISTEMAS DE INFORMAÇÃO é capacitado para transitar em todas as áreas da computação, indo
        desde a criação de sistemas e games até a manutenção de banco de dados, considerando durante toda a
        graduação
        elementos como redes de computadores, desenvolvimento de software, segurança de computadores, gestão de
        projetos de TI, inteligência artificial e muitas outras atividades ligadas a computação.
      </p>
      <p>
        Logo, são profissionais dinâmicos, inovadores, críticos e disponíveis para a aprendizagem contínua e
        multidisciplinar, capazes de agirem consonância com os processos de transformação pelos quais passam as
        empresas modernas e a sociedade atual.
      </p>
    </q-collapsible>
    <br>
    <q-collapsible opened class="bg-light q-pa-sm">
      <template slot="header">
        <q-item-main class="q-title">
          3. Conteúdo
        </q-item-main>
        <q-item-side slot="right">
          <q-btn push icon="chat" color="primary" @click.stop="modalComentarios = !modalComentarios">
            <q-chip floating color="red">2</q-chip>
            <q-tooltip :offset="[10, 10]">
              Ver e Responder Comentários
            </q-tooltip>
          </q-btn>
          <q-btn push :icon="!editaConteudo ? 'edit' : 'save'"
                 :color="!editaConteudo ? 'primary' : 'positive'"
                 class="q-ml-sm"
                 @click.stop="editaConteudo = !editaConteudo">
            <q-tooltip :offset="[10, 10]">
              {{ editaConteudo ? 'Salvar Conteúdo' : 'Editar Conteúdo' }}
            </q-tooltip>
          </q-btn>
        </q-item-side>
      </template>
      <div v-if="!editaConteudo" @dblclick="editaConteudo = !editaConteudo">
        <p v-html="conteudo"/>
      </div>
      <vue-editor v-model="conteudo" v-if="editaConteudo"/>
    </q-collapsible>
    <br>
    <q-collapsible opened class="bg-light q-pa-sm">
      <template slot="header">
        <q-item-main class="q-title">
          4. Padrões e Critérios do Sistema de Avaliação
        </q-item-main>
      </template>
      <p>
        Na Faculdade Católica do Tocantins o Sistema de Avaliação da Aprendizagem está a serviço de um processo,
        que
        também visa ao melhoramento da ação educativa. Tal processo deve ser contínuo e abrangente, priorizando a
        utilização de instrumentos diversificados como: testes, trabalhos individuais e em grupos, projetos,
        seminários, debates, provas entre outros meios. <br>
        A metodologia para avaliação será explicitada no item 6- CRONOGRAMA DE ATIVIDADES/PLANO DE TRABALHO.
        O docente é responsável pela forma de mensuração dos resultados finais para obtenção nas notas da primeira
        avaliação bimestral (A1), até dia 05 de abril e a segunda avaliação bimestral (A2), até dia 06 de junho.
        A nota da Avaliação Semestral será resultante da média aritmética da primeira avaliação com a segunda
        avaliação. Sendo que as notas atribuídas a cada avaliação do desempenho do acadêmico variam de 0,0 (zero)
        a
        10,0 (dez inteiros). Concluindo o semestre, considera-se aprovado por média, em cada disciplina, o
        acadêmico
        que tiver frequência igual ou superior a 75% (setenta e cinco por cento) e média aritmética semestral (MS)
        igual ou superior a 7,0 (sete inteiros).
        Ao acadêmico que não obtiver média semestral igual ou superior a 7,0 (sete inteiros) e possuir frequência
        igual ou superior a 75% na disciplina, é garantido o direito de realizar Exame Final. E caso o acadêmico
        falte a uma das avaliações (A1 ou A2) poderá se valer da Avaliação Substitutiva, o que independe de razões
        e
        comprovações. A avaliação substitutiva será pontuada de 0,0 (zero) a 10,0 (dez inteiros).
        Considera-se aprovado por Exame Final o acadêmico que obtiver média aritmética igual ou superior a 6,0
        (seis
        inteiros), somando-se a nota do exame final com a média obtida durante o semestre (MS).
      </p>
    </q-collapsible>
    <br>
    <q-collapsible opened class="bg-light q-pa-sm">
      <template slot="header">
        <q-item-main class="q-title">
          5. Bibliografia
        </q-item-main>
      </template>
      <div class="row gutter-md">
        <div class="col-xs-12 col-md-6">
          <p class="text-weight-bold">
            5.1 Bibliografia Básica
          </p>
          <p>
            ABREU, A. S. Curso de redação. São Paulo: Editora Ática. 2004. p 168. <br><br>
            MARTINS, D. S.; ZILBERKNOP, L. S. Português instrumental: de acordo com as atuais normas da ABNT. 27
            ed.
            São Paulo: Atlas, 2008.<br><br>
            BECHARA, E. Moderna gramática portuguesa. São Paulo: Editora Nacional. 2001.
          </p>
        </div>
        <div class="col-xs-12 col-md-6">
          <p class="text-weight-bold">
            5.1 Bibliografia Complementar
          </p>
          <p>
            ABREU, A. S. Curso de redação. São Paulo: Editora Ática. 2004. p 168.<br><br>
            MARTINS, D. S.; ZILBERKNOP, L. S. Português instrumental: de acordo com as atuais normas da ABNT. 27
            ed.
            São Paulo: Atlas, 2008.<br><br>
            BECHARA, E. Moderna gramática portuguesa. São Paulo: Editora Nacional. 2001.
          </p>
        </div>
      </div>
    </q-collapsible>
    <br>
    <q-collapsible opened class="bg-light q-pa-sm">
      <template slot="header">
        <q-item-main class="q-title">
          6. Cronograma
        </q-item-main>
      </template>
      <div class="row">
        <div class="col-xs-12">
          <cronograma/>
        </div>
      </div>
    </q-collapsible>
    <q-modal v-model="modalCopiar" :content-css="{minWidth: '600px', minHeight: '250px'}">
      <q-modal-layout>
        <q-toolbar slot="header">
          <q-btn flat round dense @click="modalCopiar = false"
                 icon="close" wait-for-ripple/>
          <q-toolbar-title>
            Copiar Plano de Ensino
          </q-toolbar-title>
        </q-toolbar>
        <div class="row q-pt-xl q-px-lg justify-center items-center">
          <div class="col-xs-12">
            <q-select filter
                      icon="school"
                      float-label="Informe a Turma"
                      v-model="teste"
                      :options="turmas"/>
          </div>
        </div>
        <q-toolbar slot="footer" class="justify-end">
          <q-btn label="Visualizar Dados" icon="save" class="bg-white text-primary q-mr-sm"
                 @click="abreVisualizacaoTurma"/>
          <q-btn label="Copiar Dados" icon="save" class="bg-white text-positive q-mr-sm"
                 @click="copiaDadosDeOutroPlano"/>
          <q-btn label="Cancelar" icon="close" class="bg-white text-negative"
                 @click="modalCopiar = false"/>
        </q-toolbar>
      </q-modal-layout>
    </q-modal>
    <q-modal v-model="modalComentarios"
             :content-css="{minWidth: '600px', minHeight: '500px'}"
             @show="scrollModalMsgToEnd">
      <q-modal-layout>
        <q-toolbar slot="header">
          <q-btn flat round dense @click="modalCopiar = false"
                 icon="close" wait-for-ripple/>
          <q-toolbar-title>
            Comentários
          </q-toolbar-title>
        </q-toolbar>
        <div id="msgContainer" class="q-pa-lg">
          <q-chat-message
            v-for="(msg, index) in messages"
            :key="`avatar-${index}`"
            :label="msg.label"
            :sent="msg.sent"
            :text-color="msg.sent ? 'black' : 'white'"
            :bg-color="msg.sent ? 'light' : 'primary'"
            :name="msg.name"
            :text="msg.text"
            :stamp="msg.stamp"
          />
        </div>
        <div slot="footer" style="height: 100px;">
          <div class="q-pa-sm">
            <q-input
              type="textarea" :max-height="50"
              v-model="message"
              placeholder="informe um comentário aqui..."
              :after="[
                {
                  icon: 'send'
                }
              ]"
            />
          </div>
        </div>
      </q-modal-layout>
    </q-modal>
  </q-page>
</template>

<script>
import { VueEditor } from 'vue2-editor';
import Cronograma from './cronograma';

export default {
  components: {
    VueEditor, Cronograma
  },
  props: {
    id: {
      type: String,
      default: undefined,
      require: true
    }
  },
  data () {
    return {
      teste: '',
      modalCopiar: false,
      modalAprovacao: false,
      modalComentarios: false,
      editaConteudo: false,
      conteudo: '<p>Funções (1º grau, 2º grau, exponencial e logarítmica): Definições, raízes, gráficos e situações problemas. </p><p>Matrizes e Determinantes: Definição, tipos de matrizes, operações com matrizes e matriz inversa. Determinante de uma matriz. </p><p>Sistemas Lineares: Resolução de sistemas lineares por da substituição, escalonamento e por determinantes.</p><p>Limites e funções contínuas: limites Laterais e limites infinitos. </p><p>Derivação: taxa de derivação, regras de derivação. Aplicação da derivada<strong>: </strong>funções crescentes e decrescentes, concavidade de gráficos de funções, problemas de máximos e mínimos. </p><p>Integração: integral indefinida: primitivação por substituição, regras de integrações, Integral definida, propriedades e aplicações ao cálculo de áreas, teorema Fundamental do Cálculo.</p>',
      message: '',
      itensCronograma: [
        {
          id: '123976',
          competencia: 'Resolver situações problemas que envolvem conceitos de função do primeiro grau',
          habilidades: [
            {
              id: '159753',
              descricao: 'Desenvolver o conceito de função do primeiro grau associado a assuntos simples do cotidiano e a conceitos da economia.',
              datas: [
                {
                  data: '',
                  conteudos: [],
                  metodologias: [],
                  recursos: [],
                  avaliacao: []
                }
              ]
            }
          ]
        }
      ],
      messages: [
        {
          label: 'Quinta-Feira 31/05/2018, 10:00'
        },
        {
          name: 'Stephany',
          text: [ 'Precisa melhorar o cronograma, as datas estão erradas.' ],
          stamp: '13:34'
        },
        {
          name: 'Professor',
          text: [ 'Ok Stephany. E agora?' ],
          sent: true,
          stamp: '18:10'
        },
        {
          name: 'Stephany',
          text: [ 'Agora ficou legal.' ],
          stamp: '18:30'
        },
        {
          label: 'Hoje'
        },
        {
          name: 'Stephany',
          text: [ 'O conteúdo ficou bom, mas é necessário melhorar a distribuição dele com as datas no cronograma' ],
          stamp: '13:55'
        }
      ]
    };
  },
  computed: {
    turmas () {
      return this.$store.getters[ 'turmas/getData' ].map(turma => {
        return {
          label: `${turma.semestre} - ${turma.disciplina} - ${turma.codInterno}`,
          sublabel: `${turma.professor} - ${turma.curso}`,
          value: turma
        };
      });
    },
    semestres () {
      return [
        {
          label: '2018/1',
          value: '2018/1'
        }, {
          label: '2017/2',
          value: '2017/2'
        }
      ];
    }
  },
  methods: {
    copiaDadosDeOutroPlano () {
      this.$q.notify({
        type: 'positive',
        position: 'top',
        message: `Dados copiados com sucesso!`
      });
    },
    abreVisualizacaoTurma () {
      let route = this.$router.resolve('/planoensino/3');
      window.window.open(route.href, '_blank');
    },
    scrollModalMsgToEnd () {
      var container = document.querySelector('#msgContainer').parentElement;
      container.scrollTop = container.scrollHeight;
    }
  }
};
</script>

<style lang="stylus">
.q-card .q-card-main p
  font-size 16px
</style>
