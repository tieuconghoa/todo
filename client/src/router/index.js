import Vue from "vue";
import VueRouter from "vue-router";
import Login from "@/components/Login.vue";
import Welcome from "@/components/Welcome.vue";
import HelloWorld from "@/components/HelloWorld.vue";
import Todo from "@/components/todo/Todo.vue";
import { store } from "../store";

Vue.use(VueRouter);
const routes = [
  {
    path: "/",
    name: "Welcom",
    component: Welcome,
  },
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
];
const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

router.beforeEach((to, from, next) => {
  // redirect to login page if not logged in and trying to access a restricted page
  const publicPages = ["/login", "/"];
  const authRequired = !publicPages.includes(to.path);
  const loggedIn = store.state.authentication.token;

  if (authRequired && !loggedIn) {
    return next("/login");
  }
  next();
});

export default router;
