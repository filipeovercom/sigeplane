<template>
  <v-dialog v-model="isShowModal"
            :fullscreen="$vuetify.breakpoint.smAndDown"
            width="50vw"
            scrollable
            @keydown.esc="isShowModal = false">
    <v-card tile>
      <v-toolbar card
                 color="light">
        <v-toolbar-title>{{ title || 'Comentários' }}</v-toolbar-title>
      </v-toolbar>
      <v-card-text>
        <v-container :id="`${id}-msgContainer`"
                     grid-list-md>
          <q-chat-message
            v-for="(msg, index) in messages"
            :key="`avatar-${index}`"
            :label="msg.label"
            :sent="msg.sent"
            :text-color="msg.sent ? 'black' : 'white'"
            :bg-color="msg.sent ? 'light' : 'primary'"
            :name="msg.name"
            :text="msg.text"
            :stamp="msg.stamp"
          />
        </v-container>
      </v-card-text>
      <v-card-actions>
        <v-text-field
          v-model="newMessage"
          outline
          hide-details
          clearable
          height="80"
          label="Mensagem"
          type="text">
          <v-btn slot="append"
                 flat
                 icon
                 @click="$emit('onSaveNewMessage', newMessage)">
            <v-icon>send</v-icon>
          </v-btn>
        </v-text-field>
      </v-card-actions>
    </v-card>
  </v-dialog>
</template>

<script>
export default {
  name: 'ModalComentario',
  props: {
    id: {
      type: String,
      required: true
    },
    title: {
      type: String,
      default: () => ''
    },
    showModal: {
      type: Boolean,
      default: () => false
    },
    messages: {
      type: Array,
      default: () => []
    }
  },
  data () {
    return {
      newMessage: '',
      isShowModal: false
    };
  },
  watch: {
    showModal (value) {
      if (value) this.scrollModalMsgToEnd();
      this.isShowModal = value;
    },
    isShowModal (value) {
      if (value) {
        this.scrollModalMsgToEnd();
      } else {
        this.$emit('onHideModal', value);
      }
    }
  },
  created () {
    this.isShowModal = this.showModal;
  },
  methods: {
    scrollModalMsgToEnd () {
      const container     = document.getElementById(`${this.id}-msgContainer`).parentElement;
      container.scrollTop = container.scrollHeight;
    }
  }
};
</script>

<style lang="stylus">
  .q-message-text
    white-space normal
</style>
