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
    },
    addShoppingCart(state, productCart) {
      state.productCart.push(productCart);
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
    getProductDetail({ commit }, productId) {
      productService.getProductDetail(productId).then((product) => {
        commit("getProductDetail", product);
      });
    },
    deleteItemShoppingCart({commit}, shoppingCart) {
      for (let i = 0; i < product.state.productCart.length; i++) {
          product.state.productCart = product.state.productCart.filter((item) => {
              return !(item.product_id == shoppingCart.product_id && item.size == shoppingCart.product_size)
          })
      }
    },
    addItemShoppingCart({ commit }, shoppingCart) {
      let duplicate = false;
      for (let i = 0; i < product.state.productCart.length; i++) {
        if (
          product.state.productCart[i].product_id == shoppingCart.product_id &&
          product.state.productCart[i].size == shoppingCart.size
        ) {
          product.state.productCart[i].count += shoppingCart.count;
          duplicate = true;
          break;
        }
      }

      if (product.state.productCart.length == 0 || !duplicate) {
        commit("addShoppingCart", shoppingCart);
      }
    },
  },
};
