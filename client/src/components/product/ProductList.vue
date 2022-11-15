<template>
  <div class="container">
    <div class="row">
      <ProductItem
        v-for="product in products"
        :product_prop="product"
        :key="product.id"
      />
    </div>
  </div>
</template>
<script>
import store from "@/store";
import ProductItem from "./ProductItem.vue";
export default {
  components: { ProductItem },
  computed: {
    products() {
      return store.state.product.products;
    },
  },
  created() {
    store.dispatch("product/getAllProduct");
  },
};
</script>
