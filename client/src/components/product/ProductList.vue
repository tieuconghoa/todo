<template>
  <div>
    <ProductDetail
      v-for="product in products"
      :product_prop="product"
      :key="product.id"
    />
  </div>
</template>
<script>
import { store } from "@/store";
import ProductDetail from "./ProductDetail.vue";
export default {
  components: { ProductDetail },
  computed: {
    products() {
      return store.state.product.products;
    },
    created() {
      store.dispatch("product/getAllProduct");
    },
  },
};
</script>
