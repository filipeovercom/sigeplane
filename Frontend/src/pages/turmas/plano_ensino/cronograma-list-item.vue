<template>
  <div class="animate-scale">
    <q-list no-border
            highlight>
      <q-item v-for="(item, index) in itens"
              :key="index"
              class="q-pa-xs">
        <q-item-main class="text-justify">
          {{ item.hasOwnProperty(itemLabel) ? item[itemLabel] : item }}
          <q-btn
            v-if="edicao"
            size="sm"
            icon="delete"
            color="negative"
            class="animate-scale"
            flat
            @click="onClickBtnRemoverItem(item)"/>
        </q-item-main>
      </q-item>
    </q-list>
  </div>
</template>

<script>
export default {
  name: 'CronogramaListItem',
  props: {
    itens: {
      type: Array,
      default: () => []
    },
    edicao: {
      type: Boolean,
      default: () => false
    },
    itemLabel: {
      type: String,
      default: () => ''
    },
    itemId: {
      type: String,
      default: () => ''
    },
    idEdicao: {
      type: String,
      default: () => ''
    }
  },
  methods: {
    onClickBtnRemoverItem (item) {
      this.$emit('removeItem', item);
    }
  }
};
</script>
