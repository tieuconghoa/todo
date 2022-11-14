<template>
  <div id="app">
    <Header v-show="this.$route.name != 'Welcome' && this.$route.name != 'Login'"/>
      <router-view :key="$route.fullPath"></router-view>
    <Footer v-show="this.$route.name != 'Welcome' && this.$route.name != 'Login'"/>
  </div>
</template>
<script>
import Header from "@/components/Header.vue";
import Footer from "@/components/Footer.vue";
export default {
  components: { Header, Footer },
  methods : {
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
