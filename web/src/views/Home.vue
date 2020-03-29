<template>
  <div class="home">
    <Map msg="Welcome to Your Vue.js App"/>
  </div>
</template>

<script>
// @ is an alias to /src
import Map from '@/components/Map.vue'

export default {
  name: 'Home',
  components: {
    Map
  }
}
</script>
