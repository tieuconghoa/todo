<template>
  <div>
    <div class="h3">Giỏ hàng của bạn</div>
    <div class="h5">
      Có {{ caculateProductQuantity(productCarts) }} sản phẩm trong giỏ hàng
    </div>

    <div class="product-cart-list container">
      <div class="product-cart-item" v-for="cart in productCarts" :key="cart.product_id + cart.size">
        <div class="product-info d-flex">
          <div>
            <img class="small-img mr-3" :src="cart.image_url" alt="" />
          </div>
          <div>
            <div class="product-name">{{ cart.name }}</div>
            <div class="product-price">{{ fomatCurrency(cart.price) }}</div>
            <div class="product-size">{{ cart.size }}</div>
            <div class="product-quantity">
              <div class="d-flex">
                <button class="h25 btn-subtract" :disabled="cart.count < 1" @click="
                  () => {
                    cart.count--;
                  }
                ">
                  -
                </button>
                <input type="text" class="w-xd-50 w-sm-75 h25 text-center cart-amount" name="" id=""
                  v-model="cart.count" />
                <button class="h25 btn-add" @click="
                  () => {
                    cart.count++;
                  }
                ">
                  +
                </button>
              </div>
            </div>
          </div>
        </div>
        <div class="total-amount">
          <div class="btn-delete" @click="deleteShoppingCart(cart.product_id, cart.size)">
            ×
          </div>
          <div class="price mt-5">
            {{ fomatCurrency(cart.count * cart.price) }}
          </div>
        </div>
      </div>
      <div v-if="productCarts.length > 0" class="my-5 d-flex justify-content-space-between">
        <div>Tổng: </div>
        <div class="text-right font-weight-bold text-danger">{{
            fomatCurrency(this.caculateTotal())
        }}</div>
      </div>
    </div>
  </div>
</template>
<script>
import store from "@/store";
import { commons } from "@/commons";
export default {
  computed: {
    productCarts: function () {
      return store.state.product.productCart;
    },
  },
  methods: {
    deleteShoppingCart(product_id, product_size) {
      store.dispatch("product/deleteItemShoppingCart", {
        product_id: product_id,
        product_size: product_size,
      });
    },
    caculateTotal() {
      let sum = 0;
      let productCart = store.state.product.productCart;
      for (let i = 0; i < productCart.length; i++) {
        sum += productCart[i].discount * productCart[i].count;
      }
      return sum;
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
};
</script>
<style scoped>
.product-cart-item {
  display: flex;
  justify-content: space-between;
}

.small-img {
  height: 150px;
  max-width: auto;
}

.product-cart-item {
  padding: 20px 0 20px 0;
  border-bottom: 1px solid #ededed;
}

.product-info {
  padding-left: 20px;
  text-align: left;
}

.cart-amount {
  background: #ededed;
  border: 1px solid #dadbdd;
  border-radius: 0;
  padding: 0;
  font-weight: 500;
  font-size: 15px;
}

.btn-subtract,
.btn-add {
  width: 25px;
  line-height: 0.5;
  background: #fff;
  color: #abafb2;
  border: 1px solid #dadbdd;
  outline: none;
}

.total-amount {
  text-align: right;
}

.btn-delete {
  font-size: 30px;
  cursor: pointer;
  outline: none;
}

.justify-content-space-between {
  justify-content: space-between;
}

@media(min-width: 768px ) {
  .w-xd-50 {
    width: 50%;
  }
}

@media (min-width: 320px)  and (max-width: 768px ){
  .w-sm-75 {
    width: 75%;
  }
}
</style>