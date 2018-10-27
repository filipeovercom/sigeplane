<template>
  <table class="tg">
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
      <!--PRIMEIRO ITEM DO CRONOGRAMA-->
      <tr :key="index + uid()">
        <td :rowspan="getRowSpanCompetencia(item.subItens)">
          <cronograma-list-item
            :itens="item.competencias"
            :edicao="edicao"
            item-id="id"
            item-label="descricao"/>
        </td>
        <td :rowspan="getRowSpan(item.subItens[0].datas)">
          <cronograma-list-item
            :itens="item.subItens[0].habilidades"
            :edicao="edicao"
            item-id="id"
            item-label="descricao"/>
        </td>
        <td>
          <cronograma-list-item
            :itens="item.subItens[0].datas[0].data"
            :edicao="edicao"/>
        </td>
        <td>
          <cronograma-list-item
            :itens="item.subItens[0].datas[0].conteudos"
            :edicao="edicao"/>
        </td>
        <td>
          <cronograma-list-item
            :itens="item.subItens[0].datas[0].recursos"
            :edicao="edicao"/>
        </td>
        <td>
          <cronograma-list-item
            :itens="item.subItens[0].datas[0].metodologias"
            :edicao="edicao"/>
        </td>
        <td>
          <cronograma-list-item
            :itens="item.subItens[0].datas[0].avaliacao"
            :edicao="edicao"/>
        </td>
      </tr>

      <template v-for="(dataSubItem, index2) in item.subItens[0].datas.slice(1, item.subItens[0].datas.length)">
        <tr :key="index2 + uid()">
          <td>
            <cronograma-list-item
              :itens="dataSubItem.data"
              :edicao="edicao"/>
          </td>
          <td>
            <cronograma-list-item
              :itens="dataSubItem.conteudos"
              :edicao="edicao"/>
          </td>
          <td>
            <cronograma-list-item
              :itens="dataSubItem.recursos"
              :edicao="edicao"/>
          </td>
          <td>
            <cronograma-list-item
              :itens="dataSubItem.metodologias"
              :edicao="edicao"/>
          </td>
          <td>
            <cronograma-list-item
              :itens="dataSubItem.avaliacao"
              :edicao="edicao"/>
          </td>
        </tr>
      </template>
      <!--end-->

      <!--region DEMAIS ITENS DO CRONOGRAMA-->
      <template v-for="(subItem, index3) in item.subItens.slice(1, item.subItens.length)">
        <tr :key="index3 + uid()">
          <td :rowspan="getRowSpan(subItem.datas)">
            <p v-for="habilidade in subItem.habilidades"
               :key="habilidade.id">
              {{ habilidade.nome }}
            </p>
          </td>
          <td>
            <p v-for="(data, indexData) in subItem.datas[0].data"
               :key="indexData">
              {{ data }}
            </p>
          </td>
          <td>
            <p v-for="(conteudo, indexConteudo) in subItem.datas[0].conteudos"
               :key="indexConteudo">
              {{ conteudo }}
            </p>
          </td>
          <td>
            <p v-for="(recurso, indexRecurso) in subItem.datas[0].recursos"
               :key="indexRecurso">
              {{ recurso }}
            </p>
          </td>
          <td>
            <p v-for="(metodologia, indexMetodologia) in subItem.datas[0].metodologias"
               :key="indexMetodologia">
              {{ metodologia }}
            </p>
          </td>
          <td>
            <p v-for="(avaliacao, indexAvaliacao) in subItem.datas[0].avaliacao"
               :key="indexAvaliacao"
               v-html="avaliacao"/>
          </td>
        </tr>

        <template v-for="(dataSubItem, index4) in subItem.datas.slice(1, subItem.datas.length)">
          <tr :key="index4 + uid()">
            <td>
              <p v-for="(data2, indexData2) in dataSubItem.data"
                 :key="indexData2">
                {{ data2 }}
              </p>
            </td>
            <td>
              <p v-for="(conteudo2, indexConteudo2) in dataSubItem.conteudos"
                 :key="indexConteudo2">
                {{ conteudo2 }}
              </p>
            </td>
            <td>
              <p v-for="(recurso2, indexRecurso2) in dataSubItem.recursos"
                 :key="indexRecurso2">
                {{ recurso2 }}
              </p>
            </td>
            <td>
              <p v-for="(metodologia2, indexMetodologia2) in dataSubItem.metodologias"
                 :key="indexMetodologia2">
                {{ metodologia2 }}
              </p>
            </td>
            <td>
              <p v-for="(avaliacao2, indexAvaliacao2) in dataSubItem.avaliacao"
                 :key="indexAvaliacao2"
                 v-html="avaliacao2"/>
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
