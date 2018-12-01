<template>
  <div :class="gridForCards">
    <q-card class="relative-position">
      <q-card-title :class="'text-'.concat(color)">
        <q-icon name="bookmark"/>
        {{ title }}
      </q-card-title>
      <q-card-separator/>
      <q-card-main>
        <q-list
          :class="'text-'.concat(color)"
          no-border>
          <q-item v-for="turma in dataSource.data"
                  :key="turma.uuid"
                  :to="`/pages/turmas/${turma.uuid}/planoensino`"
                  link>
            <q-item-main>
              <q-chip :color="color"
                      square>{{ turma.nome }}
              </q-chip>
              <span> {{ turma.disciplina.nome }}</span>
            </q-item-main>
          </q-item>
          <q-item v-if="dataSource.data.length === 0">
            <q-item-side
              :class="'text-'.concat(color)"
              icon="announcement"/>
            <q-item-main>
              Nenhum resultado encontrado!
            </q-item-main>
          </q-item>
        </q-list>
        <q-pagination v-model="dataSource.pagination.page"
                      :min="1"
                      :max="dataSource.pagination.totalPages"
                      :max-pages="5"
                      :color="color"
                      direction-links/>
      </q-card-main>
      <q-inner-loading :visible="dataSource.isSearching"/>
    </q-card>
  </div>
</template>

<script>
export default {
  name: 'DashboardItem',
  props: {
    title: {
      type: String,
      require: true,
      default: () => ''
    },
    color: {
      type: String,
      require: true,
      default: () => ''
    },
    dataSource: {
      type: Object,
      require: true,
      default: () => ({
        data: [],
        pagination: {
          page: 0,
          totalPages: 0
        }
      })
    }
  },
  computed: {
    gridForCards () {
      if (this.$vuetify.breakpoint.smAndDown) return 'col-12';
      else if (this.$vuetify.breakpoint.md) return 'col-6';
      else if (this.$vuetify.breakpoint.lg) return 'col-4';
      else if (this.$vuetify.breakpoint.xl) return 'col-3';
    }
  }
};
</script>
