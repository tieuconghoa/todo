<template>
  <div class="container">
    <div class="h1">Todo List</div>
    <div class="h5">
      Todo Count:
      <span class="btn btn-info">{{ todos ? todos.length : "0" }}</span>
    </div>
    <div class="clearfix mb-3">
      <div class="form-group row justify-content-center">
        <input
          class="form-control col-offset-2 col-sm-6"
          type="text"
          name="content"
          v-model="content"
          id="content"
          required
        />
        <button
          type="submit"
          @click="addTodo"
          :disabled="!this.content"
          class="btn btn-primary ml-3"
        >
          Add
        </button>
      </div>
      <div class="form-group row">
        <label for="dateSelect" class="col-sm-4"> Date Show: </label>
        <input
          class="form-control col-sm-4"
          type="date"
          @change="changeDate"
          v-model="dateSelect"
        />
      </div>
    </div>
    <hr />

    <div class="row justify-content-center mt-2">
      <todo-row
        v-for="todo in todos"
        :todo_prop="todo"
        :key="todo.id"
        :date_prop="dateSelect"
      ></todo-row>
    </div>
  </div>
</template>
<script>
import { store } from "@/store";
import TodoRow from "./TodoRow.vue";
export default {
  data: function () {
    return {
      content: null,
      status: "0",
      dateSelect: null,
    };
  },
  components: { TodoRow },
  computed: {
    todo() {
      return store.state.todo.todo;
    },
    todos() {
      return store.state.todo.todos;
    },
  },
  created() {
    this.getDate();
    const data = { dateChange: this.dateSelect };
    store.dispatch("todo/changeDate", data);
  },
  methods: {
    addTodo() {
      const data = { content: this.content, status: this.status };
      store.dispatch("todo/createTodo", data);
    },
    changeDate() {
      const data = { dateChange: this.dateSelect };
      store.dispatch("todo/changeDate", data);
    },
    getDate() {
      const today = new Date();
      const date =
        today.getFullYear() +
        "-" +
        (today.getMonth() + 1) +
        "-" +
        (today.getDate() - 1);
      this.dateSelect = date;
    },
  },
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