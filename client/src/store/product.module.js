import Vue from "vue";
import Vuex from "vuex";
import { productService } from "../service/ProductService";
Vue.use(Vuex);

export const product = {
  namespaced: true,
  state: {
    products: null,
  },
  mutations: {
    getAllProduct(state, products) {
      state.products = products;
    },
  },
  actions: {
    getAllProduct({ commit }) {
        productService.getAllProduct().then((products) => {
          commit("getAllProduct", products.products);
        });
      },
  },
};
