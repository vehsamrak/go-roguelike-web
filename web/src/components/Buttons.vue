<template>
  <div id="buttons">
    <h1>Кнопки управления</h1>
    <p>Умения, заклинания, перемещение</p>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator'

@Component
export default class Buttons extends Vue {
  data() {
    return {}
  }
}
</script>

<style scoped>
  div#buttons {
    display: block;
    position: absolute;
    height: 55%;
    width: 25%;
    background-color: #5d5d5d;
    left: 50%;
  }
</style>
