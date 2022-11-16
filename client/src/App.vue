<template>
    <Header v-show="this.$route.name != 'Welcome' && this.$route.name != 'Login' && !$route.fullPath.includes('admin')" />
    <AdminHeader v-show="this.$route.name != 'Welcome' && this.$route.name != 'Login' && $route.fullPath.includes('admin')" />
      <router-view :key="$route.fullPath"></router-view>
    <Footer v-show="this.$route.name != 'Welcome' && this.$route.name != 'Login' && !$route.fullPath.includes('admin')"/>
</template>
<script>
import Header from "@/components/Header.vue";
import Footer from "@/components/Footer.vue";
import AdminHeader from "@/components/admin/AdminHeader.vue"
export default {
  components: { Header, Footer, AdminHeader },
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
