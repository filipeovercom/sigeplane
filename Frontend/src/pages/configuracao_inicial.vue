<template>
  <div class="container">
    <h5>Para continuar precisamos configurar o período letivo:</h5><br>
    <v-stepper v-model="processo.stepper">
      <v-stepper-header>
        <v-stepper-step :complete="processo.completo"
                        step="1">Período Letivo
        </v-stepper-step>
        <v-divider/>
        <v-stepper-step :complete="processo.completo"
                        step="2">Concluído
        </v-stepper-step>
      </v-stepper-header>
      <v-stepper-items>
        <v-stepper-content step="1">
          <div class="row gutter-sm">
            <div class="col-md-4">
              <v-text-field v-model="periodo.descricao"
                            outline
                            label="Nome do Período"/>
            </div>
            <div class="col-md-4">
              <v-menu ref="menu"
                      :close-on-content-click="false"
                      v-model="pickerDataInicio"
                      lazy
                      transition="scale-transition"
                      offset-y
                      full-width
                      min-width="290px">
                <v-text-field slot="activator"
                              v-model="dataInicioFormatada"
                              outline
                              label="Início do Preenchimento"
                              readonly
                              @focus="pickerDataInicio = true"/>
                <v-date-picker ref="picker"
                               v-model="periodo.dataInicioPreenchimento"
                               :max="maxDate"
                               locale="pt-br"
                               min="2000-01-01"
                               @input="pickerDataInicio = false"
                               @change="onSaveDatePicker"/>
              </v-menu>
            </div>
            <div class="col-md-4">
              <v-menu ref="menu"
                      :close-on-content-click="false"
                      v-model="pickerDataFim"
                      lazy
                      transition="scale-transition"
                      offset-y
                      full-width
                      min-width="290px">
                <v-text-field slot="activator"
                              v-model="dataFimFormatada"
                              outline
                              label="Fim do Preenchimento"
                              readonly
                              @focus="pickerDataFim = true"/>
                <v-date-picker ref="picker"
                               v-model="periodo.dataFimPreenchimento"
                               :max="maxDate"
                               locale="pt-br"
                               min="2000-01-01"
                               @input="pickerDataFim = false"
                               @change="onSaveDatePicker"/>
              </v-menu>
            </div>
          </div>
          <q-btn :loading="isSavingPeriodo"
                 push
                 label="Salvar e Continuar"
                 icon="save"
                 color="primary"
                 @click="salvarPeriodo"/>
        </v-stepper-content>
        <v-stepper-content step="2">
          <div class="row">
            <div class="col-xs-12">
              <p class="q-headline">Parabéns, tudo concluído.</p>
            </div>
            <div class="col-xs-12">
              <q-btn push
                     label="Continuar"
                     color="primary"
                     icon="check"
                     @click="$router.push({path: '/'})"/>
            </div>
          </div>
        </v-stepper-content>
      </v-stepper-items>
    </v-stepper>
  </div>
</template>

<script>
import {PeriodoService} from '../utils/periodoService';

export default {
  name: 'Confirmacao',
  data () {
    return {
      isSavingPeriodo: false,
      pickerDataInicio: false,
      pickerDataFim: false,
      periodo: {
        descricao: '',
        dataInicioPreenchimento: undefined,
        dataFimPreenchimento: undefined
      },
      processo: {
        completo: false,
        stepper: 1
      }
    };
  },
  computed: {
    dataInicioFormatada () {
      return this.formatDate(this.periodo.dataInicioPreenchimento);
    },
    dataFimFormatada () {
      return this.formatDate(this.periodo.dataFimPreenchimento);
    },
    maxDate () {
      const dt     = new Date();
      const result = new Date(dt.getFullYear() + 1, 11, 31);
      return result.toISOString();
    }
  },
  watch: {
    pickerDataInicio (val) {
      val && this.$nextTick(() => (this.$refs.picker.activePicker = 'YEAR'));
    },
    pickerDataFim (val) {
      val && this.$nextTick(() => (this.$refs.picker.activePicker = 'YEAR'));
    }
  },
  methods: {
    salvarPeriodo () {
      this.isSavingPeriodo = true;
      PeriodoService.saveNewPeriodo(this.periodo).then(() => {
        this.processo.stepper = 2;
      }).catch(error => {
        if (error && error.data && error.data.errors) {
          error.data.errors.forEach(err => this.$q.notify({
            message: err,
            type: 'warning',
            position: 'top-right'
          }));
        } else {
          this.$q.notify({
            message: 'Ooops! Não foi possível salvar as alterações!',
            type: 'negative',
            detail: 'Aguarde e tente novamente',
            position: 'top'
          });
        }
      }).finally(() => {
        this.isSavingPeriodo = false;
      });
    },
    onSaveDatePicker (date) {
      this.$refs.menu.save(date);
    },
    formatDate (date) {
      if (!date) return null;
      const [year, month, day] = date.split('-');
      return `${day}/${month}/${year}`;
    }
  }
};
</script>

<style scoped>

</style>
