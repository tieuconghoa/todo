export const authentication = {
  state: {
    user: null,
    token: null,
    error: null
  },
  mutations: {
    setUser(state, user) {
      state.user = user;
    },
    setToken(state, token) {
      state.token = token;
    },
    setErrorMessage(state, error) {
      state.error = error;
    },
  },
  actions: {
    loginFail({commit}, message) {
      commit("setErrorMessage", message)
    }
  },
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