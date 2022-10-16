<template>
  <div>
    <div class="h1">Todo List</div>
    <div class="h5">
      Số lượng todo: <span class="btn btn-info">{{ todos ? todos.length :'0' }}</span>
    </div>
    <div class="clearfix mb-3">
      <button class="btn btn-success pull-righ" data-toggle="modal" data-target="#todoCreateModal">
        Add Todo
      </button>
    </div>
    <div class="container">
      <table class="table table-bordered table-striped table-hover">
        <thead>
          <tr>
            <th>ID</th>
            <th class="w-75">Nội dung</th>
            <th>Trạng thái</th>
            <th>Hành động</th>
          </tr>
        </thead>
        <tbody>
          <todo-row v-for="todo in todos" :todo_prop="todo" :key="todo.id"></todo-row>
        </tbody>
      </table>
    </div>
    <todo-create @add-todo="addTodo"></todo-create>
  </div>
</template>
<script>
import { store } from "@/store";
import TodoRow from "./TodoRow.vue";
import TodoCreate from "./TodoCreate.vue";
export default {
  components: { TodoRow, TodoCreate },
  computed: {
    todo() {
      return store.state.todo.todo;
    },
    todos() {
      return store.state.todo.todos;
    },
  },
  created() {
    store.dispatch("todo/getAll");
  },
  methods: {
    addTodo(data) {
      store.dispatch("todo/createTodo", data);
    }
  }
};
</script>
<style>
table {
  table-layout: fixed;
  width: 100%;
}

table td {
  word-wrap: break-word;
  /* All browsers since IE 5.5+ */
  overflow-wrap: break-word;
  /* Renamed property in CSS3 draft spec */
}
</style>