<template>
  <div>
    <div class="header">
      <div class="top-bar">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div class="float-left">
                <a href="#" class=""><span class="mr-2 fa fa-envelope"></span>
                  <span class="d-none d-md-inline-block">info@yourdomain.com</span></a>
                <span class="mx-md-2 d-inline-block"></span>
                <a href="#" class=""><span class="mr-2 fa fa-phone"></span>
                  <span class="d-none d-md-inline-block">1+ (234) 5678 9101</span></a>
              </div>
              <div class="float-right">
                <a href="#" class=""><i class="mr-2 fa-brands fa-twitter"></i>
                  <span class="d-none d-md-inline-block">Twitter</span></a>
                <span class="mx-md-2 d-inline-block"></span>
                <a href="#" class=""><span class="mr-2 fa-brands fa-facebook-f"></span>
                  <span class="d-none d-md-inline-block">Facebook</span></a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <header class="main-header">
        <div class="mid-header d-lg-flex d-none">
          <div class="logo-branch">
            <div>SHOPPING.COM</div>
          </div>
          <div class="icon-menu">
            <span class="icon-account" >
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none">
                <path fill="#000" fill-rule="evenodd"
                  d="M12 22c5.523 0 10-4.477 10-10S17.523 2 12 2 2 6.477 2 12s4.477 10 10 10Zm3-12a3 3 0 1 1-6 0 3 3 0 0 1 6 0Zm-9 7a7.489 7.489 0 0 1 6-3 7.489 7.489 0 0 1 6 3 7.489 7.489 0 0 1-6 3 7.489 7.489 0 0 1-6-3Z"
                  clip-rule="evenodd" />
              </svg>
            </span>
            <span class="icon-search" data-toggle="modal" data-target="#myModal2">
              <svg version="1.1" class="svg-search" xmlns="http://www.w3.org/2000/svg"
                xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 24 27"
                style="enable-background:new 0 0 24 27;" xml:space="preserve">
                <path
                  d="M10,2C4.5,2,0,6.5,0,12s4.5,10,10,10s10-4.5,10-10S15.5,2,10,2z M10,19c-3.9,0-7-3.1-7-7s3.1-7,7-7s7,3.1,7,7S13.9,19,10,19z">
                </path>
                <rect x="17" y="17" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -9.2844 19.5856)" width="4"
                  height="8"></rect>
              </svg>
            </span>
            <span class="cart-menu icon-cart">
              <svg version="1.1" class="svg-cart" xmlns="http://www.w3.org/2000/svg"
                xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 24 27"
                style="enable-background:new 0 0 24 27;" xml:space="preserve">
                <g>
                  <path d="M0,6v21h24V6H0z M22,25H2V8h20V25z"></path>
                </g>
                <g>
                  <path d="M12,2c3,0,3,2.3,3,4h2c0-2.8-1-6-5-6S7,3.2,7,6h2C9,4.3,9,2,12,2z"></path>
                </g>
              </svg>
              <span class="count-holder"><span class="count">0</span></span>
            </span>
          </div>
        </div>
        <div class="list-menu">
          <nav class="navbar navbar-expand-lg navbar-light container">
            <button class="navbar-header navbar-toggler" type="button" data-toggle="collapse"
              data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="true"
              aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                  <a class="nav-link" href="#">Chủ đề 1</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Chủ đề 2</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Chủ đề 3</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Chủ đề 4</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    Dropdown link
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                  </div>
                </li>
              </ul>
            </div>
            <div class="d-lg-none d-flex form-search-mobile">
              <input type="text" class="form-control" v-model="name" />
              <button class="btn btn-nav"><i class="fa fa-search"></i></button>
              <button class="btn"><i class="fa fa-cart-shopping"></i></button>
            </div>
          </nav>
        </div>
      </header>
    </div>
    <div class="modal right fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title" id="myModalLabel2">TÌM KIẾM</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close" @click="clearSearch">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>

          <div class="modal-body">
            <form class="input-group input-group-lg mb-4">
              <input type="text" class="form-control input-lg" @keyup="searchProduct" v-model="name" />
              <button class="btn btn-danger ml-2">
                <i class="fa fa-search"></i>
              </button>
            </form>
            <div class="search-list">
              <div class="item-search row" v-for="product in this.productSearch" :key="product.id">
                <div class="text-left col-9">
                  <div class="name-product text-uppercase">
                    {{ product.name }}
                  </div>
                  <div class="price-product">
                    <span class="">{{
                        fomatCurrency(product.discount)
                    }}</span>
                    <span class="ml-1 font-weight-light btn-sm" v-if="product.price != product.discount"><del>{{
                        fomatCurrency(product.price)
                    }}</del></span>
                  </div>
                </div>
                <div class="picture-product col-3">
                  <img height="50px" :src="product.imageUrl" alt="" />
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- modal-content -->
      </div>
      <!-- modal-dialog -->
    </div>
  </div>
