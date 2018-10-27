<template>
  <q-page padding>
    <!--region CARD TABELA-->
    <q-card>
      <q-card-main class="q-pa-none">
        <q-table ref="table"
                 :data="periodos"
                 :columns="dataTable.columns"
                 :visible-columns="dataTable.visibleColumns"
                 :filter="dataTable.filter"
                 :selected.sync="dataTable.selected"
                 :loading="dataTable.loading"
                 color="primary"
                 selection="single"
                 row-key="id">
          <template slot="top-left"
                    slot-scope="props">
            <q-search v-model="dataTable.filter"
                      hide-underline
                      style="width: 350px"
                      placeholder="Procurar"/>
          </template>
          <template slot="top-right"
                    slot-scope="props">
            <q-btn push
                   class="q-mr-sm"
                   color="primary"
                   round
                   icon="add"
                   title="Novo Período"/>
            <q-btn :disable="!dataTable.selected"
                   push
                   class="q-mr-sm"
                   color="secondary"
                   round
                   icon="edit"
                   title="Editar Período"/>
          </template>
        </q-table>
      </q-card-main>
    </q-card>
    <!--endregion CARD TABELA-->
  </q-page>
</template>

<script>
import {uid} from 'quasar';

export default {
  data () {
    return {
      dataTable: {
        visibleColumns: ['nome', 'dataInicioPreenchimento', 'dataInicioAulas', 'dataFimPeriodo', 'status'],
        columns: [
          {name: 'id', field: 'id'},
          {name: 'nome', label: 'Nome', field: 'nome', align: 'center'},
          {
            name: 'dataInicioPreenchimento',
            label: 'Dt. Início Preenchimento',
            field: 'dataInicioPreenchimento',
            align: 'center'
          },
          {
            name: 'dataInicioAulas',
            label: 'Dt. Início Aulas',
            field: 'dataInicioAulas',
            align: 'center'
          },
          {
            name: 'dataFimPeriodo',
            label: 'Dt. Fim Período',
            field: 'dataFimPeriodo',
            align: 'center'
          },
          {
            name: 'status',
            label: 'Status',
            field: 'status',
            align: 'center'
          }
        ],
        filter: '',
        selected: undefined,
        loading: false
      }
    };
  },
  computed: {
    periodos () {
      return [
        {
          id: uid(),
          nome: 'Semestre 2017/01',
          dataInicioPreenchimento: '01/01/2017',
          dataInicioAulas: '01/02/2017',
          dataFimPeriodo: '30/06/2017',
          status: 'Fechado'
        },
        {
          id: uid(),
          nome: 'Semestre 2017/02',
          dataInicioPreenchimento: '01/07/2017',
          dataInicioAulas: '01/08/2017',
          dataFimPeriodo: '30/11/2017',
          status: 'Fechado'
        },
        {
          id: uid(),
          nome: 'Semestre 2018/01',
          dataInicioPreenchimento: '01/01/2018',
          dataInicioAulas: '01/02/2018',
          dataFimPeriodo: '30/06/2018',
          status: 'Aberto'
        }
      ];
    }
  }
};
</script>
