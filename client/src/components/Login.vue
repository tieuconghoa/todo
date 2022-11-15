<template>
  <div class="container">
    <div class="h1">LOGIN</div>
    <form @submit.prevent="login">
      <div class="p-3 mb-2 bg-danger text-white" v-if="error">{{ error }}</div>
      <div class="form-group row">
        <label class="form-label col-4">Username: </label>
        <input
          v-model="username"
          class="form-control col-6"
          placeholder="username"
        />
      </div>
      <div class="form-group row">
        <label class="form-label col-4">Password: </label>
        <input
          v-model="password"
          placeholder="password"
          class="form-control col-6"
          type="password"
        />
      </div>
      <div class="mt-3">
        <button type="submit" class="btn btn-primary">Login</button>
      </div>
    </form>
  </div>
</template>
<script>
import store from "../store";
import { loginService } from "../service/LoginService";
export default {
  data: () => {
    return {
      username: "",
      password: "",
    };
  },
  computed : {
    error() {
      return store.state.authentication.error;
    },
  },
  methods: {
    async login() {
      loginService
        .login(this.username, this.password)
        .then((response) => {
          if (response && response.token) {
            const { user, token } = response;
            store.commit("setUser", user);
            store.commit("setToken", token);
            this.$router.push("/product");
          } else {
            store.dispatch("loginFail", "User not exist or wrong password!")
          }
        })
        .catch((err) =>
          store.dispatch("loginFail", "User not exist or wrong password!")
        );
    },
  },
};
</script>