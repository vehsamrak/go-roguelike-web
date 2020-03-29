<template>
  <div id="app">
    <div id="nav">
      <router-link to="/">Игра</router-link> |
      <router-link to="/about">Информация</router-link>
    </div>
    <router-view/>
  </div>
</template>

<style>
body {
  margin: 0;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #d9d7d5;
  background-color: #848484;
  margin: 0;
  position: absolute; top: 0; right: 0; bottom: 0; left: 0;
}

#nav {
  width: 100%;
  height: 5%;
}

#nav a {
  font-weight: bold;
  color: #383838;
}

#nav a.router-link-exact-active {
  color: #dddddd;
}
</style>
