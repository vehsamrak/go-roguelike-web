<template>
  <div class="home">
    <div id="game">
      <Map/>
      <Chat/>
      <Info/>
      <Character/>
      <Buttons/>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
import Map from '@/components/Map.vue'
import Character from '@/components/Character.vue'
import Buttons from '@/components/Buttons.vue'
import Info from '@/components/Info.vue'
import Chat from '@/components/Chat.vue'

export default {
  name: 'Home',
  components: {
    Map,
    Character,
    Buttons,
    Info,
    Chat
  }
}
</script>

<style scoped>
  div#game {
    display: block;
    position: absolute;
    height: 95%;
    width: 100%;
    color: black;
    line-height: 100%;
    text-align: center;
  }
</style>
