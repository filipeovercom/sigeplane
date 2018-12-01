<template>
  <div id="q-app">
    <v-app>
      <router-view/>
    </v-app>
    <q-ajax-bar/>
  </div>
</template>

<script>
export default {
  name: 'App'
};
</script>

<style>
  /*Corrige tamanho dos ícones do Fontawesome*/
  i.q-icon.fa {
    font-size: 18px;
  }
</style>
