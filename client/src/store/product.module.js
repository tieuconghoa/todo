import Vue from "vue";
import Vuex from "vuex";
import { productService } from "../service/ProductService";
Vue.use(Vuex);

export const product = {
  namespaced: true,
  state: {
    products: null,
    productSearch: null,
    productCart: [],
    productDetail: null,
  },
  mutations: {
    getAllProduct(state, products) {
      state.products = products;
    },
    getProductByName(state, products) {
      state.productSearch = products;
    },
    getProductDetail(state, product) {
      state.productDetail = product;
    }
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
    getProductDetail({ commit }, productId) {
      productService.getProductDetail(productId).then((product) => {
        commit("getProductDetail", product);
      });
    },
  },
};
