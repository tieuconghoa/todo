<template>
  <div class="">
    <div class="row mx-0">
      <div class="col-md-6 col-xs-12 d-flex">
        <div class="small-img-row col-3">
          <div class="small-img-col" v-for="img in product.image_url_list" :key="img.id">
            <img :src="img" alt="" width="100%" class="small-img" @click="changeImg" />
          </div>
        </div>
        <div class="col-9">
          <!-- <vue-image-zoomer :regular="urlZoom == '' ? product?.image_url : urlZoom"
            :zoom="urlZoom == '' ? product?.image_url : urlZoom" :zoom-amount="3" img-class="img-fluid">
          </vue-image-zoomer> -->
          <img :src="urlZoom == '' ? product?.image_url : urlZoom" class="img-fluid" alt="">
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
            <div v-for="size in product.product_size_list" :key="size.id" :class="'size size-' + size">
              <input type="radio" :id="'swatch-' + size" name="size" value="S" />
              <label class="form-check-label" :class="size == product.product_size_list[0] ? 'sb' : ''"
                @click="changeSize" :for="'swatch-' + size">{{ size.product_size }}</label>
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
          <button class="blob-btn col-4 btn-card" @click="addToCart">
            Thêm vào giỏ
            <span class="blob-btn__inner">
              <span class="blob-btn__blobs">
                <span class="blob-btn__blob"></span>
                <span class="blob-btn__blob"></span>
                <span class="blob-btn__blob"></span>
                <span class="blob-btn__blob"></span>
              </span>
            </span>
          </button>
        </div>

        <h3 class="text-left mb-5">Mô tả</h3>
        <table class="table table-responsive">
          <tr class="text-left">
            <td>Miêu tả</td>
            <td>{{ product.product_description?.product_description }}</td>
          </tr>
          <tr class="text-left">
            <td>Chất liệu</td>
            <td>{{ product.product_description?.product_material }}</td>
          </tr>
          <tr class="text-left product-size">
            <td>Kích thước</td>
            <td>{{ product.product_description?.product_size }}</td>
          </tr>
          <tr class="text-left">
            <td>Kích thước của mẫu</td>
            <td>{{ product.product_description?.product_model_size }}</td>
          </tr>
          <tr class="text-left">
            <td>Phụ kiện đi kèm</td>
            <td>
              <span v-if="product.product_description?.product_accessory"></span>
            </td>
          </tr>
        </table>
      </div>
    </div>
    <div>
      <div class="h3 mt-5 relate-product">
        <span>CÁC SẢN PHẨM TƯƠNG TỰ</span>
      </div>
      <div class="text-center my-3 mt-5">
        <div v-if="relateProducts" id="carouselExampleControls" class="carousel" data-bs-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item" :class="item.id == relateProducts[0].id ? 'active' : ''"
              v-for="item in relateProducts" :key="item.id">
              <div class="px-2">
                <div class="img-fluid product-item" @click="viewDetail(item.id)">
                  <img :src="item.image_url" class="d-block w-100" alt="..." />
                </div>
                <div class="sale-off" v-if="caculateSaleOff(item.price, item.discount) > 0">
                  {{ caculateSaleOff(item.price, item.discount) }}%
                </div>
                <div class="product-name mt-2 font-weight-bold">
                  {{ item.name }}
                </div>
                <div>
                  <span class="text-danger font-weight-bold">{{
                      fomatCurrency(item.discount)
                  }}</span>
                  <span class="ml-1 font-weight-light btn-sm" v-if="item.price != item.discount"><del>{{
                      fomatCurrency(item.price)
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
import store from "@/store";
// import vueImageZoomer from "vue-image-zoomer";
import ProductItem from "./ProductItem.vue";
import { commons } from "@/commons";
export default {
  data: () => {
    return {
      count: 1,
      urlZoom: "",
    };
  },
  components: {
    ProductItem,
  },
  computed: {
    products: function () {
      return store.state.product.products || [];
    },
    relateProducts: function () {
      return store.state.product.products?.filter((item) => {
        return (
          item.category == store.state.product.productDetail?.category &&
          item.id != store.state.product?.productDetail.id
        );
      });
    },
    product: function () {
      return store.state.product.productDetail || {};
    },
  },
  methods: {
    addToCart() {
      let size = $(".sb").text();
      store.dispatch("product/addItemShoppingCart", {
        product_id: this.$route.params.name,
        price: this.product.price,
        name: this.product.name,
        discount: this.product.discount,
        image_url: this.product.image_url,
        size: size,
        count: parseInt(this.count),
      });
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
    caculateSaleOff(price, discount) {
      return commons.caculateSaleOff(price, discount);
    },
    fomatCurrency(number) {
      return commons.fomatCurrency(number);
    },
    caculateProductQuantity(product_cart) {
      return commons.caculateProductQuantity(product_cart);
    }
  },
  created() {
    store.dispatch("product/getProductDetail", this.$route.params.name);
  },
  updated: function () {
    const plugin = document.createElement("script");
    plugin.setAttribute("src", "../script.js");
    plugin.async = false;
    document.head.appendChild(plugin);
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
  color: #000;
  margin: 30px 10px;
  outline: none;
  box-shadow: none;
}

button:focus {
  outline: none;
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
  left: 110px;
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

.product-size {
  white-space: pre-line;
}

.blob-btn {
  z-index: 1;
  position: relative;
  padding: 7px 46px;
  margin-bottom: 30px;
  text-align: center;
  text-transform: uppercase;
  color: #cc2c0c;
  font-size: 16px;
  font-weight: bold;
  background-color: transparent;
  outline: none;
  border: none;
  transition: color 0.5s;
  cursor: pointer;
}

.blob-btn:before {
  content: "";
  z-index: 1;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  border: 2px solid #cc2c0c;
}

.blob-btn:after {
  content: "";
  z-index: -2;
  position: absolute;
  left: 3px;
  top: 3px;
  width: 100%;
  height: 100%;
  transition: all 0.3s 0.2s;
}

.blob-btn:hover {
  color: #fff;
}

.blob-btn:hover:after {
  transition: all 0.3s;
  left: 0;
  top: 0;
}

.blob-btn__inner {
  z-index: -1;
  overflow: hidden;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: #fff;
}

.blob-btn__blobs {
  position: relative;
  display: block;
  height: 100%;
}

.blob-btn__blob {
  position: absolute;
  top: 2px;
  width: 25%;
  height: 100%;
  background: #dc0715;
  border-radius: 100%;
  transform: translate3d(0, 150%, 0) scale(1.7);
  transition: transform 0.45s;
}

.blob-btn__blob:nth-child(1) {
  left: 0%;
  transition-delay: 0s;
}

.blob-btn__blob:nth-child(2) {
  left: 30%;
  transition-delay: 0.08s;
}

.blob-btn__blob:nth-child(3) {
  left: 60%;
  transition-delay: 0.16s;
}

.blob-btn__blob:nth-child(4) {
  left: 90%;
  transition-delay: 0.24s;
}

.blob-btn:hover .blob-btn__blob {
  transform: translateZ(0) scale(1.7);
}
</style>