import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

export const authentication = {
  state: {
    user: null,
    token: null,
  },
  mutations: {
    setUser(state, user) {
      state.user = user;
    },
    setToken(state, token) {
      state.token = token;
    },
  },
  actions: {},
  getters: {
    isLoggedIn(state) {
      return !!state.token;
    },
    getToken(state) {
      return state?.token;
    },
    getUser(state) {
      return state?.user;
    }
  },
};