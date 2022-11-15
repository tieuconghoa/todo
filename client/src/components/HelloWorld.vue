<template>
  <div>
    <h1>{{ content }}</h1>
  </div>
</template>
<script>
import store from "../store";
export default {
  data: () => {
    return {
      content: null,
    };
  },
  async created() {
    const response = await fetch("http://localhost/hello", {
      method: "GET",
      headers: {
        Authorization: `Bearer ${store.getters.getToken}`,
      },
    });
    const { message } = await response.json();
    this.content = message;
  },
};
</script>