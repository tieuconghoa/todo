<script>
import store from "@/store";
export default {
  props: ["todo_prop", "date_prop"],
  computed: {
    todo() {
      return this.todo_prop;
    },
    dateSelect() {
      return this.date_prop;
    },
  },
  methods: {
    updateTodo() {
      this.todo.status = 1 - this.todo.status;
      this.todo.dateChange = this.dateSelect;
      store.dispatch("todo/updateTodo", this.todo);
    },
    deleteTodo() {
      this.todo.dateChange = this.dateSelect;
      store.dispatch("todo/deleteTodo", this.todo);
    },
  },
};
</script>
<template>
  <div class="w-75 row mt-1">
    <div class="col-sm-2">
      <span>{{ todo.id }}</span>
    </div>
    <div class="col-sm-8">
      <s v-if="todo.status == '1'">{{ todo.content }}</s>
      <u v-if="todo.status == '0'">{{ todo.content }}</u>
    </div>
    <button
      v-if="todo.status == '0'"
      type="button"
      class="btn btn-outline-success ml-3"
      @click="updateTodo"
    >
      &#10003;
    </button>
    <button
      type="button"
      class="btn btn-outline-danger ml-3"
      @click="deleteTodo"
    >
      x
    </button>
  </div>
</template>

