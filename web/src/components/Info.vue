<template>
  <div id="info">
    <h1>Информация</h1>
    <p>Лог игровых событий</p>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator'

@Component
export default class Info extends Vue {
  data() {
    return {}
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  div#info {
    display: block;
    position: absolute;
    background-color: #b5b5b5;
    bottom: 8%;
    right: 0;
    height: 32%;
    width: 50%;
    color: #313131;
  }
</style>
