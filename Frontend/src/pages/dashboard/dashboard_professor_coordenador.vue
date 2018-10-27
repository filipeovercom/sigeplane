<template>
  <div class="row gutter-xs">
    <!--region AGUARDANDO PRODUÇÃO - TEXT_INDIGO-->
    <div :class="gridForCards">
      <q-card class="relative-position">
        <q-card-title class="text-blue-grey">
          <q-icon name="bookmark"/>
          Aguardando Produção
        </q-card-title>
        <q-card-separator/>
        <q-card-main>
          <q-list no-border
                  class="text-blue-grey">
            <q-item v-for="turma in turmasAguardandoProducao.data"
                    :key="turma.uuid"
                    :to="`/pages/turmas/${turma.uuid}/planoensino`"
                    link>
              <q-item-side icon="school"
                           class="text-blue-grey"/>
              <q-item-main>
                <span>{{ turma.nome }}</span>
                <span>{{ turma.disciplina }}</span>
              </q-item-main>
            </q-item>
            <q-item v-if="turmasAguardandoProducao.data.length === 0">
              <q-item-side icon="announcement"
                           class="text-blue-grey"/>
              <q-item-main>
                Nenhum resultado encontrado!
              </q-item-main>
            </q-item>
          </q-list>
          <q-pagination v-model="turmasAguardandoProducao.pagination.page"
                        :min="1"
                        :max="turmasAguardandoProducao.pagination.totalPages"
                        :max-pages="5"
                        color="blue-grey"
                        direction-links/>
        </q-card-main>
        <q-inner-loading :visible="turmasAguardandoProducao.isSearching"/>
      </q-card>
    </div>
    <!--endregion-->

    <!--region AGUARDANDO ANÁLISE - TEXT-BLUE -->
    <div v-if="$can('COORDENADOR')"
         :class="gridForCards">
      <q-card class="relative-position">
        <q-card-title class="text-cyan">
          <q-icon name="bookmark"/>
          Aguardando Análise
        </q-card-title>
        <q-card-separator/>
        <q-card-main>
          <q-list no-border
                  class="text-cyan">
            <q-item v-for="turma in turmasAguardandoAnalise.data"
                    :key="turma.uuid"
                    :to="`/pages/turmas/${turma.uuid}/planoensino`"
                    link>
              <q-item-side icon="school"
                           class="text-cyan"/>
              <q-item-main>
                <span>{{ turma.nome }}</span>
                <span>{{ turma.disciplina }}</span>
              </q-item-main>
            </q-item>
            <q-item v-if="turmasAguardandoAnalise.data.length === 0">
              <q-item-side icon="announcement"
                           class="text-cyan"/>
              <q-item-main>
                Nenhum resultado encontrado!
              </q-item-main>
            </q-item>
          </q-list>
          <q-pagination v-model="turmasAguardandoAnalise.pagination.page"
                        :min="1"
                        :max="turmasAguardandoAnalise.pagination.totalPages"
                        :max-pages="5"
                        color="cyan"
                        direction-links/>
        </q-card-main>
        <q-inner-loading :visible="turmasAguardandoAnalise.isSearching"/>
      </q-card>
    </div>
    <!--endregion-->

    <!--region EM PRODUÇÃO - TEXT-LIGHT-GREEN-9-->
    <div :class="gridForCards">
      <q-card class="relative-position">
        <q-card-title class="text-indigo">
          <q-icon name="bookmark"/>
          Em Produção
        </q-card-title>
        <q-card-separator/>
        <q-card-main>
          <q-list no-border
                  class="text-indigo">
            <q-item v-for="turma in turmasEmProducao.data"
                    :key="turma.uuid"
                    :to="`/pages/turmas/${turma.uuid}/planoensino`"
                    link>
              <q-item-side icon="school"
                           class="text-indigo"/>
              <q-item-main>
                <span>{{ turma.nome }}</span>
                <span>{{ turma.disciplina }}</span>
              </q-item-main>
            </q-item>
            <q-item v-if="turmasEmProducao.data.length === 0">
              <q-item-side icon="announcement"
                           class="text-indigo"/>
              <q-item-main>
                Nenhum resultado encontrado!
              </q-item-main>
            </q-item>
          </q-list>
          <q-pagination v-model="turmasEmProducao.pagination.page"
                        :min="1"
                        :max="turmasEmProducao.pagination.totalPages"
                        :max-pages="5"
                        color="indigo"
                        direction-links/>
        </q-card-main>
        <q-inner-loading :visible="turmasEmProducao.isSearching"/>
      </q-card>
    </div>
    <!--endregion-->

    <!--region NECESSITA REVISÃO TEXT-DEEP-ORANGE-->
    <div :class="gridForCards">
      <q-card class="relative-position">
        <q-card-title class="text-deep-orange">
          <q-icon name="bookmark"/>
          Necessita Revisão
        </q-card-title>
        <q-card-separator/>
        <q-card-main>
          <q-list no-border
                  class="text-deep-orange">
            <q-item v-for="turma in turmasNecessitaRevisao.data"
                    :key="turma.uuid"
                    :to="`/pages/turmas/${turma.uuid}/planoensino`"
                    link>
              <q-item-side icon="school"
                           class="text-deep-orange"/>
              <q-item-main>
                <span>{{ turma.nome }}</span>
                <span>{{ turma.disciplina }}</span>
              </q-item-main>
            </q-item>
            <q-item v-if="turmasNecessitaRevisao.data.length === 0">
              <q-item-side icon="announcement"
                           class="text-deep-orange"/>
              <q-item-main>
                Nenhum resultado encontrado!
              </q-item-main>
            </q-item>
          </q-list>
          <q-pagination v-model="turmasNecessitaRevisao.pagination.page"
                        :min="1"
                        :max="turmasNecessitaRevisao.pagination.totalPages"
                        :max-pages="5"
                        color="deep-orange"
                        direction-links/>
        </q-card-main>
        <q-inner-loading :visible="turmasNecessitaRevisao.isSearching"/>
      </q-card>
    </div>
    <!--endregion-->

    <!--region APROVADOS-->
    <div :class="gridForCards">
      <q-card class="relative-position">
        <q-card-title class="text-green-7">
          <q-icon name="bookmark"/>
          Aprovados
        </q-card-title>
        <q-card-separator/>
        <q-card-main>
          <q-list no-border
                  class="text-green-7">
            <q-item v-for="turma in turmasAprovadas.data"
                    :key="turma.uuid"
                    :to="`/pages/turmas/${turma.uuid}/planoensino`"
                    link>
              <q-item-side icon="school"
                           class="text-green-7"/>
              <q-item-main>
                <span>{{ turma.nome }}</span>
                <span>{{ turma.disciplina }}</span>
              </q-item-main>
            </q-item>
            <q-item v-if="turmasAprovadas.data.length === 0">
              <q-item-side icon="announcement"
                           class="text-green-7"/>
              <q-item-main>
                Nenhum resultado encontrado!
              </q-item-main>
            </q-item>
          </q-list>
          <q-pagination v-model="turmasAprovadas.pagination.page"
                        :min="1"
                        :max="turmasAprovadas.pagination.totalPages"
                        :max-pages="5"
                        color="green-7"
                        direction-links/>
        </q-card-main>
        <q-inner-loading :visible="turmasAprovadas.isSearching"/>
      </q-card>
    </div>
    <!--endregion-->
  </div>
