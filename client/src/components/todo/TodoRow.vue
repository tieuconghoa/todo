<script>
import { store } from "@/store";
export default {
  props: ["todo_prop"],
  methods: {
    editTodo() {
      this.todo_prop.status = 1 - this.todo_prop.status;
      store.dispatch("todo/updateTodo", this.todo_prop);
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
    <td v-if="this.todo_prop.status == '1'"><s>{{ this.todo_prop.content }}</s></td>
    <td v-if="this.todo_prop.status == '0'">{{ this.todo_prop.content }}</td>
    <td>
      <div :class="this.todo_prop.status == '1' ? 'btn  btn-success' : 'btn btn-info'"
          @click="editTodo">
        {{ this.todo_prop.status == '0' ? 'doing' : 'done' }}
      </div>
    </td>
    <td>
      <button class="btn btn-danger" @click="deleteTodo">Delete</button>
    </td>
  </tr>
</template>

