<template>
    <div class="container">
        <div>{{product.name}}</div>
        <div><img :src="product.imageUrl"/></div>
        <div>{{product.price}}</div>
        <div>{{product.discount * product.price}}</div>
        <div>{{product.detail}}</div>
        <div>{{product.reviewCount}}</div>
        <div>{{product.rate}}</div>
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
};
</script>