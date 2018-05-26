<template>
  <q-layout>
    <q-page-container>
      <q-page padding>
        <div class="row justify-center items-center">
          <div class="col-xs-12 text-center">
            <img class="q-mb-xl" src="http://www.catolica-to.edu.br/portal/portal/media/img/logo_catolica_azul.png"
                 width="200px">
          </div>
          <q-card class="q-pa-lg col-xs-12 col-md-6">
            <div class="col-xs-12 text-center">
              <h3 style="color: #5db761" class="q-ma-xs">
                SGPE
              </h3>
              <h6 class="q-mt-xs">Sistema de Gerenciamento de Planos de Ensino</h6>
            </div>
            <q-field icon="person" class="col-xs-12">
              <q-input v-model="form.matricula" float-label="Matrícula"
                       required @keyup.enter="submit"/>
            </q-field>
            <br>
            <br>
            <q-field icon="lock" class="col-xs-12">
              <q-input v-model="form.password" type="password" visibility-icon=""
                       float-label="Senha"
                       required @keyup.enter="submit"/>
            </q-field>
            <br>
            <br>
            <q-btn label="Entrar" @click="submit" size="lg" color="primary" class="full-width"/>
          </q-card>
        </div>
      </q-page>
    </q-page-container>
  </q-layout>
</template>

<script>
export default {
  data: () => ({
    form: {
      password: '',
      matricula: ''
    }
  }),
  methods: {
    submit () {
      this.$store
        .dispatch('contexto/login', {
          matricula: this.form.matricula,
          password: this.form.password
        })
        .then(() => {
          this.$store.dispatch('contexto/updateFirstLogin', true);
          this.$router.replace({path: '/'});
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