</template>
<script>
import { store } from "@/store";
export default {
  data: () => {
    return {
      name: "",
      id: "",
    };
  },
  computed: {
    productSearch() {
      return store.state.product.productSearch;
    },
  },
  methods: {
    searchProduct() {
      const data = { id: this.id, name: this.name };
      store.dispatch("product/getProductByName", data);
    },
    clearSearch() {
      this.name = null;
      store.state.product.productSearch = null;
    }
  },
  created() {
    document.addEventListener("scroll", () => {
      if (window.scrollY > 0) {
        $(".header").addClass("scrollable");
      } else {
        $(".header").removeClass("scrollable");
      }
    });
  },
};
</script>

<style scoped>
.header {
  padding-bottom: 20px;
}

.top-bar {
  display: flex;
  justify-content: space-around;
  padding: 0.5rem 0;
  background: #eee;
}

.mid-header {
  padding: 10px 60px;
  justify-content: center;
  z-index: 2;
  align-items: center;
}

.mid-header>div {
  flex: 1 0 0;
}

.icon-menu {
  background: #fff;
  text-align: right;
}

.icon-menu span {
  padding: 0 0.5rem;
}

.list-menu {
  box-shadow: 2px 2px 2px #eee;
}

.scrollable .top-bar,
.scrollable .main-header {
  background: #fff;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 999;
  animation: fadeInDown 0.5s both;
}

.scrollable .mid-header {
  position: absolute;
  padding: 0;
  right: 60px;
}

.scrollable .mid-header .logo-branch {
  display: none;
}

.scrollable .mid-header .icon-menu {
  padding-top: 10px;
}

.form-search-mobile {
  position: absolute;
  top: 10px;
  right: 0px;
  width: 80%;
}

.modal.right .modal-dialog {
  position: fixed;
  margin: auto;
  width: 420px;
  height: 100%;
  -webkit-transform: translate3d(0%, 0, 0);
  -ms-transform: translate3d(0%, 0, 0);
  -o-transform: translate3d(0%, 0, 0);
  transform: translate3d(0%, 0, 0);
}

.modal.right .modal-content {
  height: 100%;
  overflow-y: auto;
}

.modal.right .modal-body {
  padding: 15px 15px 80px;
}

.modal.right.fade .modal-dialog {
  right: 0;
  -webkit-transition: opacity 0.3s linear, right 0.3s ease-out;
  -moz-transition: opacity 0.3s linear, right 0.3s ease-out;
  -o-transition: opacity 0.3s linear, right 0.3s ease-out;
  transition: opacity 0.3s linear, right 0.3s ease-out;
}

.modal.right.fade.in .modal-dialog {
  right: 0;
}

.modal.right.fade.show {
  transition: all 0.45s;
}

/* ----- MODAL STYLE ----- */
.modal-content {
  border-radius: 0;
  border: none;
}

.modal-header {
  margin-top: 20px;
  border: none;
}

.item-search {
  padding: 10px 5px;
  display: flex;
  border-bottom: 1px solid #eeeeee;
}

.icon-cart svg,
.icon-search svg,
.icon-account svg {
  fill: #252a2b;
  width: 24px;
  height: 24px;
}

.cart-menu {
  /* color: #252a2b; */
  margin: 8px 5px 0;
  position: relative;
  display: inline-block;
}

.count-holder {
  position: absolute;
  top: 7px;
  left: 0;
  right: 0;
  font-size: 14px;
  text-align: center;
  height: 17px;
  overflow: hidden;
}

@keyframes fadeInDown {
  0% {
    opacity: 0;
    transform: translateY(-20px);
  }

  100% {
    opacity: 1;
    transform: translateY(0);
  }
}
</style>