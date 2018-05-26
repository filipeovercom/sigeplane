<template>
  <q-page class="q-pa-md">
    <div class="row gutter-xs">
      <div class="col-md-6">
        <q-card flat>
          <q-card-title class="text-primary">
            Meus Planos
          </q-card-title>
          <q-card-separator/>
          <q-card-main>
            <q-list no-border>
              <q-item link to="/planoensino/1">
                <q-item-side icon="school"/>
                <q-item-main><span style="border-bottom: 1px solid blue">Estágio Supervisionado II - 302N7A-A4</span>
                </q-item-main>
                <q-item-side right icon="forward"/>
              </q-item>
              <q-item link to="/planoensino/2">
                <q-item-side icon="school"/>
                <q-item-main><span style="border-bottom: 1px solid blue">Sistemas Operacionais - 302N4A</span>
                </q-item-main>
                <q-item-side right icon="forward"/>
              </q-item>
              <q-item link to="/planoensino/3">
                <q-item-side icon="school"/>
                <q-item-main><span style="border-bottom: 1px solid blue">Pesquisa Operacional e Teoria dos Jogos - 302N7A</span>
                </q-item-main>
                <q-item-side right icon="forward"/>
              </q-item>
            </q-list>
          </q-card-main>
        </q-card>
      </div>
      <div class="col-md-6">
        <q-card flat>
          <q-card-title class="text-warning">
            Pendentes de Análise
          </q-card-title>
          <q-card-separator/>
          <q-card-main>
            <q-list no-border>
              <q-item link to="/planoensino/1">
                <q-item-side icon="school"/>
                <q-item-main><span style="border-bottom: 1px solid blue">Estágio Supervisionado II - 302N7A-A4</span>
                </q-item-main>
                <q-item-side right icon="forward"/>
              </q-item>
              <q-item link to="/planoensino/2">
                <q-item-side icon="school"/>
                <q-item-main><span style="border-bottom: 1px solid blue">Sistemas Operacionais - 302N4A</span>
                </q-item-main>
                <q-item-side right icon="forward"/>
              </q-item>
              <q-item link to="/planoensino/3">
                <q-item-side icon="school"/>
                <q-item-main><span style="border-bottom: 1px solid blue">Pesquisa Operacional e Teoria dos Jogos - 302N7A</span>
                </q-item-main>
                <q-item-side right icon="forward"/>
              </q-item>
            </q-list>
          </q-card-main>
        </q-card>
      </div>
      <div class="col-md-6">
        <q-card flat>
          <q-card-title class="text-positive">
            Analisados
          </q-card-title>
          <q-card-separator/>
          <q-card-main>
            <q-list no-border>
              <q-item link to="/planoensino/1">
                <q-item-side icon="school"/>
                <q-item-main><span style="border-bottom: 1px solid blue">Estágio Supervisionado II - 302N7A-A4</span>
                </q-item-main>
                <q-item-side right icon="forward"/>
              </q-item>
              <q-item link to="/planoensino/2">
                <q-item-side icon="school"/>
                <q-item-main><span style="border-bottom: 1px solid blue">Sistemas Operacionais - 302N4A</span>
                </q-item-main>
                <q-item-side right icon="forward"/>
              </q-item>
              <q-item link to="/planoensino/3">
                <q-item-side icon="school"/>
                <q-item-main><span style="border-bottom: 1px solid blue">Pesquisa Operacional e Teoria dos Jogos - 302N7A</span>
                </q-item-main>
                <q-item-side right icon="forward"/>
              </q-item>
            </q-list>
          </q-card-main>
        </q-card>
      </div>
    </div>
  </q-page>
</template>

<script>
import {getItemFromLocalStorage} from '../services/core/storageUtils';

export default {
  name: 'PageIndex',
  data () {
    return {};
  },
  computed: {
    usuarioLogado () {
      return getItemFromLocalStorage('usuario');
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
