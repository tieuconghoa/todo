<template>
  <div class="container">
    <div class="h1">LOGIN</div>
    <form @submit.prevent="login" >
      <div class="form-group row">
        <label class="form-label col-4">Username: </label>
        <input v-model="username" class="form-control col-6" placeholder="username" />
      </div>
      <div class="form-group row">
        <label class="form-label col-4">Password: </label>
        <input v-model="password" placeholder="password" class="form-control col-6" type="password" />
      </div>
      <div class="mt-3">
        <button type="submit" class="btn btn-primary">Login</button>
      </div>
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