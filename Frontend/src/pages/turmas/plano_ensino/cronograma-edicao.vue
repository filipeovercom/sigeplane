<template>
  <div>
    <div>
      <q-list separator>
        <q-collapsible
          v-for="(item) in itens"
          :key="item.id"
          group="itens"
          @show="onShowItemCronograma(item)">
          <template slot="header">
            <q-item-main>
              <template v-if="edicao">
                <q-chip
                  v-for="(competencia, index) in item.competencias"
                  :key="index"
                  color="grey-9"
                  square
                  closable
                  class="q-ma-sm"
                  @hide="onRemoverCompetencia(competencia)">
                  {{ competencia }}
                </q-chip>
              </template>
              <template v-else>
                <p
                  v-for="(competencia, index) in item.competencias"
                  :key="index"
                  class="q-ma-sm">
                  {{ competencia }}
                </p>
              </template>
            </q-item-main>
            <q-item-side
              v-if="edicao"
              right>
              <q-btn
                v-if="false"
                flat
                round
                color="primary"
                icon="edit"
                @click.stop="onRemoverItemCronograma(item)">
                <q-tooltip :offset="[10, 10]">
                  Editar Item
                </q-tooltip>
              </q-btn>
              <q-btn
                flat
                round
                color="red"
                icon="delete"
                @click.stop="onRemoverItemCronograma(item)">
                <q-tooltip :offset="[10, 10]">
                  Remover Item do Cronograma
                </q-tooltip>
              </q-btn>
            </q-item-side>
          </template>
          <q-card-separator/>
          <div class="q-pa-sm">
            <table
              v-if="edicao || (item.subItens && item.subItens.length > 0)"
              class="tg animate-scale">
              <thead>
              <tr>
                <th width="20%">Habilidades</th>
                <th width="10%"
                    style="text-align: center;">Datas
                </th>
                <th width="20%">Conteúdos</th>
                <th width="15%">Recursos</th>
                <th width="15%">Metodologias</th>
                <th width="20%">Avaliação</th>
              </tr>
              </thead>
              <tbody>
              <template v-for="(subItem, index) in getSubItens(item)">
                <!--region DEMAIS ITENS DO CRONOGRAMA-->
                <tr :key="index + uid()">
                  <td :rowspan="getRowSpan(subItem.datas)">
                    <cronograma-list-item
                      :itens="subItem.habilidades"
                      :edicao="edicao"
                      item-id="id"
                      item-label="descricao"
                      @removeItem="onRemoverHabilidade"/>
                    <q-btn
                      title="Adicionar Habilidade(s)"
                      push
                      icon="add"
                      @click.stop="onClickBtnAddHabilidade(item)"/>
                  </td>
                  <td style="text-align: center;">
                    <cronograma-list-item
                      :itens="subItem.datas[0].data"
                      :edicao="edicao"
                      @removeItem="onRemoverData"/>
                    <q-btn
                      v-if="subItem.habilidades.length > 0"
                      title="Adicionar Data"
                      push
                      icon="add"
                      @click.stop="onClickBtnAddData(subItem)"/>
                  </td>
                  <td>
                    <cronograma-list-item
                      :itens="subItem.datas[0].conteudos"
                      :edicao="edicao"
                      @removeItem="onRemoverConteudo"/>
                    <q-btn
                      v-if="subItem.datas[0].data.length > 0"
                      push
                      icon="add"/>
                  </td>
                  <td>
                    <cronograma-list-item
                      :itens="subItem.datas[0].recursos"
                      :edicao="edicao"
                      @removeItem="onRemoverRecurso"/>
                    <q-btn
                      v-if="subItem.datas[0].data.length > 0"
                      push
                      icon="add"/>
                  </td>
                  <td>
                    <cronograma-list-item
                      :itens="subItem.datas[0].metodologias"
                      :edicao="edicao"
                      @removeItem="onRemoverMetodologia"/>
                    <q-btn
                      v-if="subItem.datas[0].data.length > 0"
                      push
                      icon="add"/>
                  </td>
                  <td>
                    <cronograma-list-item
                      :itens="subItem.datas[0].avaliacao"
                      :edicao="edicao"
                      @removeItem="onRemoverAvaliacao"/>
                    <q-btn
                      v-if="subItem.datas[0].data.length > 0"
                      push
                      icon="add"/>
                  </td>
                </tr>

                <template v-for="(dataSubItem, index4) in subItem.datas.slice(1, subItem.datas.length)">
                  <tr :key="index4 + uid()">
                    <td style="text-align: center;">
                      <cronograma-list-item
                        :itens="dataSubItem.data"
                        :edicao="edicao"
                        @removeItem="onRemoverData"/>
                      <q-btn
                        push
                        icon="add"
                        @click.stop="onClickBtnAddData"/>
                    </td>
                    <td>
                      <cronograma-list-item
                        :itens="dataSubItem.conteudos"
                        :edicao="edicao"
                        @removeItem="onRemoverConteudo"/>
                      <q-btn
                        push
                        icon="add"/>
                    </td>
                    <td>
                      <cronograma-list-item
                        :itens="dataSubItem.recursos"
                        :edicao="edicao"
                        @removeItem="onRemoverRecurso"/>
                      <q-btn
                        push
                        icon="add"/>
                    </td>
                    <td>
                      <cronograma-list-item
                        :itens="dataSubItem.metodologias"
                        :edicao="edicao"
                        @removeItem="onRemoverMetodologia"/>
                      <q-btn
                        push
                        icon="add"/>
                    </td>
                    <td>
                      <cronograma-list-item
                        :itens="dataSubItem.avaliacao"
                        :edicao="edicao"
                        @removeItem="onRemoverAvaliacao"/>
                      <q-btn
                        push
                        icon="add"/>
                    </td>
                  </tr>
                </template>
                <!--endregion-->
              </template>
              </tbody>
            </table>
          </div>
        </q-collapsible>
      </q-list>
    </div>
  </div>
