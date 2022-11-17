export const commons = {
  caculateSaleOff,
  fomatCurrency,
  caculateProductQuantity
};

function caculateSaleOff(price, discount) {
  let num = (price - discount) / price;
  return Math.round(num * 100);
};

function fomatCurrency(number) {
  if (number) {
    number = number.toLocaleString("de-DE", {
      style: "currency",
      currency: "VND",
    });
    return number.replaceAll(".", ",");
  } else {
    return 0;
  }
};
function caculateProductQuantity(product_cart) {
  let sum = JSON.parse(JSON.stringify(product_cart)).reduce((accumulator, object) => {
    return parseInt(accumulator) + parseInt(object.count);
  }, 0);
  return sum;
}



