<template>
  <div class="col-md-4 col-lg-3 col-sm-6 mb-5 product-item">
    <img
      @click="viewDetail"
      height="400"
      class="mw-100"
      :src="product.image_url"
    />
    <div
      class="sale-off"
      v-if="commons.caculateSaleOff(product.price, product.discount) > 0"
    >
      {{ commons.caculateSaleOff(product.price, product.discount) }}%
    </div>
    <div class="product-name mt-2 font-weight-bold">{{ product.name }}</div>
    <div>
      <span class="text-danger font-weight-bold">{{
        commons.fomatCurrency(product.discount)
      }}</span>
      <span
        class="ml-1 font-weight-light btn-sm"
        v-if="product.price != product.discount"
        ><del>{{ commons.fomatCurrency(product.price) }}</del></span
      >
    </div>
  </div>
</template>
<script>
import { commons } from "@/commons";
export default {
  props: ["product_prop"],
  computed: {
    product() {
      return this.product_prop;
    },
    commons() {
      return commons;
    },
  },
  methods: {
    viewDetail() {
      this.$router.push(`/product/${this.product_prop.id}`);
    },
  },
};
</script>
<style scoped>
.star-rating,
.count-review {
  display: flex;
  align-items: center;
  font-size: 1em;
  justify-content: center;
  margin-top: 20px;
}
.back-stars {
  display: flex;
  color: #000;
  position: relative;
}
.front-stars {
  display: flex;
  color: #ffbc0b;
  overflow: hidden;
  position: absolute;
  top: 0;
  transition: all 0.5s;
}
</style>