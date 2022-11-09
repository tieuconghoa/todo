<template>
  <div class="container">
    <div class="row">
      <div class="col-6 d-flex">
        <div class="small-img-row col-3">
          <div class="small-img-col" v-for="img in product.imageUrl" :key="img">
            <img
              :src="img"
              alt=""
              width="100%"
              class="small-img"
              @click="changeImg"
            />
          </div>
        </div>
        <div class="col-9">
          <img :src="product.imageUrl[0]" alt="" width="100%" id="ProductImg" />
        </div>
      </div>
      <div class="col-6">
        <h1 class="text-left">{{ product.name }}</h1>
        <div class="h4 text-left">
          <span class="text-danger font-weight-bold">{{
            fomatCurrency(product.discount)
          }}</span>
          <span
            class="btn ml-1 font-weight-light"
            v-if="product.price != product.discount"
            ><del>{{ fomatCurrency(product.price) }}</del></span
          >
        </div>
        <div class="form-inline">
          <div class="form-check form-check-inline form-choose-size">
            <div class="size size-s">
              <input type="radio" id="swatch-s" name="size" value="S" />
              <label class="form-check-label" @click="changeSize" for="swatch-s"
                >S</label
              >
            </div>
            <div class="size size-m">
              <input type="radio" id="swatch-m" name="size" value="M" />
              <label class="form-check-label" @click="changeSize" for="swatch-m"
                >M</label
              >
            </div>
            <div class="size size-l">
              <input type="radio" id="swatch-l" name="size" value="L" />
              <label class="form-check-label" @click="changeSize" for="swatch-l"
                >L</label
              >
            </div>
            <div class="size size-xl">
              <input type="radio" id="swatch-xl" name="size" value="XL" />
              <label
                class="form-check-label"
                @click="changeSize"
                for="swatch-xl"
                >XL</label
              >
            </div>
          </div>
        </div>
        <div class="form-inline">
          <div class="input-group">
            <div class="input-group-prepend">
              <button
                class="btn btn-outline input-group-text"
                :disabled="count <= 1"
                @click="
                  () => {
                    count--;
                  }
                "
              >
                -
              </button>
            </div>
            <input
              type="text"
              class="form-control count-buy"
              v-model="count"
              maxlength="8"
            />
            <div class="input-group-prepend">
              <button
                class="btn btn-outline input-group-text"
                @click="
                  () => {
                    count++;
                  }
                "
              >
                +
              </button>
            </div>
          </div>
          <button class="btn btn-card col-4 offset-3" @click="addToCart">
            Thêm vào giỏ hàng
          </button>
        </div>

        <h3>Product Details</h3>
        <br />
        <p>
          {{ product.detail }}
        </p>
      </div>
    </div>
  </div>
</template>
<script>
import { store } from "@/store";
import { caculateSaleOff, fomatCurrency } from "@/commons";
export default {
  data: () => {
    return {
      count: 1,
    };
  },
  computed: {
    product() {
      return store.state.product.productDetail;
    },
  },
  methods: {
    addToCart() {
      let size = $(".sb").text();
      store.state.product.productCart.push(
        JSON.parse(JSON.stringify({
          product_id: this.$route.params.name,
          price : this.product.price,
          name : this.product.name,
          discount: this.product.discount,
          imageUrl: this.product.imageUrl[0],
          size: size,
          count: this.count,
        }))
      );
    },
    changeImg(event) {
      document.getElementById("ProductImg").src = event.target.src;
    },
    changeSize(event) {
      $(".form-check-label").removeClass("sb");
      event.target.classList.add("sb");
    },
  },
  created() {
    store.dispatch("product/getProductDetail", this.$route.params.name);
  },
};
</script>
<style>
.single-product {
  margin-top: 80px;
}

.single-product .col-2 img {
  padding: 0;
}

.single-product h4 {
  margin: 20px 0;
  font-size: 22px;
  font-weight: bold;
}

.single-product select {
  display: block;
  padding: 10px;
  margin-top: 20px;
}

input:focus {
  outline: none;
}

.small-img-col img {
  width: auto;
  height: 100px;
  margin: 0 0 10px 10px;
}

.btn-card {
  display: inline-block;
  background: #ff523b;
  color: #fff;
  margin: 30px 10px;
  transition: background 0.5s;
}
.form-choose-size input[type="radio"] {
  visibility: hidden;
}
.form-choose-size .form-check-label {
  min-width: 40px;
  border: 1px solid #e5e5e5;
  position: relative;
  line-height: 40px;
  cursor: pointer;
}
.form-choose-size .size {
  padding-left: 10px;
}
.form-choose-size .form-check-label.sb {
  background: #000;
  color: #fff;
}
.btn-subtract,
.btn-addition {
  background: #f5f5f5;
  border: 1px solid #f5f5f5;
}
.btn-subtract:visited,
.btn-addition:visited {
  outline: none;
}
.count-buy {
  width: 100px !important;
  text-align: center;
  font-weight: bold;
}
.count-buy:focus {
  border-color: 0;
  outline: none;
  box-shadow: 0 0 0 0;
}
.input-group-text {
  cursor: pointer;
  border-radius: 0;
}
</style>