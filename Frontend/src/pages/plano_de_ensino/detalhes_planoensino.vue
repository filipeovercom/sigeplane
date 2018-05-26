<template>
  <q-page padding>
    <q-card style="margin-top: 45px">
      <q-card-title>
        1. Ementa
      </q-card-title>
      <q-card-separator/>
      <q-card-main class="q-body text-justify">
        Elementos de matemática: trigonometria no triângulo, conjuntos numéricos, equações, inequações, funções,
        gráficos, limites, matrizes, sistemas lineares.
      </q-card-main>
    </q-card>
    <br>
    <q-card>
      <q-card-title>
        2. Contribuição Para a Formação do Perfil do Egresso
      </q-card-title>
      <q-card-separator/>
      <q-card-main class="q-body text-justify">
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
    <q-card>
      <q-card-title>
        3. Conteúdo
      </q-card-title>
      <q-card-separator/>
      <q-card-main class="q-body text-justify">
        <p>
          Funções (1º grau, 2º grau, exponencial e logarítmica): Definições, raízes, gráficos e situações problemas.
          Matrizes e Determinantes: Definição, tipos de matrizes, operações com matrizes e matriz inversa. Determinante
          de uma matriz. Sistemas Lineares: Resolução de sistemas lineares por da substituição, escalonamento e por
          determinantes. Limites e funções contínuas: limites Laterais e limites infinitos. Derivação: taxa de
          derivação, regras de derivação. Aplicação da derivada: funções crescentes e decrescentes, concavidade de
          gráficos de funções, problemas de máximos e mínimos. Integração: integral indefinida: primitivação por
          substituição, regras de integrações, Integral definida, propriedades e aplicações ao cálculo de áreas, teorema
          Fundamental do Cálculo.
        </p>
      </q-card-main>
    </q-card>
    <br>
    <q-card>
      <q-card-title>
        3. Conteúdo
      </q-card-title>
      <q-card-separator/>
      <q-card-main class="q-body text-justify">
        <p>
          Funções (1º grau, 2º grau, exponencial e logarítmica): Definições, raízes, gráficos e situações problemas.
          Matrizes e Determinantes: Definição, tipos de matrizes, operações com matrizes e matriz inversa. Determinante
          de uma matriz. Sistemas Lineares: Resolução de sistemas lineares por da substituição, escalonamento e por
          determinantes. Limites e funções contínuas: limites Laterais e limites infinitos. Derivação: taxa de
          derivação, regras de derivação. Aplicação da derivada: funções crescentes e decrescentes, concavidade de
          gráficos de funções, problemas de máximos e mínimos. Integração: integral indefinida: primitivação por
          substituição, regras de integrações, Integral definida, propriedades e aplicações ao cálculo de áreas, teorema
          Fundamental do Cálculo.
        </p>
      </q-card-main>
    </q-card>
    <br>
    <q-card>
      <q-card-title>
        3. Conteúdo
      </q-card-title>
      <q-card-separator/>
      <q-card-main class="q-body text-justify">
        <p>
          Funções (1º grau, 2º grau, exponencial e logarítmica): Definições, raízes, gráficos e situações problemas.
          Matrizes e Determinantes: Definição, tipos de matrizes, operações com matrizes e matriz inversa. Determinante
          de uma matriz. Sistemas Lineares: Resolução de sistemas lineares por da substituição, escalonamento e por
          determinantes. Limites e funções contínuas: limites Laterais e limites infinitos. Derivação: taxa de
          derivação, regras de derivação. Aplicação da derivada: funções crescentes e decrescentes, concavidade de
          gráficos de funções, problemas de máximos e mínimos. Integração: integral indefinida: primitivação por
          substituição, regras de integrações, Integral definida, propriedades e aplicações ao cálculo de áreas, teorema
          Fundamental do Cálculo.
        </p>
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
    <q-page-sticky position="top" :offset="[0, 20]" style="width: 90%;">
      <q-toolbar>
        <q-toolbar-title>
          <q-chip square icon="beenhere" color="primary">2018/2</q-chip>
          <q-chip square icon="school" color="primary">302N4A</q-chip>
          <q-chip square icon="book" color="primary">Fundamentos de Matemática</q-chip>
          <q-chip square icon="dashboard" color="primary">Sistemas de Informação</q-chip>
          <q-chip square icon="person" color="primary">Me. Thiago Ruiz Garcia</q-chip>
          <q-btn icon="settings" label="Opções" color="tertiary"/>
        </q-toolbar-title>
      </q-toolbar>
    </q-page-sticky>
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
      modalCopiar: false,
      modalAprovacao: false,
      teste: ''
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
