<template>
  <main class="page-content toggled">
    <div class="h2 text-left m-5">Dashboard</div>
    <div class="report">
      <div class="total-sales">
        <div class="icon-dola"><i class="fa-solid fa-dollar-sign"></i></div>
        <div class="info">
          <div class="label">Total Sales</div>
          <div class="total">
            {{
              commons.fomatCurrency(allOrder.reduce(function (a, b) {
                return a + b.amount;
              }, 0))
            }}
          </div>
        </div>
      </div>
      <div class="total-orders">
        <div class="icon-cart">
          <i class="fa-sharp fa-solid fa-cart-shopping"></i>
        </div>
        <div class="info">
          <div class="label">Total Orders</div>
          <div class="total">{{ allOrder.length }}</div>
        </div>
      </div>
      <div class="total-products">
        <div class="icon-shopping">
          <i class="fa-solid fa-bag-shopping"></i>
        </div>
        <div class="info">
          <div class="label">Total Products</div>
          <div class="total">{{ allProducts.length }}</div>
        </div>
      </div>
    </div>
    <div class="report-chart">
      <div class="sale-static"></div>
      <div class="visitors"></div>
    </div>
    <div class="lastest-orders">
      <div class="text-left font-weight-bold pb-2">Lastest Orders</div>
      <table class="table">
        <thead>
          <tr>
            <td>Mã đặt hàng</td>
            <td>Tên Khách hàng</td>
            <td>Số điện thoại</td>
            <td>Số tiền</td>
            <td>Trạng thái</td>
            <td>Ngày đặt</td>
            <td>Action</td>
          </tr>
        </thead>
        <tbody>
          <tr v-for="order in lastestOrder" :key="order.order_number">
            <td>{{ order.order_number }}</td>
            <td>{{ order.customer_name }}</td>
            <td>{{ order.customer_phone_number }}</td>
            <td>{{ commons.fomatCurrency(order.amount) }}</td>
            <td class="status">{{ order.status }}</td>
            <td>{{ order.order_date }}</td>
            <td>
              <span
                id="dropdownMenuButton"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                <i class="fa-solid fa-ellipsis-vertical"></i>
              </span>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="#">Xem</a>
                <a class="dropdown-item" href="#">Sửa</a>
                <a class="dropdown-item" href="#">Download</a>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </main>
</template>
<script>
import store from "@/store";
import { commons } from "@/commons";
export default {
  computed: {
    lastestOrder() {
      return store.state.order.lastestOrder;
    },
    allOrder() {
      return store.state.order.allOrder;
    },
    allProducts() {
      return store.state.product.products;
    },
    commons() {
      return commons;
    },
  },
  created() {
    store.dispatch("order/getLastestOrder");
    store.dispatch("order/getAllOrder");
  },
};
</script>
<style scoped>
.page-content {
  display: inline-block;
  width: 100%;
  padding: 20px 20px 20px 20px;
  background: rgb(247, 247, 247);
  height: 100vh;
}
.page-content.toggled {
  padding-left: 280px;
}
.report {
  display: flex;
  justify-content: space-between;
}
.total-sales,
.total-orders,
.total-products {
  background: #fff;
  flex: 0 30%;
  display: flex;
  padding: 20px 20px;
}
.lastest-orders {
  margin-top: 50px;
  background: #fff;
  padding: 20px 20px;
}
.total-sales .icon-dola,
.total-orders .icon-cart,
.total-products .icon-shopping {
  border-radius: 50%;
  width: 50px;
  height: 50px;
  text-align: center;
  vertical-align: middle;
  background: rgb(255 145 16);
  color: #fff;
  padding-top: 13px;
}

.info {
  font-size: 20px;
  font-weight: bold;
  padding-left: 20px;
  text-align: left;
}
.info .label {
  color: rgb(202 204 206);
}
.lastest-orders {
  padding-top: 30px;
}
</style>