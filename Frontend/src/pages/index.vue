<template>
  <div>
    <dashboard-prof-coord v-if="$can('COORDENADOR,PROFESSOR')"/>
    <dashboard-administrador v-if="$can('ADMINISTRADOR')"/>
  </div>
</template>

<script>
import DashboardAdministrador from './dashboard/dashboard_administrador';
import DashboardProfCoord     from './dashboard/dashboard_professor_coordenador';

export default {
  name: 'Index',
  components: {DashboardProfCoord, DashboardAdministrador},
  data () {
    return {};
  },
  computed: {
    usuarioLogado () {
      return this.$q.localStorage.get.item('contexto').usuarioLogado;
    }
  },
  mounted () {
    if (this.$store.getters['contexto/isFirstLogin']) {
      this.$q.notify({
        message: `Seja bem vindo ${this.usuarioLogado.nome}`,
        type: 'info',
        position: 'top'
      });
      this.$store.commit('contexto/SET_FIRST_LOGIN', false);
    }
  }
};
</script>
