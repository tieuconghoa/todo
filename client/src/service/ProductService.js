import { store } from "@/store";
import { constants } from "@/constants";

export const productService = {
  getAllProduct,
  searchByProductName,
  getProductDetail
};

function getAllProduct() {
  const token = store.state.authentication.token;
  const headerOptions = {
    method: "GET",
    headers: {
      // Authorization: `Bearer ${token}`,
    },
  };
  return fetch(`${constants.API_URL}/product`, headerOptions)
    .then((response) => response.json())
    .catch((err) => {
      return err;
    });
}

function searchByProductName(productReq) {
  const token = store.state.authentication.token;
  const headerOptions = {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      // Authorization: `Bearer ${token}`,
    },
    body: JSON.stringify(productReq),
  };
  return fetch(`${constants.API_URL}/product/searchByName`, headerOptions)
    .then((response) => response.json())
    .catch((err) => {
      return err;
    });
}

function getProductDetail(productId) {
  const token = store.state.authentication.token;
  const headerOptions = {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      // Authorization: `Bearer ${token}`,
    },
  };
  return fetch(`${constants.API_URL}/product/${productId}`, headerOptions)
    .then((response) => response.json())
    .catch((err) => {
      return err;
    });
}
