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
        <div class="row mx-auto my-auto">
          <div id="recipeCarousel" class="carousel slide w-100" data-ride="carousel">
            <div class="carousel-inner w-100 container" role="listbox">
              <div class="carousel-item" :class="item.id == products[0].id ? 'active' : ''" v-for="item in products"
                :key="item.id">
                <ProductItem :product_prop="item" :key="item.id" />
              </div>
            </div>
            <a class="carousel-control-prev" href="#recipeCarousel" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#recipeCarousel" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
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
  },
  created() {
    store.dispatch("product/getProductDetail", this.$route.params.name);
  },
  mounted() {
    const plugin = document.createElement("script");
    plugin.setAttribute(
      "src",
      "../script.js"
    );
    plugin.async = true;
    document.head.appendChild(plugin);
  }
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

.carousel-inner .carousel-item.active,
.carousel-inner .carousel-item-next,
.carousel-inner .carousel-item-prev {
  display: flex;
}

.carousel-inner .carousel-item-right.active,
.carousel-inner .carousel-item-next {
  transform: translateX(25%);
}

.carousel-inner .carousel-item-left.active,
.carousel-inner .carousel-item-prev {
  transform: translateX(-25%);
}

.carousel-inner .carousel-item-right,
.carousel-inner .carousel-item-left {
  transform: translateX(0);
}
.carousel-control-prev-icon,
.carousel-control-next-icon {
  padding: 30px;
  background-color: #000;
  border-radius: 50%;
  color: #fff;
  background-size: 20px;
}
</style>