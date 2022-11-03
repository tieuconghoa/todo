<template>
  <div id="app">
    <Header v-show="this.$route.name != 'Welcome' && this.$route.name != 'Login'"/>
    <router-view />
  </div>
</template>
<script>
import Header from "@/components/Header.vue";
export default {
  components: { Header },
  methods : {
    // scrollBar() {
    //  console.log("aaa");
    // }
  }
};
</script>
<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
.modal-open {
  padding-right: 420px !important;
  transition: all 1s;
}
</style>
