<template>
  <div class="page-content toggled">
    <div class="m-5">
      <div class="h2 text-left">Thêm mới sản phẩm</div>
    </div>
    <div class="content">
      <div class="row justify-content-center mt-0">
        <div
          class="col-12 col-sm-10 col-md-8 col-lg-8 text-center p-0 mt-3 mb-2"
        >
          <div class="cards px-0 pt-4 pb-0 mt-3 mb-3">
            <h2><strong>Đăng ký sản phẩm mới</strong></h2>
            <p></p>
            <p></p>
            <div class="row">
              <div class="col-md-12 mx-0">
                <form id="msform">
                  <!-- progressbar -->
                  <ul id="progressbar">
                    <li class="active" id="account">
                      <strong>Thông tin chung</strong>
                    </li>
                    <li id="personal">
                      <strong>Số lượng và kích thước</strong>
                    </li>
                    <li id="payment"><strong>Chi tiết</strong></li>
                    <li id="image"><strong>Hình ảnh</strong></li>
                    <li id="confirm"><strong>Hoàn tất</strong></li>
                  </ul>
                  <!-- fieldsets -->
                  <fieldset>
                    <div class="form-card pl-3">
                      <div class="form-group row">
                        <label
                          class="col-sm-3 offset-1 text-left col-form-label"
                          for=""
                        >
                          Tên sản phẩm:
                        </label>
                        <div class="col-sm-7">
                          <input type="text" class="form-control" />
                        </div>
                      </div>
                      <div class="form-group row">
                        <label
                          class="col-sm-3 offset-1 text-left col-form-label"
                          for=""
                        >
                          Phân loại sản phẩm:
                        </label>
                        <div class="col-sm-8">
                          <select name="" id="" class="form-control w-25">
                            <option
                              :key="category.id"
                              :value="category.id"
                              v-for="category in categories"
                            >
                              {{ category.name }}
                            </option>
                          </select>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label
                          class="col-sm-3 offset-1 text-left col-form-label"
                          for=""
                        >
                          Giá tiền:
                        </label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control number w-50" />
                        </div>
                      </div>
                      <div class="form-group row">
                        <label
                          class="col-sm-3 offset-1 text-left col-form-label"
                          for=""
                        >
                          Giá khuyến mại:
                        </label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control number w-50" />
                        </div>
                      </div>
                    </div>

                    <button
                      type="button"
                      name="next"
                      class="next btn btn-primary"
                    >
                      Tiếp
                    </button>
                  </fieldset>
                  <fieldset>
                    <div class="form-card pl-3">
                      <div class="form-group row">
                        <div class="col-4"><span>Kích thước</span></div>
                        <div class="col-4"><span>Số lượng</span></div>
                        <div class="col-4"><span></span></div>
                      </div>
                      <div
                        class="form-group row"
                        v-for="index in count"
                        :key="index"
                      >
                        <div class="col-4">
                          <select name="size" id="" class="form-control">
                            <option value="">Chọn kích cỡ sản phẩm</option>
                            <option value="">XS</option>
                            <option value="">S</option>
                            <option value="">M</option>
                            <option value="">L</option>
                            <option value="">XL</option>
                          </select>
                        </div>
                        <div class="col-4">
                          <input
                            type="number"
                            name="quantity"
                            class="form-control number"
                          />
                        </div>
                        <div class="col-4">
                          <button
                            class="btn btn-primary"
                            v-show="this.count < 5"
                            type="button"
                            @click="
                              () => {
                                this.count++;
                              }
                            "
                          >
                            Thêm
                          </button>
                          <button
                            v-show="this.count > 1"
                            class="btn btn-danger ml-2"
                            type="button"
                            @click="
                              () => {
                                this.count--;
                              }
                            "
                          >
                            Xóa
                          </button>
                        </div>
                      </div>
                    </div>
                    <button
                      type="button"
                      name="previous"
                      class="previous btn btn-light"
                    >
                      Trước
                    </button>
                    <button
                      type="button"
                      name="next"
                      class="ml-3 next btn btn-primary"
                    >
                      Tiếp
                    </button>
                  </fieldset>
                  <fieldset>
                    <div class="form-card">
                      <div class="form-group row">
                        <label
                          class="col-sm-3 offset-1 text-left col-form-label"
                          for=""
                        >
                          Mô tả:
                        </label>
                        <div class="col-sm-8">
                          <textarea
                            type="text"
                            class="form-control number w-75"
                          ></textarea>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label
                          class="col-sm-3 offset-1 text-left col-form-label"
                          for=""
                        >
                          Chất liệu:
                        </label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control w-75" />
                        </div>
                      </div>
                      <div class="form-group row">
                        <label
                          class="col-sm-3 offset-1 text-left col-form-label"
                          for=""
                        >
                          Kích thước:
                        </label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control w-75" />
                        </div>
                      </div>
                      <div class="form-group row">
                        <label
                          class="col-sm-3 offset-1 text-left col-form-label"
                          for=""
                        >
                          Số đo người mẫu:
                        </label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control w-75" />
                        </div>
                      </div>
                    </div>
                    <button
                      type="button"
                      name="previous"
                      class="previous btn btn-light"
                    >
                      Trước
                    </button>
                    <button
                      type="button"
                      name="next"
                      class="next ml-3 btn btn-primary"
                    >
                      Tiếp
                    </button>
                  </fieldset>
                  <fieldset>
                    <div class="form-card">
                      <div class="d-flex mt-4">
                        <div class="file-wrapper mx-1 col-3">
                          <input
                            type="file"
                            name="upload-img"
                            accept="image/*"
                          />
                          <div class="close-btn">×</div>
                        </div>
                        <div class="file-wrapper mx-1 col-3">
                          <input
                            type="file"
                            name="upload-img"
                            accept="image/*"
                          />
                          <div class="close-btn">×</div>
                        </div>
                        <div class="file-wrapper mx-1 col-3">
                          <input
                            type="file"
                            name="upload-img"
                            accept="image/*"
                          />
                          <div class="close-btn">×</div>
                        </div>
                        <div class="file-wrapper mx-1 col-3">
                          <input
                            type="file"
                            name="upload-img"
                            accept="image/*"
                          />
                          <div class="close-btn">×</div>
                        </div>
                      </div>
                      <div class="d-flex mt-4">
                        <div class="file-wrapper mx-1 col-3">
                          <input
                            type="file"
                            name="upload-img"
                            accept="image/*"
                          />
                          <div class="close-btn">×</div>
                        </div>
                        <div class="file-wrapper mx-1 col-3">
                          <input
                            type="file"
                            name="upload-img"
                            accept="image/*"
                          />
                          <div class="close-btn">×</div>
                        </div>
                        <div class="file-wrapper mx-1 col-3">
                          <input
                            type="file"
                            name="upload-img"
                            accept="image/*"
                          />
                          <div class="close-btn">×</div>
                        </div>
                        <div class="file-wrapper mx-1 col-3">
                          <input
                            type="file"
                            name="upload-img"
                            accept="image/*"
                          />
                          <div class="close-btn">×</div>
                        </div>
                      </div>
                    </div>
                    <button
                      type="button"
                      name="previous"
                      class="previous mt-3 btn btn-light"
                    >
                      Trước
                    </button>
                    <button
                      type="button"
                      name="next"
                      class="next mt-3 ml-3 btn btn-primary"
                    >
                      Xác nhận
                    </button>
                  </fieldset>
                  <fieldset>
                    <div class="form-card">OK</div>
                  </fieldset>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      categories: [
        {
          id: 1,
          name: "Váy",
        },
        {
          id: 2,
          name: "Quần",
        },
        {
          id: 3,
          name: "Đầm",
        },
        {
          id: 4,
          name: "Áo",
        },
      ],
      count: 1,
    };
  },
  created() {
    $(document).ready(function () {
      $("#msform fieldset:not(:first-of-type)").css("display", "none");
      var current_fs, next_fs, previous_fs; //fieldsets
      var opacity;

      $(".next").click(function () {
        current_fs = $(this).parent();
        next_fs = $(this).parent().next();

        //Add Class Active
        $("#progressbar li")
          .eq($("fieldset").index(next_fs))
          .addClass("active");

        //show the next fieldset
        next_fs.show();
        //hide the current fieldset with style
        current_fs.animate(
          { opacity: 0 },
          {
            step: function (now) {
              // for making fielset appear animation
              opacity = 1 - now;

              current_fs.css({
                display: "none",
                position: "relative",
              });
              next_fs.css({ opacity: opacity });
            },
            duration: 600,
          }
        );
      });

      $(".previous").click(function () {
        current_fs = $(this).parent();
        previous_fs = $(this).parent().prev();

        //Remove class active
        $("#progressbar li")
          .eq($("fieldset").index(current_fs))
          .removeClass("active");

        //show the previous fieldset
        previous_fs.show();

        //hide the current fieldset with style
        current_fs.animate(
          { opacity: 0 },
          {
            step: function (now) {
              // for making fielset appear animation
              opacity = 1 - now;

              current_fs.css({
                display: "none",
                position: "relative",
              });
              previous_fs.css({ opacity: opacity });
            },
            duration: 600,
          }
        );
      });

      $(".number").on("input", () => {
        var num = $(this)
          .val()
          .replace(/[^0-9,-]/g, "");
        $(this).val(num);
      });
      $(".number").on("blur", function () {
        var minus = $(this).val().search(/[-]/g);
        var num = $(this)
          .val()
          .replace(/[^0-9]/g, "");
        num = num.replace(/^\s*0*(\d+)\s*$/, "$1");
        num = num.replace(/(\d)(?=(\d\d\d)+$)/g, "$1,");
        if (num == "") {
          $(this).val("");
        } else if (minus == 0) {
          num = "-" + num;
          $(this).val(num);
        } else {
          $(this).val(num);
        }

        // var id = $(this).attr("id");
        // let idSelector = "#" + id + "Hidden";
        // $(idSelector).val(cutComma(num));
      });
      $(".number").on("focus", function () {
        var num = $(this).val();
        $(this).val(cutComma(num));
      });

      function cutComma(num) {
        return num.replace(/,/g, "");
      }
      $('input[name="upload-img"]').on("change", function () {
        readURL(this, this.parentNode); //Change the image
      });

      $(".close-btn").on("click", function () {
        //Unset the image
        let file = $('input[name="upload-img"]');
        $(this.parentNode).css("background-image", "unset");
        $(this.parentNode).removeClass("file-set");
        file.replaceWith((file = file.clone(true)));
      });

      //FILE
      function readURL(input, obj) {
        if (input.files && input.files[0]) {
          var reader = new FileReader();
          reader.onload = function (e) {
            $(obj).css("background-image", "url(" + e.target.result + ")");
            $(obj).addClass("file-set");
          };
          reader.readAsDataURL(input.files[0]);
        }
      }
    });
  },
};
</script>
<style>
#msform fieldset {
  background: white;
  border: 0 none;
  border-radius: 0.5rem;
  box-sizing: border-box;
  width: 100%;
  margin: 0;
  padding-bottom: 20px;

  /*stacking fieldsets above each other*/
  position: relative;
}