</template>

<script>
import {uid}                from 'quasar';
import CronogramaListItem   from './cronograma-list-item';
import {planoEnsinoService} from './planoEnsinoService';

export default {
  name: 'Cronograma',
  components: {CronogramaListItem},
  props: {
    itens: {
      type: Array,
      default: () => []
    },
    edicao: {
      type: Boolean,
      default: () => false
    }
  },
  methods: {
    uid () {
      return uid();
    },
    getSubItens (item) {
      return item.subItens || [{
        habilidades: [],
        datas: [{
          data: [],
          conteudos: [],
          recursos: [],
          metodologias: [],
          avaliacao: []
        }]
      }];
    },
    onRemoverItemCronograma (item) {
      this.$emit('removeItem', item);
    },
    onRemoverCompetencia (item, competencia) {
      item.competencias = item.competencias.filter(comp => comp !== competencia);
      this.$emit('removeCompetencia', item);
    },
    onRemoverHabilidade (habilidade) {
      this.$emit('removeHabilidade', habilidade);
    },
    onRemoverData (data) {
      this.$emit('removeData', data);
    },
    onRemoverConteudo (conteudo) {
      this.$emit('removeConteudo', conteudo);
    },
    onRemoverRecurso (recurso) {
      this.$emit('removeRecurso', recurso);
    },
    onRemoverMetodologia (metodologia) {
      this.$emit('removeMetodologia', metodologia);
    },
    onRemoverAvaliacao (avaliacao) {
      this.$emit('removeAvaliacao', avaliacao);
    },
    onClickBtnAddHabilidade (item) {
      this.$emit('addHabilidade', item);
    },
    onClickBtnAddData (subItem) {
      this.$emit('addData', subItem);
    },
    getRowSpan (itens) {
      return itens ? itens.length : 0;
    },
    getRowSpanCompetencia (subItens) {
      let totalRowSpan = 0;
      subItens.forEach(subItem => {
        totalRowSpan += subItem.datas.length;
      });
      return totalRowSpan;
    },
    onShowItemCronograma (item) {
      planoEnsinoService.getSubItensCronogramaByItem(item.uuid)
      .then((res) => {
        item.subItens = res;
      });
    }
  }
};
</script>

<style lang="stylus">
  @import '../../../css/themes/common.variables.styl';

  .q-list-separator > .q-item-division + .q-item-division, .q-item-division + .q-item-separator
    border-top 1px solid #a0a0a0

  .q-list
    border 1px solid #a0a0a0

  .tg
    border-collapse collapse
    border-spacing 0
    td
      font-size 14px
      padding 10px 5px
      border-style solid
      border-width 1px
      overflow hidden
      word-break normal
      border-color black
    th
      font-size 14px
      font-weight normal
      padding 10px 5px
      border-style solid
      border-width 1px
      overflow hidden
      word-break normal
      border-color black
    tbody tr td
      border-color inherit
      vertical-align top
      text-align center
    thead tr th
      background-color: $primary
      color: $light
      font-weight bold
      border-color inherit
      vertical-align center
      text-align left
      padding-left: 10px
</style>
