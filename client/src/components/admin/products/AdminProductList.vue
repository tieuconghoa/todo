<template>
    <div class="page-content toggled">
        <div class="m-5 d-flex justify-content-space-between">
            <div class="h2 text-left">Product list</div>
            <div class="text-right"><button @click="() => { this.$router.push('/admin/product/add') }" class="btn btn-primary">Tạo mới</button></div>
        </div>
        <div class="content">
            <div class="search row py-3 pl-3">
                <div class="search-name col-sm-4">
                    <input @keyup="searchProduct" type="text" class="form-control" placeholder="Tìm tên sản phẩm...">
                </div>
                <div class="sort offset-4 col-sm-4">
                    <div class="row">
                        <select name="" id="" class="form-control col-3" @change="paging">
                            <option value="10">Show 10</option>
                            <option value="20">Show 20</option>
                            <option value="50">Show 50</option>
                        </select>
                        <div class="page-info col-md-4 pt-2">
                            <span>Hiển thị {{ this.products.length }}/{{ this.total }}</span>
                        </div>
                    </div>

                </div>
            </div>
            <div class="table-search">
                <table class="table">
                    <thead>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td class="text-left">ID</td>
                            <td class="text-left">Tên sản phẩm</td>
                            <td class="text-left">Chủ đề</td>
                            <td class="text-left">Ngày tạo</td>
                            <td>Action</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="product in this.products" :key="product.id">
                            <td><input type="checkbox"></td>
                            <td class="text-left">{{ product.id }}</td>
                            <td class="text-left font-weight-bold">{{ product.name }}</td>
                            <td class="text-left">{{ product.category }}</td>
                            <td class="text-left">{{ product.create_date }}</td>
                            <td class="order-action">
                                <span id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">
                                    <i class="fa-solid fa-ellipsis"></i>
                                </span>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">
                                        <i class="fa-solid fa-eye"></i>
                                        <span class="pl-3">Xem</span>
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fa-solid fa-pencil"></i>
                                        <span class="pl-3">Sửa</span>
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fa-solid fa-cloud-arrow-down"></i>
                                        <span class="pl-3">Download</span>
                                    </a>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="pb-3" v-show="this.products.length == 0">
                    <span>Không tìm thấy sản phẩm tương ứng</span>
                </div>
            </div>
            <div class="paging pb-3" v-show="this.products.length > 0">
                <button class="btn-prev"><i class="fa-solid fa-angle-left"></i></button>
                <button class="btn-next"><i class="fa-solid fa-angle-right"></i></button>
            </div>
        </div>
    </div>
</template>
<script>
import store from "@/store";
export default {
    data: () => {
        return {
            products: store.state.product.products.slice(0, 10),
            count_view: 10,
            page: 1,
            text_search: '',
            total: store.state.product.products.length
        }
    },
    methods: {
        paging(event) {
            this.count_view = event.target.value;
            this.total = store.state.product.products.filter(item => {
                return item.name.includes(this.text_search);
            }).length;
            this.products = store.state.product.products.filter(item => {
                return item.name.includes(this.text_search);
            }).slice(0, this.count_view);
        },
        searchProduct(event) {
            this.text_search = event.target.value;
            if (this.text_search != "") {
                this.products = store.state.product.products.filter(item => {
                    return item.name.includes(this.text_search);
                }).slice(0, this.count_view);
                this.total = store.state.product.products.filter(item => {
                    return item.name.includes(this.text_search);
                }).length;
            } else {
                this.total = store.state.product.products.length;
                this.products = store.state.product.products.slice(0, this.count_view);
            }
        }
    },
    created() {
        store.dispatch("product/getAllProduct");
        this.products
    },
};
</script>
<style>
.page-content {
    height: 100vh;
}

.content {
    background: #fff;
}

.btn-prev,
.btn-next {
    text-align: center;
    vertical-align: middle;
    user-select: none;
    background-color: transparent;
    color: #000;
    border: none;
    padding: 0.75rem;
}
</style>