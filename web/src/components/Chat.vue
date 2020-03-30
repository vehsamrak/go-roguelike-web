<template>
  <div id="chat">
    <p>Полоска чата</p>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator'

@Component
export default class Chat extends Vue {
  data() {
    return {}
  }
}
</script>

<style scoped>
  div#chat {
    display: block;
    position: absolute;
    background-color: #a7a7a7;
    color: #303030;
    bottom: 0;
    height: 8%;
    width: 100%;
  }
</style>
