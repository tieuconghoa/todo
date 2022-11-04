<template>
  <div class="col-md-4 col-lg-3 col-sm-6 mb-5">
    <img width="300" height="400" class="img-fluid" :src="product.imageUrl" />
    <div class="product-name mt-2">{{ product.name }}</div>
    <div>
      <span class="text-danger font-weight-bold">{{
        fomatCurrency(product.discount)
      }}</span>
      <span
        class="ml-1 font-weight-light"
        v-if="product.price != product.discount"
        ><del>{{ fomatCurrency(product.price) }}</del></span
      >
      <span
        class="ml-1 text-muted font-weight-lighter btn-sm"
        v-if="product.price != product.discount"
        >{{ caculateSaleOff(product.price, product.discount) }}%
        OFF</span
      >
    </div>
    <div class="row" v-show="product.reviewCount > 0">
      <div class="col-6">
        <div class="star-rating">
          <div class="back-stars" :title="product.rate * 20 + '%'">
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>

            <div
              class="front-stars"
              :style="{ width: product.rate * 20 + '%' }"
            >
              <i class="fa fa-star" aria-hidden="true"></i>
              <i class="fa fa-star" aria-hidden="true"></i>
              <i class="fa fa-star" aria-hidden="true"></i>
              <i class="fa fa-star" aria-hidden="true"></i>
              <i class="fa fa-star" aria-hidden="true"></i>
            </div>
          </div>
        </div>
      </div>
      <div class="col-6 count-review text-right">
        {{ product.reviewCount }} review
      </div>
    </div>
  </div>
</template>
<script>
import {caculateSaleOff, fomatCurrency} from "@/commons";
export default {
  props: ["product_prop"],
  computed: {
    product() {
      return this.product_prop;
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