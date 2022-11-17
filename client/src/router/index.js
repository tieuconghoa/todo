import {createRouter, createWebHistory } from "vue-router";
import Login from "@/components/Login.vue";
import HelloWorld from "@/components/HelloWorld.vue";
import Todo from "@/components/todo/Todo.vue";
import ProductList from "@/components/product/ProductList.vue";
import ProductDetail from "@/components/product/ProductDetail.vue";
import ProductCart from "@/components/product/ProductCart.vue";
import Dashboard from "@/components/admin/Dashboard.vue";
import store from "../store";

const routes = [
  // {
  //   path: "/",
  //   name: "Welcome",
  //   component: Welcome,
  // },
  {
    path: "/login",
    name: "Login",
    component: Login,
  },
  {
    path: "/hello",
    name: "Hello",
    component: HelloWorld,
  },
  {
    path: "/todo",
    name: "Todo",
    component: Todo,
  },
  {
    path: "/",
    name: "Home",
    component: ProductList,
  },
  {
    path: "/product",
    name: "Product",
    component: ProductList,
  },
  {
    path: "/product/:name",
    name: "Detail",
    component: ProductDetail,
  },
  {
    path: "/cart",
    name: "ProductCart",
    component: ProductCart,
  },
  {
    path: "/admin",
    name: "Dashboard",
    component: Dashboard,
  },
];
const router = createRouter({
  history: createWebHistory(),
  base: process.env.BASE_URL,
  routes,
});

router.beforeEach((to, from, next) => {
  // redirect to login page if not logged in and trying to access a restricted page
  const publicPages = ["/login", "/", "/product", "/cart"];
  const authRequired = !publicPages.includes(to.path) && "Detail" !== to.name;
  const loggedIn = store.state.authentication.token;

  if (authRequired && !loggedIn) {
    return next("/login");
  }
  next();
});

export default router;
