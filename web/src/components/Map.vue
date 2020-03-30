<template>
  <div id="game">
    <div id="map">
      <div class="row" v-for="(row, i) in mapRows" :key="row">
        <div class="room" v-bind:style="{ 'background-image': 'url(/img/room-types/' + room.type + '.png)'}"
             v-bind:class="[{ 'room-center': i == 4 && j == 5 }, room.type]"
             v-for="(room, j) in row" :key="room">
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Prop, Vue } from 'vue-property-decorator'

@Component
export default class Map extends Vue {
  @Prop() private msg!: string;

  data() {
    const rowsCount = 9
    const cellsCount = 11
    const rows = []
    let i, j
    for (i = 0; i < rowsCount; i++) {
      const row = []
      for (j = 0; j < cellsCount; j++) {
        row.push({ type: 'grass' })
      }

      rows.push(row)
    }

    return {
      mapRows: rows
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  div#map {
    vertical-align: middle;
    display: block;
    position: absolute;
    height: 90%;
    width: 50%;
    background-image: url("/img/background-dungeon-small-1.jpg");
    left: 0;
    padding-top: 10px;
    line-height: normal;
  }

  div#map .room {
    display: inline-block;
    width: 50px;
    height: 50px;
    margin: 0 2px;
    padding: 0;
    border: solid black 2px;
  }

  div#map .row {
    margin: 0;
  }

  div#map .room.room-center {
    width: 54px;
    height: 54px;
    border: none;
    background-image: url("/img/room-types/character-male.png") !important;
  }
</style>
