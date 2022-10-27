import Vue from "vue";
import Vuex from "vuex";

import { authentication } from "./authentication.module";
import { todo } from "./todo.module";
import { product } from "./product.module";

Vue.use(Vuex);

export const store = new Vuex.Store({
  modules: {
    authentication,
    todo,
    product
  },
});
