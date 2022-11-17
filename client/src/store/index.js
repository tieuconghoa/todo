import { createStore } from 'vuex'

import { authentication } from "./authentication.module";
import { todo } from "./todo.module";
import { product } from "./product.module";
import { order } from './order.module';

const store = createStore({
  modules: {
    authentication,
    todo,
    product,
    order
  },
});

export default store;
