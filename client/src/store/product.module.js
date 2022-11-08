import Vue from "vue";
import Vuex from "vuex";
import { productService } from "../service/ProductService";
Vue.use(Vuex);

export const product = {
  namespaced: true,
  state: {
    products: null,
    productSearch: null,
    productCart: null
  },
  mutations: {
    getAllProduct(state, products) {
      state.products = products;
    },
    getProductByName(state, products) {
      state.productSearch = products;
    },
  },
  actions: {
    getAllProduct({ commit }) {
      productService.getAllProduct().then((products) => {
        commit("getAllProduct", products.products);
      });
    },
    getProductByName({ commit }, productReq) {
      productService.searchByProductName(productReq).then((products) => {
        commit("getProductByName", products);
      });
    },
  },
};
