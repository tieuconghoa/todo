import { productService } from "../service/ProductService";

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
    setShoppingCart(state, productCart) {
      state.productCart = productCart;
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
    deleteItemShoppingCart({commit}, shoppingCart) {
      var productCart;
      for (let i = 0; i < product.state.productCart.length; i++) {
          productCart = product.state.productCart.filter((item) => {
              return !(item.product_id == shoppingCart.product_id && item.size == shoppingCart.product_size)
          })
      }
      commit("setShoppingCart", productCart);
    },
    addItemShoppingCart({ commit }, shoppingCart) {
      let duplicate = false;
      for (let i = 0; i < product.state.productCart.length; i++) {
        if (
          product.state.productCart[i].product_id == shoppingCart.product_id &&
          product.state.productCart[i].size == shoppingCart.size
        ) {
          product.state.productCart[i].count += parseInt(shoppingCart.count);
          duplicate = true;
          break;
        }
      }

      if (product.state.productCart.length == 0 || !duplicate) {
        commit("addShoppingCart", shoppingCart);
      } else {
        commit("setShoppingCart", product.state.productCart);
      }
    },
  },
};
