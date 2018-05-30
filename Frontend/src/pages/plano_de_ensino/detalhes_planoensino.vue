<template>
  <q-page padding>
    <q-card class="text-primary bg-light">
      <q-card-main>
        <div class="row gutter-sm">
          <div class="col-xs-12 col-md-3 bordered">
            <p class="q-toolbar-title">
              <q-icon name="beenhere" size="35px"/>
              Semestre 2018/2
            </p>
          </div>
          <div class="col-xs-12 col-md-3 bordered">
            <p class="q-toolbar-title">
              <q-icon name="school" size="35px"/>
              302N4A
            </p>
          </div>
          <div class="col-xs-12 col-md-6 bordered">
            <p class="q-toolbar-title">
              <q-icon name="book" size="35px"/>
              Fundamentos de Matemática
            </p>
          </div>
          <div class="col-xs-12 col-md-3 bordered">
            <p class="q-toolbar-title">
              <q-icon name="dashboard" size="35px"/>
              Sistemas de Informação
            </p>
          </div>
          <div class="col-xs-12 col-md-3 bordered">
            <p class="q-toolbar-title">
              <q-icon name="person" size="35px"/>
              Me. Thiago Ruiz Garcia
            </p>
          </div>
        </div>
      </q-card-main>
    </q-card>
    <br>
    <q-card class="text-primary bg-light">
      <q-card-title>
        <span class="q-title">1. Ementa</span>
      </q-card-title>
      <q-card-separator/>
      <q-card-main class="text-justify">
        Elementos de matemática: trigonometria no triângulo, conjuntos numéricos, equações, inequações, funções,
        gráficos, limites, matrizes, sistemas lineares.
      </q-card-main>
    </q-card>
    <br>
    <q-card class="text-primary bg-light">
      <q-card-title>
        <span class="q-title">2. Contribuição Para a Formação do Perfil do Egresso</span>
      </q-card-title>
      <q-card-separator/>
      <q-card-main class="text-justify">
        <p>
          O PROFISSIONAL DE SISTEMAS DE INFORMAÇÃO é capacitado para transitar em todas as áreas da computação, indo
          desde a criação de sistemas e games até a manutenção de banco de dados, considerando durante toda a graduação
          elementos como redes de computadores, desenvolvimento de software, segurança de computadores, gestão de
          projetos de TI, inteligência artificial e muitas outras atividades ligadas a computação.
        </p>
        <p>
          Logo, são profissionais dinâmicos, inovadores, críticos e disponíveis para a aprendizagem contínua e
          multidisciplinar, capazes de agirem consonância com os processos de transformação pelos quais passam as
          empresas modernas e a sociedade atual.
        </p>
      </q-card-main>
    </q-card>
    <br>
    <q-card class="text-primary bg-light">
      <q-card-title>
        <span class="q-title">3. Conteúdo</span>
        <q-btn slot="right" push icon="chat" color="primary" @click="modalComentarios = !modalComentarios">
          <q-chip floating color="red">2</q-chip>
          <q-tooltip :offset="[10, 10]">
            Ver e Responder Comentários
          </q-tooltip>
        </q-btn>
        <q-btn slot="right" push :icon="!editaConteudo ? 'edit' : 'save'" color="primary"
               class="q-ml-sm"
               @click="editaConteudo = !editaConteudo">
          <q-tooltip :offset="[10, 10]">
            {{ editaConteudo ? 'Salvar Conteúdo' : 'Editar Conteúdo' }}
          </q-tooltip>
        </q-btn>
      </q-card-title>
      <q-card-separator/>
      <q-card-main class="text-justify">
        <div v-if="!editaConteudo" @dblclick="editaConteudo = !editaConteudo">
          <p v-html="conteudo"/>
        </div>
        <q-editor v-model="conteudo" v-if="editaConteudo"/>
      </q-card-main>
    </q-card>
    <br>
    <q-card class="text-primary bg-light">
      <q-card-title class="relative-position">
        <span class="q-title">4. Padrões e Critérios do Sistema de Avaliação</span>
        <q-btn slot="right" flat icon="chat" color="primary" label="Comentar"/>
        <q-btn slot="right" flat icon="edit" color="primary" label="Editar"/>
      </q-card-title>
      <q-card-separator/>
      <q-card-main class="text-justify">
        <p>
          Na Faculdade Católica do Tocantins o Sistema de Avaliação da Aprendizagem está a serviço de um processo, que
          também visa ao melhoramento da ação educativa. Tal processo deve ser contínuo e abrangente, priorizando a
          utilização de instrumentos diversificados como: testes, trabalhos individuais e em grupos, projetos,
          seminários, debates, provas entre outros meios.
          A metodologia para avaliação será explicitada no item 6- CRONOGRAMA DE ATIVIDADES/PLANO DE TRABALHO
          O docente é responsável pela forma de mensuração dos resultados finais para obtenção nas notas da primeira
          avaliação bimestral (A1), até dia 05 de abril e a segunda avaliação bimestral (A2), até dia 06 de junho.
          A nota da Avaliação Semestral será resultante da média aritmética da primeira avaliação com a segunda
          avaliação. Sendo que as notas atribuídas a cada avaliação do desempenho do acadêmico variam de 0,0 (zero) a
          10,0 (dez inteiros). Concluindo o semestre, considera-se aprovado por média, em cada disciplina, o acadêmico
          que tiver frequência igual ou superior a 75% (setenta e cinco por cento) e média aritmética semestral (MS)
          igual ou superior a 7,0 (sete inteiros).
          Ao acadêmico que não obtiver média semestral igual ou superior a 7,0 (sete inteiros) e possuir frequência
          igual ou superior a 75% na disciplina, é garantido o direito de realizar Exame Final. E caso o acadêmico
          falte a uma das avaliações (A1 ou A2) poderá se valer da Avaliação Substitutiva, o que independe de razões e
          comprovações. A avaliação substitutiva será pontuada de 0,0 (zero) a 10,0 (dez inteiros).
          Considera-se aprovado por Exame Final o acadêmico que obtiver média aritmética igual ou superior a 6,0 (seis
          inteiros), somando-se a nota do exame final com a média obtida durante o semestre (MS).
        </p>
      </q-card-main>
    </q-card>
    <br>
    <q-card class="text-primary bg-light">
      <q-card-title class="relative-position">
        <span class="q-title">5. Bibliografia</span>
        <q-btn slot="right" flat icon="chat" color="primary" label="Comentar"/>
        <q-btn slot="right" flat icon="edit" color="primary" label="Editar"/>
      </q-card-title>
      <q-card-separator/>
      <q-card-main class="text-justify">
        <div class="row gutter-md">
          <div class="col-xs-12 col-md-6">
            <p>
              5.1 Bibliografia Básica
            </p>
            <p>
              ABREU, A. S. Curso de redação. São Paulo: Editora Ática. 2004. p 168. <br><br>
              MARTINS, D. S.; ZILBERKNOP, L. S. Português instrumental: de acordo com as atuais normas da ABNT. 27 ed.
              São Paulo: Atlas, 2008.<br><br>
              BECHARA, E. Moderna gramática portuguesa. São Paulo: Editora Nacional. 2001.
            </p>
          </div>
          <div class="col-xs-12 col-md-6">
            <p>
              5.1 Bibliografia Complementar
            </p>
            <p>
              ABREU, A. S. Curso de redação. São Paulo: Editora Ática. 2004. p 168.<br><br>
              MARTINS, D. S.; ZILBERKNOP, L. S. Português instrumental: de acordo com as atuais normas da ABNT. 27 ed.
              São Paulo: Atlas, 2008.<br><br>
              BECHARA, E. Moderna gramática portuguesa. São Paulo: Editora Nacional. 2001.
            </p>
          </div>
        </div>
      </q-card-main>
    </q-card>
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
    <q-modal v-model="modalComentarios" :content-css="{minWidth: '600px', minHeight: '500px'}">
      <q-modal-layout>
        <q-toolbar slot="header">
          <q-btn flat round dense @click="modalCopiar = false"
                 icon="close" wait-for-ripple/>
          <q-toolbar-title>
            Comentários
          </q-toolbar-title>
        </q-toolbar>
        <div class="q-pa-lg">
          <q-chat-message
            v-for="(msg, index) in messages"
            :key="`avatar-${index}`"
            :label="msg.label"
            :sent="msg.sent"
            :text-color="msg.sent ? 'primary' : 'light'"
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
export default {
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
      conteudo: 'Funções (1º grau, 2º grau, exponencial e logarítmica): Definições, raízes, gráficos e situações problemas. Matrizes e Determinantes: Definição, tipos de matrizes, operações com matrizes e matriz inversa. Determinante de uma matriz. Sistemas Lineares: Resolução de sistemas lineares por da substituição, escalonamento e por determinantes. Limites e funções contínuas: limites Laterais e limites infinitos. Derivação: taxa de derivação, regras de derivação. Aplicação da derivada: funções crescentes e decrescentes, concavidade de gráficos de funções, problemas de máximos e mínimos. Integração: integral indefinida: primitivação por substituição, regras de integrações, Integral definida, propriedades e aplicações ao cálculo de áreas, teorema Fundamental do Cálculo.',
      message: '',
      messages: [
        {
          label: 'Friday, 18th'
        },
        {
          name: 'Vladimir',
          text: ['How are you?'],
          stamp: 'Yesterday 13:34'
        },
        {
          name: 'Jane',
          text: ['I\'m good, thank you!', 'And you?'],
          sent: true,
          stamp: 'Yesterday at 13:50'
        },
        {
          name: 'Jane',
          text: ['And you?'],
          sent: true,
          stamp: 'Yesterday at 13:51'
        },
        {
          label: 'Saturday, 19th'
        },
        {
          name: 'Vladimir',
          text: ['Fine. Nice weather today, right?', 'Hmm...'],
          stamp: '13:55'
        },
        {
          label: 'Sunday, 20th'
        },
        {
          name: 'Vladimir',
          text: ['How are you?'],
          stamp: 'Yesterday 13:34'
        },
        {
          name: 'Jane',
          text: ['I\'m good, thank you!', 'And you?'],
          sent: true,
          stamp: 'Yesterday at 13:50'
        },
        {
          name: 'Jane',
          text: ['And you?'],
          sent: true,
          stamp: 'Yesterday at 13:51'
        },
        {
          label: 'Monday, 20th'
        },
        {
          name: 'Vladimir',
          text: ['Fine. Nice weather today, right?', 'Hmm...'],
          stamp: '13:55'
        },
        {
          label: 'Tuesday, 21th'
        },
        {
          name: 'Vladimir',
          text: ['How are you?'],
          stamp: 'Yesterday 13:34'
        },
        {
          name: 'Jane',
          text: ['I\'m good, thank you!', 'And you?'],
          sent: true,
          stamp: 'Yesterday at 13:50'
        },
        {
          name: 'Jane',
          text: ['And you?'],
          sent: true,
          stamp: 'Yesterday at 13:51'
        },
        {
          label: 'Sunday, 19th'
        },
        {
          name: 'Vladimir',
          text: ['Fine. Nice weather today, right?', 'Hmm...'],
          stamp: '13:55'
        },
        {
          label: 'Wednesday, 22th'
        },
        {
          name: 'Vladimir',
          text: ['How are you?'],
          stamp: 'Yesterday 13:34'
        },
        {
          name: 'Jane',
          text: ['I\'m good, thank you!', 'And you?'],
          sent: true,
          stamp: 'Yesterday at 13:50'
        },
        {
          name: 'Jane',
          text: ['And you?'],
          sent: true,
          stamp: 'Yesterday at 13:51'
        },
        {
          label: 'Thursday, 23th'
        },
        {
          name: 'Vladimir',
          text: ['Fine. Nice weather today, right?', 'Hmm...'],
          stamp: '13:55'
        }
      ]
    };
  },
  computed: {
    turmas () {
      return this.$store.getters['turmas/getData'].map(turma => {
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
    }
  }
};
</script>
