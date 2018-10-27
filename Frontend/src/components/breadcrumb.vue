<template>
  <div>
    <ul v-if="items.length > 0"
        class="d-inline-flex q-mb-md q-pl-sm"
        style="list-style: none">
      <li class="text-primary"
          style="cursor:pointer;"
          @click="onClick('/')">
        Início
      </li>
      <li class="q-mx-sm">
        <q-icon name="arrow_forward"/>
      </li>
      <template v-for="(item, index) in items">
        <li v-if="mustHaveDivider(index)"
            :key="index+'divider'"
            class="q-mx-sm">
          <q-icon name="arrow_forward"/>
        </li>
        <li :key="index"
            :style="item.path ? 'cursor : pointer;' : ''"
            :class="{'text-primary': item.path, 'text-grey-7': !item.path}"
            @click="onClick(item.path)">
          {{ item.title }}
        </li>
      </template>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'Breadcrumb',
  props: {
    items: {
      type: Array,
      default: () => []
    }
  },
  methods: {
    onClick (path) {
      this.$router.push(path);
    },
    mustHaveDivider (index) {
      return index > 0 && index <= this.items.length;
    }
  }
};
</script>

<style scoped>

</style>
