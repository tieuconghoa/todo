<template>
  <div>
    <h1>LOGIN</h1>
    <form @submit.prevent="login">
      <input v-model="username" placeholder="username" />
      <br />
      <br />
      <input v-model="password" placeholder="password" type="password" />
      <br />
      <br />
      <button type="submit">Login</button>
    </form>
  </div>
</template>
<script>
import { store } from "../store";
import { loginService } from "../service/LoginService";
export default {
  data: () => {
    return {
      username: "",
      password: "",
    };
  },
  methods: {
    async login() {
      loginService
        .login(this.username, this.password)
        .then((response) => {
          if (response) {
            const { user, token } = response;
            store.commit("setUser", user);
            store.commit("setToken", token);
            this.$router.push("/todo");
          }
        })
        .catch((err) => console.error(err));
    },
  },
};
</script>