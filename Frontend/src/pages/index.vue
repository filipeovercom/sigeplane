<template>
  <div>
    <q-page class="q-pa-md" v-if="isUsuarioCoordenador || isUsuarioProfessor">
      <p class="q-headline">Gerenciamento de Planos de Enino</p>
      <div class="row gutter-xs">
        <div class="col-md-6">
          <q-card flat>
            <q-card-title class="text-primary">
              <q-icon name="bookmark"/>
              Aguardando Produção/Análise
            </q-card-title>
            <q-card-main>
              <q-list no-border>
                <q-item link to="/planoensino/1">
                  <q-item-side icon="school"/>
                  <q-item-main><span style="border-bottom: 1px solid blue">Estágio Supervisionado II - 302N7A-A4</span>
                  </q-item-main>
                </q-item>
                <q-item link to="/planoensino/2">
                  <q-item-side icon="school"/>
                  <q-item-main><span style="border-bottom: 1px solid blue">Sistemas Operacionais - 302N4A</span>
                  </q-item-main>
                </q-item>
                <q-item link to="/planoensino/3">
                  <q-item-side icon="school"/>
                  <q-item-main>
                    <span style="border-bottom: 1px solid blue">Pesquisa Operacional e Teoria dos Jogos - 302N7A</span>
                  </q-item-main>
                </q-item>
              </q-list>
            </q-card-main>
          </q-card>
        </div>
        <div class="col-md-6">
          <q-card flat>
            <q-card-title class="text-info">
              <q-icon name="bookmark"/>
              Em Produção/Análise
            </q-card-title>
            <q-card-main>
              <q-list no-border>
                <q-item link to="/planoensino/1">
                  <q-item-side icon="school"/>
                  <q-item-main><span style="border-bottom: 1px solid blue">Estágio Supervisionado II - 302N7A-A4</span>
                  </q-item-main>
                </q-item>
                <q-item link to="/planoensino/2">
                  <q-item-side icon="school"/>
                  <q-item-main><span style="border-bottom: 1px solid blue">Sistemas Operacionais - 302N4A</span>
                  </q-item-main>
                </q-item>
                <q-item link to="/planoensino/3">
                  <q-item-side icon="school"/>
                  <q-item-main><span style="border-bottom: 1px solid blue">Pesquisa Operacional e Teoria dos Jogos - 302N7A</span>
                  </q-item-main>
                </q-item>
              </q-list>
            </q-card-main>
          </q-card>
        </div>
        <div class="col-md-6">
          <q-card flat>
            <q-card-title class="text-warning">
              <q-icon name="bookmark"/>
              Pendentes de Resposta
            </q-card-title>
            <q-card-main>
              <q-list no-border>
                <q-item link to="/planoensino/1">
                  <q-item-side icon="school"/>
                  <q-item-main><span style="border-bottom: 1px solid blue">Estágio Supervisionado II - 302N7A-A4</span>
                  </q-item-main>
                </q-item>
                <q-item link to="/planoensino/2">
                  <q-item-side icon="school"/>
                  <q-item-main><span style="border-bottom: 1px solid blue">Sistemas Operacionais - 302N4A</span>
                  </q-item-main>
                </q-item>
                <q-item link to="/planoensino/3">
                  <q-item-side icon="school"/>
                  <q-item-main><span style="border-bottom: 1px solid blue">Pesquisa Operacional e Teoria dos Jogos - 302N7A</span>
                  </q-item-main>
                </q-item>
              </q-list>
            </q-card-main>
          </q-card>
        </div>
        <div class="col-md-6">
          <q-card flat>
            <q-card-title class="text-positive">
              <q-icon name="bookmark"/>
              Concluídos/Analisados
            </q-card-title>
            <q-card-main>
              <q-list no-border>
                <q-item link to="/planoensino/1">
                  <q-item-side icon="school"/>
                  <q-item-main><span style="border-bottom: 1px solid blue">Estágio Supervisionado II - 302N7A-A4</span>
                  </q-item-main>
                </q-item>
                <q-item link to="/planoensino/2">
                  <q-item-side icon="school"/>
                  <q-item-main><span style="border-bottom: 1px solid blue">Sistemas Operacionais - 302N4A</span>
                  </q-item-main>
                </q-item>
                <q-item link to="/planoensino/3">
                  <q-item-side icon="school"/>
                  <q-item-main><span style="border-bottom: 1px solid blue">Pesquisa Operacional e Teoria dos Jogos - 302N7A</span>
                  </q-item-main>
                </q-item>
              </q-list>
            </q-card-main>
          </q-card>
        </div>
      </div>
    </q-page>
    <q-page padding v-if="isAdministrador" class="justify-between">
      <div class="column justify-between" style="height: 400px;">
        <div class="col q-display-2 text-center text-primary">
          Bem vindo ao SGPE
        </div>
        <div class="col q-headline text-center text-primary">
          Sistema de Gerenciamento e Produção de Planos de Ensino
        </div>
        <div class="col text-center">
          <img src="http://www.catolica-to.edu.br/portal/portal/media/img/logo_catolica_azul.png" width="400px">
        </div>
      </div>
    </q-page>
  </div>
</template>

<script>
import {getItemFromLocalStorage} from '../services/core/storageUtils';
import SecProfile from '../services/core/securityPermissions';

export default {
  name: 'PageIndex',
  data () {
    return {};
  },
  computed: {
    usuarioLogado () {
      return getItemFromLocalStorage('usuario');
    },
    isUsuarioCoordenador () {
      return this.$can([SecProfile.COORDENADOR]);
    },
    isUsuarioProfessor () {
      return this.$can([SecProfile.PROFESSOR]);
    },
    isAdministrador () {
      return this.$can([SecProfile.ADMINISTRADOR]);
    }
  },
  mounted () {
    if (this.$store.getters.isFirstLogin) {
      this.$q.notify({
        message: `Seja bem vindo ${this.usuarioLogado.nome}`,
        type: 'info',
        textColor: 'black',
        avatar: `http://www.catolica-to.edu.br/portal/portal/media/img/logo_catolica_azul.png`,
        position: 'top'
      });
      this.$store.dispatch('contexto/updateFirstLogin', false);
    }
  }
};
</script>
