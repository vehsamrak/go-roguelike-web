<template>
  <div id="character">
    <h1>Игрок <small>[10]</small></h1>
    <p>Основные характеристики</p>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator'

@Component
export default class Character extends Vue {
  data() {
    return {}
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  div#character {
    display: block;
    position: absolute;
    background-color: #3d3d3d;
    height: 55%;
    width: 25%;
    right: 0;
  }
</style>