/*Hide all except first fieldset*/
#msform fieldset:not(:first-of-type) {
  display: none;
}

/*The background card*/
.cards {
  z-index: 0;
  border: none;
  border-radius: 0.5rem;
  position: relative;
}

/*progressbar*/
#progressbar {
  margin-bottom: 30px;
  overflow: hidden;
  color: lightgrey;
}

#progressbar .active {
  color: #000000;
}

#progressbar li {
  list-style-type: none;
  font-size: 12px;
  width: 20%;
  float: left;
  position: relative;
}

/*Icons in the ProgressBar*/
#progressbar #account:before {
  font-family: FontAwesome;
  content: "20%";
}

#progressbar #personal:before {
  font-family: FontAwesome;
  content: "40%";
}

#progressbar #payment:before {
  font-family: FontAwesome;
  content: "60%";
}
#progressbar #image:before {
  font-family: FontAwesome;
  content: "80%";
}

#progressbar #confirm:before {
  font-family: FontAwesome;
  content: "\f00c";
}

/*ProgressBar before any progress*/
#progressbar li:before {
  width: 50px;
  height: 50px;
  line-height: 45px;
  display: block;
  font-size: 18px;
  color: #ffffff;
  background: lightgray;
  border-radius: 50%;
  margin: 0 auto 10px auto;
  padding: 2px;
}

