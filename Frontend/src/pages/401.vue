<template>
  <div class="fixed-center text-center">
    <p>
      <img
        src="~assets/sad.svg"
        style="width:30vw;max-width:150px;"
      >
    </p>
    <p class="text-faded">Oops! Você não possui acesso para acessar esta página...<strong>(401)</strong></p>
    <q-btn
      color="secondary"
      style="width: 200px;"
      @click="$router.back(1)"
    >Go back
    </q-btn>
  </div>
</template>
