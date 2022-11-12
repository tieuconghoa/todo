<template>
  <div class="">
    <div class="row mx-0">
      <div class="col-md-6 col-xs-12 d-flex">
        <div class="small-img-row col-3">
          <div class="small-img-col" v-for="img in product.imageUrlList" :key="img">
            <img :src="img" alt="" width="100%" class="small-img" @click="changeImg" />
          </div>
        </div>
        <div class="col-9">
          <vue-image-zoomer :regular="urlZoom == '' ? product.imageUrl : urlZoom"
            :zoom="urlZoom == '' ? product.imageUrl : urlZoom" :zoom-amount="3" img-class="img-fluid">
          </vue-image-zoomer>
        </div>
      </div>
      <div class="col-md-6 col-xs-12">
        <h1 class="text-left">{{ product.name }}</h1>
        <div class="h4 text-left">
          <span class="text-danger font-weight-bold">{{
              fomatCurrency(product.discount)
          }}</span>
          <span class="btn ml-1 font-weight-light" v-if="product.price != product.discount"><del>{{
              fomatCurrency(product.price)
          }}</del></span>
        </div>
        <div class="form-inline">
          <div class="form-check form-check-inline form-choose-size">
            <div class="size size-s">
              <input type="radio" id="swatch-s" name="size" value="S" checked />
              <label class="form-check-label sb" @click="changeSize" for="swatch-s">S</label>
            </div>
            <div class="size size-m">
              <input type="radio" id="swatch-m" name="size" value="M" />
              <label class="form-check-label" @click="changeSize" for="swatch-m">M</label>
            </div>
            <div class="size size-l">
              <input type="radio" id="swatch-l" name="size" value="L" />
              <label class="form-check-label" @click="changeSize" for="swatch-l">L</label>
            </div>
            <div class="size size-xl">
              <input type="radio" id="swatch-xl" name="size" value="XL" />
              <label class="form-check-label" @click="changeSize" for="swatch-xl">XL</label>
            </div>
          </div>
        </div>
        <div class="form-inline">
          <div class="input-group">
            <div class="input-group-prepend">
              <button class="btn btn-outline input-group-text" :disabled="count <= 1" @click="
                () => {
                  count--;
                }
              ">
                -
              </button>
            </div>
            <input type="text" class="form-control count-buy" v-model="count" maxlength="8" />
            <div class="input-group-prepend">
              <button class="btn btn-outline input-group-text" @click="
                () => {
                  count++;
                }
              ">
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
    <div>
      <div class="h3 mt-5 relate-product"><span>CÁC SẢN PHẨM TƯƠNG TỰ</span></div>
      <div class="text-center my-3 mt-5">
        <div id="carouselExampleControls" class="carousel" data-bs-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item" :class="item.id == products[0].id ? 'active' : ''" v-for="item in products"
              :key="item.id">
              <div class="px-2">
                <div class="img-fluid product-item" @click="viewDetail(item.id)"><img :src="item.imageUrl" class="d-block w-100" alt="..."> </div>
                <div class="sale-off" v-if="caculateSaleOff(product.price, product.discount) > 0">{{
                    caculateSaleOff(product.price, product.discount)
                }}%</div>
                <div class="product-name mt-2 font-weight-bold">{{ product.name }}</div>
                <div>
                  <span class="text-danger font-weight-bold">{{
                      fomatCurrency(product.discount)
                  }}</span>
                  <span class="ml-1 font-weight-light btn-sm" v-if="product.price != product.discount"><del>{{
                      fomatCurrency(product.price)
                  }}</del></span>
                </div>
              </div>
            </div>
          </div>
          <a class="carousel-control-prev" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" data-bs-target="#carouselExampleControls" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>

    </div>
  </div>
</template>
<script>
import { store } from "@/store";
import vueImageZoomer from "vue-image-zoomer";
import ProductItem from "./ProductItem.vue";
import { caculateSaleOff, fomatCurrency } from "@/commons";
export default {
  data: () => {
    return {
      count: 1,
      urlZoom: "",
    };
  },
  components: {
    vueImageZoomer,
    ProductItem
  },
  computed: {
    products: function () {
      return store.state.product.products?.filter(item => { return item.category == store.state.product.productDetail?.category && item.id != store.state.product?.productDetail.id }) || [];
    },
    product: function () {
      return store.state.product?.productDetail || [];
    },
  },
  methods: {
    addToCart() {
      let size = $(".sb").text();
      store.dispatch("product/addItemShoppingCart", (
        JSON.parse(
          JSON.stringify({
            product_id: this.$route.params.name,
            price: this.product.price,
            name: this.product.name,
            discount: this.product.discount,
            imageUrl: this.product.imageUrl,
            size: size,
            count: this.count,
          })
        )
      ));
    },
    changeImg(event) {
      $(".small-img").removeClass("active");
      event.target.classList.add("active");
      this.urlZoom = event.target.src;
    },
    changeSize(event) {
      $(".form-check-label").removeClass("sb");
      event.target.classList.add("sb");
    },
    viewDetail(product_id) {
      this.$router.push(`/product/${product_id}`);
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

.small-img.active {
  border: 1px solid #808283;
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

.relate-product {
  width: 100%;
  border-bottom: 1px solid #000;
  line-height: 0.2em;
  margin: 10px 0 20px;
}

.relate-product span {
  background: #fff;
  padding: 0 10px;
}

.product-relation .sale-off {
  left: 110px
}

.carousel-inner {
  padding: 1em;
}

.card {
  margin: 0 0.5em;
  box-shadow: 2px 6px 8px 0 rgba(22, 22, 26, 0.18);
  border: none;
}

.carousel-control-prev,
.carousel-control-next {
  background-color: #e1e1e1;
  width: 6vh;
  height: 6vh;
  border-radius: 50%;
  top: 50%;
  transform: translateY(-50%);
}

.visually-hidden {
  visibility: hidden;
}

@media (min-width: 768px) {
  .carousel-item {
    margin-right: 0;
    flex: 0 0 25%;
    display: block;
  }

  .carousel-inner {
    display: flex;
  }
}

.card .img-wrapper {
  max-width: 100%;
  height: 13em;
  display: flex;
  justify-content: center;
  align-items: center;
}

.card img {
  max-height: 100%;
}

@media (max-width: 767px) {
  .card .img-wrapper {
    height: 17em;
  }
}
</style>