<script>
import TodoEdit from "./TodoEdit.vue";
import { store } from "../store";
export default {
  components: { TodoEdit },
  props: ["todo_prop"],
  methods : {
    editTodo(data) {
        store.dispatch("todo/updateTodo", data);
    },
    deleteTodo() {
        store.dispatch("todo/deleteTodo", this.todo_prop);
    }
  }
};
</script>
<template>
  <tr>
    <td>{{ this.todo_prop.id }}</td>
    <td>{{ this.todo_prop.content }}</td>
    <td>{{ this.todo_prop.status }}</td>
    <td>
      <button
        class="btn btn-primary"
        data-toggle="modal"
        :data-target="'#todoEditModal' + this.todo_prop.id"
      >
        Edit
      </button>
      <span class="mr-2"></span>
      <button class="btn btn-danger" @click="deleteTodo">Delete</button>
    </td>
    <todo-edit :todo_prop="this.todo_prop" @edit-todo="editTodo"></todo-edit>
  </tr>
</template>

