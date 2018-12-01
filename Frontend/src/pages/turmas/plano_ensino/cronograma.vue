<template>
  <table
    v-if="itens && itens.length > 0"
    class="tg">
    <thead>
    <tr>
      <th>Competências<br></th>
      <th>Habilidades</th>
      <th>Datas</th>
      <th>Conteúdos<br></th>
      <th>Recursos<br></th>
      <th>Metodologias<br></th>
      <th>Avaliação</th>
    </tr>
    </thead>
    <tbody>
    <template v-for="(item, index) in itens">
      <!--region PRIMEIRO ITEM DO CRONOGRAMA-->
      <tr :key="index + uid()">
        <td :rowspan="getRowSpanCompetencia(item.subItens)">
          <cronograma-list-item
            :itens="item.competencias"
            :edicao="edicao"
            item-id="id"
            item-label="descricao"
            @removeItem="onRemoverCompetencia"/>
        </td>
        <td :rowspan="getRowSpan(item.subItens[0].datas)">
          <cronograma-list-item
            :itens="item.subItens[0].habilidades"
            :edicao="edicao"
            item-id="id"
            item-label="descricao"
            @removeItem="onRemoverHabilidade"/>
        </td>
        <td>
          <cronograma-list-item
            :itens="item.subItens[0].datas[0].data"
            :edicao="edicao"
            @removeItem="onRemoverData"/>
        </td>
        <td>
          <cronograma-list-item
            :itens="item.subItens[0].datas[0].conteudos"
            :edicao="edicao"
            @removeItem="onRemoverConteudo"/>
        </td>
        <td>
          <cronograma-list-item
            :itens="item.subItens[0].datas[0].recursos"
            :edicao="edicao"
            @removeItem="onRemoverRecurso"/>
        </td>
        <td>
          <cronograma-list-item
            :itens="item.subItens[0].datas[0].metodologias"
            :edicao="edicao"
            @removeItem="onRemoverMetodologia"/>
        </td>
        <td>
          <cronograma-list-item
            :itens="item.subItens[0].datas[0].avaliacao"
            :edicao="edicao"
            @removeItem="onRemoverAvaliacao"/>
        </td>
      </tr>

      <template v-for="(dataSubItem, index2) in item.subItens[0].datas.slice(1, item.subItens[0].datas.length)">
        <tr :key="index2 + uid()">
          <td>
            <cronograma-list-item
              :itens="dataSubItem.data"
              :edicao="edicao"
              @removeItem="onRemoverData"/>
          </td>
          <td>
            <cronograma-list-item
              :itens="dataSubItem.conteudos"
              :edicao="edicao"
              @removeItem="onRemoverConteudo"/>
          </td>
          <td>
            <cronograma-list-item
              :itens="dataSubItem.recursos"
              :edicao="edicao"
              @removeItem="onRemoverRecurso"/>
          </td>
          <td>
            <cronograma-list-item
              :itens="dataSubItem.metodologias"
              :edicao="edicao"
              @removeItem="onRemoverMetodologia"/>
          </td>
          <td>
            <cronograma-list-item
              :itens="dataSubItem.avaliacao"
              :edicao="edicao"
              @removeItem="onRemoverAvaliacao"/>
          </td>
        </tr>
      </template>
      <!--endregion-->

      <!--region DEMAIS ITENS DO CRONOGRAMA-->
      <template v-for="(subItem, index3) in item.subItens.slice(1, item.subItens.length)">
        <tr :key="index3 + uid()">
          <td :rowspan="getRowSpan(subItem.datas)">
            <cronograma-list-item
              :itens="subItem.habilidades"
              :edicao="edicao"
              item-id="id"
              item-label="descricao"
              @removeItem="onRemoverHabilidade"/>
          </td>
          <td>
            <cronograma-list-item
              :itens="subItem.datas[0].data"
              :edicao="edicao"
              @removeItem="onRemoverData"/>
          </td>
          <td>
            <cronograma-list-item
              :itens="subItem.datas[0].conteudos"
              :edicao="edicao"
              @removeItem="onRemoverConteudo"/>
          </td>
          <td>
            <cronograma-list-item
              :itens="subItem.datas[0].recursos"
              :edicao="edicao"
              @removeItem="onRemoverRecurso"/>
          </td>
          <td>
            <cronograma-list-item
              :itens="subItem.datas[0].metodologias"
              :edicao="edicao"
              @removeItem="onRemoverMetodologia"/>
          </td>
          <td>
            <cronograma-list-item
              :itens="subItem.datas[0].avaliacao"
              :edicao="edicao"
              @removeItem="onRemoverAvaliacao"/>
          </td>
        </tr>

        <template v-for="(dataSubItem, index4) in subItem.datas.slice(1, subItem.datas.length)">
          <tr :key="index4 + uid()">
            <td>
              <cronograma-list-item
                :itens="dataSubItem.data"
                :edicao="edicao"
                @removeItem="onRemoverData"/>
            </td>
            <td>
              <cronograma-list-item
                :itens="dataSubItem.conteudos"
                :edicao="edicao"
                @removeItem="onRemoverConteudo"/>
            </td>
            <td>
              <cronograma-list-item
                :itens="dataSubItem.recursos"
                :edicao="edicao"
                @removeItem="onRemoverRecurso"/>
            </td>
            <td>
              <cronograma-list-item
                :itens="dataSubItem.metodologias"
                :edicao="edicao"
                @removeItem="onRemoverMetodologia"/>
            </td>
            <td>
              <cronograma-list-item
                :itens="dataSubItem.avaliacao"
                :edicao="edicao"
                @removeItem="onRemoverAvaliacao"/>
            </td>
          </tr>
        </template>

      </template>
      <!--endregion-->
    </template>
    </tbody>
  </table>
</template>

<script>
import {uid}              from 'quasar';
import CronogramaListItem from './cronograma-list-item';
import {itensCronograma}  from '../../../assets/itensCronograma';

export default {
  name: 'Cronograma',
  components: {CronogramaListItem},
  props: {
    edicao: {
      type: Boolean,
      default: () => false
    }
  },
  data () {
    return {
      itens: itensCronograma
    };
  },
  methods: {
    uid () {
      return uid();
    },
    onRemoverCompetencia (competencia) {
      this.$emit('removeCompetencia', competencia);
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
    getRowSpan (itens) {
      return itens ? itens.length : 0;
    },
    getRowSpanCompetencia (subItens) {
      let totalRowSpan = 0;
      subItens.forEach(subItem => {
        totalRowSpan += subItem.datas.length;
      });
      return totalRowSpan;
    }
  }
};
</script>

<style lang="stylus">
  @import '../../../css/themes/common.variables.styl';

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
      text-align center
</style>
