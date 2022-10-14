import Vue from "vue";
import Vuex from "vuex";
import { todoService } from "../service/TodoService";
Vue.use(Vuex);

export const todo = {
  namespaced: true,
  state: {
    todos: null
  },
  mutations: {
    getAllTodo(state, todos) {
      state.todos = todos;
    },
    getOneTodo(state, todo) {
      state.todo = todo;
    },
  },
  actions : {
    getAll({ commit }) {
      todoService.getAll().then((todos) => {
        commit("getAllTodo", todos)
      });
    },
    getOne({ commit }, id) {
      todoService.getOne(id).then((todo) => commit("getOneTodo", todo));
    },
    createTodo({commit}, todo){
      todoService.createTodo(todo).then((todos) => commit("getAllTodo", todos));
    },
    updateTodo({commit}, todo){
      todoService.updateTodo(todo).then((todos) => commit("getAllTodo", todos));
    },
    deleteTodo({commit}, todo){
      todoService.deleteTodo(todo).then((todos) => commit("getAllTodo", todos));
    }
  },
  getters: {},
};