/*ProgressBar connectors*/
#progressbar li:after {
  content: "";
  width: 100%;
  height: 2px;
  background: lightgray;
  position: absolute;
  left: 0;
  top: 25px;
  z-index: -1;
}

/*Color number of the step and the connector before it*/
#progressbar li.active:before,
#progressbar li.active:after {
  background: skyblue;
}
.file-wrapper {
  width: 180px;
  height: 180px;
  border: 1px solid gray;
  position: relative;
  border-radius: 5%;
  background-color: rgb(247 247 247);
  margin: auto;
}
.file-wrapper:after {
  
  content: "\f0ee";
  font-family: "Font Awesome 5 Free";
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  margin: auto;
  display: block;
  max-height: 85px;
  font-size: 70px;
  font-weight: bolder;
  color: gray;
}
.file-wrapper:before {
  display: block;
  position: absolute;
  left: 0;
  right: 0;
  margin: auto;
  bottom: 35px;
  width: max-content;
  height: max-content;
  font-size: 0.75em;
  color: gray;
}
.file-wrapper:hover:after {
  font-size: 73px;
}
.file-wrapper .close-btn {
  display: none;
}
input[type="file"] {
  position: absolute;
  width: 100%;
  height: 100%;
  opacity: 0;
  z-index: 99999;
  cursor: pointer;
}
.file-set {
  background-size: cover;
  background-repeat: no-repeat;
  color: transparent;
  padding: 10px;
  border-width: 1px;
}
.file-set:hover {
  transition: all 0.5s ease-out;  
}
.file-set:before {
  color: transparent;
}
.file-set:after {
  color: transparent;
}
.file-set .close-btn {
  position: absolute;
  width: 35px;
  height: 35px;
  display: block;
  background: #fff;
  border-radius: 50%;
  color: rgb(165 165 166);
  top: 0;
  right: 0;
  font-size: 25px;
  text-align: center;
  line-height: 1.5;
  cursor: pointer;
  opacity: 0.8;
  z-index: 9;
}
.file-set > input {
  pointer-events: none;
}
</style>