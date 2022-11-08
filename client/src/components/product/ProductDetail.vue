<template>
  <div class="small-container single-product">
    <div class="row">
      <div class="col-6">
        <img src="https://i.ibb.co/1MydDzN/gallery-1.jpg" alt="" width="100%" id="ProductImg" />

        <div class="small-img-row">
          <div class="small-img-col">
            <img src="https://i.ibb.co/1MydDzN/gallery-1.jpg" alt="" width="100%" class="small-img" @click="changeImg"/>
          </div>
          <div class="small-img-col">
            <img src="https://i.ibb.co/4j34KdX/gallery-2.jpg" alt="" width="100%" class="small-img" @click="changeImg"/>
          </div>
          <div class="small-img-col">
            <img src="https://i.ibb.co/kGhWJ84/gallery-3.jpg" alt="" width="100%" class="small-img" @click="changeImg"/>
          </div>
          <div class="small-img-col">
            <img src="https://i.ibb.co/4j34KdX/gallery-2.jpg" alt="" width="100%" class="small-img" @click="changeImg"/>
          </div>
        </div>
      </div>
      <div class="col-6">
        <p>Home / T-Shirt</p>
        <h1>Red Printed T-Shirt by HRX</h1>
        <h4>₹500</h4>
        <select>
          <option>Select Size</option>
          <option>XXL</option>
          <option>XL</option>
          <option>L</option>
          <option>M</option>
          <option>S</option>
        </select>
       <div class="form-inline row">
        <input class="" type="number" value="1" />
        <a href="" class="btn btn-card col-3 offset-2">Add To Cart</a>
       </div>

        <h3>Product Details</h3>
        <br />
        <p>
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Alias,
          accusamus soluta quasi illum, deserunt ut iste rem obcaecati
          inventore, est harum repellendus fuga velit odio sint officia
          corrupti eum perspiciatis.
        </p>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  methods : {
    changeImg(event) {
      document.getElementById('ProductImg').src = event.target.src;
    }
  },
}
</script>
<style>

.col-2 img {
  max-width: 100%;
  padding: 50px 0;
}

.col-2 h1 {
  font-size: 50px;
  line-height: 60px;
  margin: 25px 0;
}

.small-container {
  max-width: 1080px;
  margin: auto;
  padding-left: 25px;
  padding-right: 25px;
}

.single-product {
  margin-top: 80px;
}

.single-product .col-2 img {
  padding: 0;
}

.single-product .col-2 {
  padding: 20px;
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

.single-product input {
  width: 50px;
  height: 38px;
  padding-left: 15px;
  font-size: 20px;
  border: 1px solid #ff523b;
}

input:focus {
  outline: none;
}

.small-img-row {
  display: flex;
  justify-content: space-between;
}

.small-img-col {
  flex-basis: 24%;
  cursor: pointer;
}

.small-img-col img {
  width: auto;
  height: 100px;
}

.btn-card {
  display: inline-block;
  background: #ff523b;
  color: #fff;
  margin: 30px 10px;
  transition: backgound 0.5s;
}
</style>