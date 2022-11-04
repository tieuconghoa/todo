import Vue from "vue";
Vue.mixin({
  methods: {
    caculateSaleOff: (price, discount) => {
      let num = (price - discount) / price;
      return Math.round(num * 100);
    },
    fomatCurrency: (number) => {
      number = number.toLocaleString("de-DE", {
        style: "currency",
        currency: "VND",
      });
      return number;
    },
  },
});
