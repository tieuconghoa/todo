import { store } from "@/store";
import { constants } from "@/constants";

export const productService = {
  getAllProduct,
  searchByProductName,
  getProductDetail
};

async function getAllProduct() {
  const token = store.state.authentication.token;
  const headerOptions = {
    method: "GET",
    headers: {
      // Authorization: `Bearer ${token}`,
    },
  };
  return await fetch(`${constants.API_URL}/product`, headerOptions)
    .then((response) => response.json())
    .catch((err) => {
      return err;
    });
}

async function searchByProductName(productReq) {
  const token = store.state.authentication.token;
  const headerOptions = {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      // Authorization: `Bearer ${token}`,
    },
    body: JSON.stringify(productReq),
  };
  return await fetch(`${constants.API_URL}/product/searchByName`, headerOptions)
    .then((response) => response.json())
    .catch((err) => {
      return err;
    });
}

async function getProductDetail(productId) {
  const token = store.state.authentication.token;
  const headerOptions = {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      // Authorization: `Bearer ${token}`,
    },
  };
  return await fetch(`${constants.API_URL}/product/${productId}`, headerOptions)
    .then((response) => response.json())
    .catch((err) => {
      return err;
    });
}
