import Vue from "vue";
Vue.mixin({
  methods: {
    caculateSaleOff: (price, discount) => {
      let num = (price - discount) / price;
      return Math.round(num * 100);
    },
    fomatCurrency: (number) => {
      if (number) {
        number = number.toLocaleString("de-DE", {
          style: "currency",
          currency: "VND",
        });
        return number;
      } else {
        return 0;
      }
    },
    caculateProductQuantity(product_cart) {
      let sum = product_cart.reduce((accumulator, object) => {
        return parseInt(accumulator) + parseInt(object.count);
      }, 0);
      return sum;
    }
  },
});
