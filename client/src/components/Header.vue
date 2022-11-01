<template>
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
      <div class="mid-header">
        <div class="logo-branch">
          <div>SHOPPING.COM</div>
        </div>
        <div class="icon-menu">
          <span>
            <i class="fa fa-user"></i>
          </span>
          <span>
            <i class="fa fa-search"></i>
          </span>
          <span>
            <i class="fa fa-cart-shopping"></i>
          </span>
        </div>
      </div>
      <div class="list-menu">
        <nav class="navbar navbar-expand-lg navbar-light container">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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
        </nav>
      </div>
    </header>
  </div>
</template>
<script>
export default {
  created() {
    document.addEventListener("scroll", () => {
      if (window.scrollY > 0) {
        $(".header").addClass("scrollable")
      } else {
        $(".header").removeClass("scrollable")
      }
    })
  }
};
</script>

<style scoped>
.top-bar {
  display: flex;
  justify-content: space-around;
  padding: 0.5rem 0;
  background: #eee;
}

.mid-header {
  padding: 10px 60px;
  display: flex;
  justify-content: center;
}

.mid-header>div {
  flex: 1 0 0;
}

.icon-menu {
  background: #fff;
  text-align: right;
}

.icon-menu span {
  padding: 0 1rem;
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
  animation: fadeInDown 0.5s both
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
  padding-top: 15px;
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