<template>
  <div id="game">
    <div id="map">
      <div class="row" v-for="(row, i) in mapRows" :key="row">
        <div class="room" v-bind:class="{ 'room-center': i == 4 && j == 4 }" v-for="(room, j) in row" :key="room">
          <!--<p>{{i + ',' + j}}</p>-->
        </div>
      </div>
    </div>
    <div id="buttons">buttons</div>
    <div id="character">character</div>
    <div id="info">info</div>
    <div id="chat">chat</div>
  </div>
</template>

<script lang="ts">
import {Component, Prop, Vue} from 'vue-property-decorator'

@Component
export default class HelloWorld extends Vue {
  @Prop() private msg!: string;
  data () {
    return {
      mapRows: [
        [{type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}],
        [{type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}],
        [{type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}],
        [{type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}],
        [{type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}],
        [{type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}],
        [{type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}],
        [{type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}],
        [{type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}, {type: '#'}]
      ]
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  div#map .room {
    display: inline-block;
    background-image: url("/img/room-types/grass.png");
    width: 50px;
    height: 50px;
    margin: 0 2px;
    padding: 0;
    border: solid black 2px;
  }

  div#map .room.room-center {
    width: 54px;
    height: 54px;
    border: none;
    background-image: url("/img/room-types/character-male.png");
  }

  div#map .row {
    margin: 0;
  }

  div#game {
    display: block;
    position: absolute;
    height: 95%;
    width: 100%;
    color: black;
  }

  div#map {
    display: block;
    position: absolute;
    height: 90%;
    width: 50%;
    background-image: url("/img/background-dungeon-small-1.jpg");
    left: 0;
    padding-top: 10px;
  }

  div#buttons {
    display: block;
    position: absolute;
    height: 60%;
    width: 25%;
    background-color: #95ffd0;
    left: 50%;
  }

  div#character {
    display: block;
    position: absolute;
    background-color: green;
    height: 60%;
    width: 25%;
    right: 0;
  }

  div#info {
    display: block;
    position: absolute;
    background-color: blue;
    bottom: 0;
    right: 0;
    height: 40%;
    width: 50%;
  }

  div#chat {
    display: block;
    position: absolute;
    background-color: darkgreen;
    bottom: 0;
    height: 10%;
    width: 100%;
  }
</style>
