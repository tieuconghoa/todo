<template>
  <div class="col-md-4 col-lg-3 col-sm-6 mb-5 product-item">
    <img @click="viewDetail"  height="400" class="mw-100" :src="product.imageUrl" />
    <div class="sale-off" v-if="caculateSaleOff(product.price, product.discount) > 0">{{ caculateSaleOff(product.price, product.discount) }}%</div>
    <div class="product-name mt-2 font-weight-bold">{{ product.name }}</div>
    <div>
      <span class="text-danger font-weight-bold">{{
        fomatCurrency(product.discount)
      }}</span>
      <span
        class="ml-1 font-weight-light btn-sm"
        v-if="product.price != product.discount"
        ><del>{{ fomatCurrency(product.price) }}</del></span
      >
    </div>
  </div>
</template>
<script>
import { caculateSaleOff, fomatCurrency } from "@/commons";
export default {
  props: ["product_prop"],
  computed: {
    product() {
      return this.product_prop;
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

.product-item img {
  cursor: pointer;
}
.sale-off {
  position: absolute;
  top: 10px;
  left: 20px;
  background: #fff;
  color: red;
  padding: 2px 6px;
  text-align: center;
  font-size: 12px;
  font-weight: bold;
}
</style>