</template>

<script>
import {TurmaService}      from '../turmas/turmaService';
import {statusPlanoEnsino} from '../../utils/constants';

export default {
  name: 'DashboardProfCoord',
  data () {
    return {
      turmasAguardandoProducao: {
        pagination: {
          page: 1,
          totalPages: 0
        },
        isSearching: true,
        data: []
      },
      turmasAguardandoAnalise: {
        pagination: {
          page: 1,
          totalPages: 0
        },
        isSearching: true,
        data: []
      },
      turmasEmProducao: {
        pagination: {
          page: 1,
          totalPages: 0
        },
        isSearching: true,
        data: []
      },
      turmasNecessitaRevisao: {
        pagination: {
          page: 1,
          totalPages: 0
        },
        isSearching: true,
        data: []
      },
      turmasAprovadas: {
        pagination: {
          page: 1,
          totalPages: 0
        },
        isSearching: true,
        data: []
      }
    };
  },
  computed: {
    gridForCards () {
      if (this.$vuetify.breakpoint.smAndDown) return 'col-12';
      else if (this.$vuetify.breakpoint.md) return 'col-6';
      else if (this.$vuetify.breakpoint.lg) return 'col-4';
      else if (this.$vuetify.breakpoint.xl) return 'col-3';
    }
  },
  mounted () {
    this.fetchPlanos();
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
