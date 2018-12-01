<template>
  <div class="row gutter-xs">
    <!--region AGUARDANDO PRODUÇÃO-->
    <dashboard-item
      :data-source="turmasAguardandoProducao"
      title="Aguardando Produção"
      color="blue-grey"/>
    <!--endregion-->

    <!--region AGUARDANDO ANÁLISE -->
    <dashboard-item
      v-if="$can('COORDENADOR')"
      :data-source="turmasAguardandoAnalise"
      title="Aguardando Análise"
      color="cyan"/>
    <!--endregion-->

    <!--region EM PRODUÇÃO-->
    <dashboard-item
      :data-source="turmasEmProducao"
      title="Em Produção"
      color="indigo"/>
    <!--endregion-->

    <!--region NECESSITA REVISÃO-->
    <dashboard-item
      :data-source="turmasNecessitaRevisao"
      title="Necessita Revisão"
      color="deep-orange"/>
    <!--endregion-->

    <!--region APROVADOS-->
    <dashboard-item
      :data-source="turmasAprovadas"
      title="Aprovados"
      color="green-7"/>
    <!--endregion-->
  </div>
</template>

<script>
import {LocalStorage}      from 'quasar';
import {TurmaService}      from '../turmas/turmaService';
import {statusPlanoEnsino} from '../../utils/constants';
import DashboardItem       from './dashboard-item';

export default {
  name: 'DashboardProfCoord',
  components: {DashboardItem},
  data () {
    return {
      turmasAguardandoProducao: {
        pagination: {
          page: 1,
          totalPages: 0
        },
        isSearching: false,
        data: []
      },
      turmasAguardandoAnalise: {
        pagination: {
          page: 1,
          totalPages: 0
        },
        isSearching: false,
        data: []
      },
      turmasEmProducao: {
        pagination: {
          page: 1,
          totalPages: 0
        },
        isSearching: false,
        data: []
      },
      turmasNecessitaRevisao: {
        pagination: {
          page: 1,
          totalPages: 0
        },
        isSearching: false,
        data: []
      },
      turmasAprovadas: {
        pagination: {
          page: 1,
          totalPages: 0
        },
        isSearching: false,
        data: []
      }
    };
  },
  mounted () {
    const usuarioLogado      = LocalStorage.get.item('contexto').usuarioLogado;
    const periodoSelecionado = usuarioLogado.preferenciaUsuario.periodoSelecionado
      ? usuarioLogado.preferenciaUsuario.periodoSelecionado.uuid
      : undefined;
    if (periodoSelecionado) {
      this.fetchPlanos();
    }
  },
  methods: {
    fetchPlanos () {
      this.fetchTurmasAguardandoProducao();
      this.fetchTurmasAguardandoAnalise();
      this.fetchTurmasEmProducao();
      this.fetchTurmasNecessitaRevisao();
      this.fetchTurmasAprovadas();
    },
    fetchTurmasAguardandoProducao () {
      TurmaService.getTurmasByStatus({page: this.turmasAguardandoProducao.pagination.page - 1}, statusPlanoEnsino.AGUARDANDO_PRODUCAO)
      .then(res => {
        this.turmasAguardandoProducao.data                  = res.content || [];
        this.turmasAguardandoProducao.pagination.totalPages = res.totalPages;
      }).finally(() => {
        this.turmasAguardandoProducao.isSearching = false;
      });
    },
    fetchTurmasEmProducao () {
      TurmaService.getTurmasByStatus({page: this.turmasEmProducao.pagination.page - 1}, statusPlanoEnsino.EM_PRODUCAO)
      .then(res => {
        this.turmasEmProducao.data                  = res.content || [];
        this.turmasEmProducao.pagination.totalPages = res.totalPages;
      }).finally(() => {
        this.turmasEmProducao.isSearching = false;
      });
    },
    fetchTurmasAguardandoAnalise () {
      TurmaService.getTurmasByStatus({page: this.turmasAguardandoAnalise.pagination.page - 1}, statusPlanoEnsino.AGUARDANDO_ANALISE)
      .then(res => {
        this.turmasAguardandoAnalise.data                  = res.content || [];
        this.turmasAguardandoAnalise.pagination.totalPages = res.totalPages;
      }).finally(() => {
        this.turmasAguardandoAnalise.isSearching = false;
      });
    },
    fetchTurmasNecessitaRevisao () {
      TurmaService.getTurmasByStatus({page: this.turmasNecessitaRevisao.pagination.page - 1}, statusPlanoEnsino.NECESSITA_ALTERACOES)
      .then(res => {
        this.turmasNecessitaRevisao.data                  = res.content || [];
        this.turmasNecessitaRevisao.pagination.totalPages = res.totalPages;
      }).finally(() => {
        this.turmasNecessitaRevisao.isSearching = false;
      });
    },
    fetchTurmasAprovadas () {
      TurmaService.getTurmasByStatus({page: this.turmasAprovadas.pagination.page - 1}, statusPlanoEnsino.APROVADO)
      .then(res => {
        this.turmasAprovadas.data                  = res.content || [];
        this.turmasAprovadas.pagination.totalPages = res.totalPages;
      }).finally(() => {
        this.turmasAprovadas.isSearching = false;
      });
    }
  }
};
</script>
