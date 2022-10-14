<script>
export default {
  props: ["todo_prop"],
  data: function () {
    return {
      content: this.todo_prop.content,
      status: this.todo_prop.status == "doing" ? 0 : 1,
    };
  },
  methods: {
    editTodo: function () {
      this.$emit("edit-todo", {
        id: this.todo_prop.id,
        content: this.content,
        status: this.status,
      });
      this.$refs.anyName.reset();
      $(".close").click();
    },
  },
};
</script>
<template>
  <div
    class="modal fade"
    :id="'todoEditModal' + this.todo_prop.id"
    tabindex="-1"
    role="dialog"
    aria-labelledby="todoEditModalLabel"
    aria-hidden="true"
  >
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="h1">Edit Todo</h1>
          <button
            type="button"
            class="close"
            data-dismiss="modal"
            aria-label="Close"
          >
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form class="bg-light p-4 m-4" ref="anyName">
            <div class="form-group row">
              <label for="name" class="col-sm-4 col-form-label">Nội dung</label>

              <textarea
                type="text"
                class="form-control col-sm-6"
                id="content"
                placeholder="Nội dung"
                autofocus
                v-model="content"
                required
              />
            </div>
            <div class="form-group row">
              <label for="status" class="col-sm-4 col-form-label">Status</label>
              <select
                class="form-control col-sm-6"
                id="status"
                placeholder="Status"
                v-model="status"
                required
              >
                <option selected value="0">Doing</option>
                <option value="1">Done</option>
              </select>
            </div>
            <button
              type="button"
              class="mt-4 btn btn-primary"
              @click="editTodo"
            >
              Edit Todo
            </button>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>

  



