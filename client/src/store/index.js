import { createStore } from 'vuex'

import { authentication } from "./authentication.module";
import { todo } from "./todo.module";
import { product } from "./product.module";

const store = createStore({
  modules: {
    authentication,
    todo,
    product
  },
});

export default store;
