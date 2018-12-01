<template>
  <q-layout class="bg-light">
    <q-page-container>
      <q-page padding>
        <div class="row justify-center items-center">
          <div class="col-xs-12 text-center">
            <img class="q-mb-xl"
                 src="http://www.catolica-to.edu.br/portal/portal/media/img/logo_catolica_azul.png"
                 width="200px">
          </div>
          <q-card class="q-pa-lg col-xs-12 col-md-6 bg-white">
            <div class="col-xs-12 text-center q-mb-lg">
              <h1 class="q-ma-xs text-primary"
                  style="font-size: 4rem">
                SGPE
              </h1>
              <h2 class="q-mt-xs text-primary"
                  style="font-size: 1.5rem">Sistema de Gerenciamento de Planos de Ensino</h2>
            </div>
            <v-text-field
              v-model="form.email"
              label="E-mail Institucional"
              suffix="@catolica-to.edu.br"
              required
              outline
              prepend-icon="person"
              @keyup.enter="submit"/>
            <v-text-field
              :type="showPassword ? 'text' : 'password'"
              :append-icon="showPassword ? 'visibility_off' : 'visibility'"
              v-model="form.password"
              label="Senha"
              required
              outline
              prepend-icon="lock"
              @keyup.enter="submit"
            />
            <q-btn label="Entrar"
                   push
                   color="primary"
                   class="full-width"
                   @click="submit"/>
          </q-card>
        </div>
      </q-page>
    </q-page-container>
  </q-layout>
</template>

<script>
export default {
  data: () => ({
    showPassword: false,
    form: {
      password: '',
      email: ''
    }
  }),
  methods: {
    submit () {
      this.$store
      .dispatch('contexto/login', {
        email: this.form.email.concat('@catolica-to.edu.br'),
        password: this.form.password
      })
      .then(() => {
        this.$router.push({path: '/'});
      })
      .catch(error => {
        this.$q.notify({
          message: `Ooops! Estamos com problemas`,
          type: 'negative',
          detail: 'Aguarde e tente novamente',
          position: 'top'
        });
        console.error('Erro ao realizar login: ', error);
      });
    }
  }
};
</script>
