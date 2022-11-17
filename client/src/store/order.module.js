import { orderService } from "../service/OrderService";

export const order = {
  namespaced: true,
  state: {
    lastestOrder: [],
    allOrder : [],
  },
  mutations: {
    setLastestOrder(state, order) {
      state.lastestOrder = [...order];
    },
    setAllOrder(state, order) {
      state.allOrder = [...order];
    },
  },
  actions: {
    getLastestOrder({ commit }) {
      orderService.getLastestOrder().then((lastestOrderList) => {
        commit("setLastestOrder", lastestOrderList);
      });
    },
    getAllOrder({ commit }) {
      orderService.getAllOrder().then((allOrderList) => {
        commit("setAllOrder", allOrderList);
      });
    },
  },
};
