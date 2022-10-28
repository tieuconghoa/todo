<template>
  <div class="col-3">
    <img width="300" height="400" class="img-fluid" :src="product.imageUrl" />
    <div>{{ product.name }}</div>
    <div>
      <span class="text-danger font-weight-bold">{{
        this.fomatCurrency(product.discount)
      }}</span>
      <span class="ml-1 font-weight-light"
        ><del>{{ this.fomatCurrency(product.price) }}</del></span
      >
      <span class="ml-1 text-muted"
        >{{ this.caculateSaleOff(product.price, product.discount) }}% OFF</span
      >
    </div>
    <div class="row">
      <div class="col-6">
        <div class="star-rating">
          <div class="back-stars" :title="product.rating*20 + '%'">
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>

            <div class="front-stars" :style="{ width: product.rating*20 + '%' }">
              <i class="fa fa-star" aria-hidden="true"></i>
              <i class="fa fa-star" aria-hidden="true"></i>
              <i class="fa fa-star" aria-hidden="true"></i>
              <i class="fa fa-star" aria-hidden="true"></i>
              <i class="fa fa-star" aria-hidden="true"></i>
            </div>
          </div>
        </div>
      </div>
      <div class="col-6 count-review text-right">{{ product.reviewCount }} review</div>
    </div>
  </div>
</template>
<script>
export default {
  props: ["product_prop"],
  computed: {
    product() {
      return this.product_prop;
    },
  },
  methods: {
    caculateSaleOff(price, discount) {
      let num = (price - discount) / price;
      return Math.round(num * 100);
    },
    fomatCurrency(number) {
      number = number.toLocaleString("en-US", {
        style: "currency",
        currency: "VND",
      });
      return number;
    },
  },
};
</script>
<style scoped>
.star-rating, .count-review {
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