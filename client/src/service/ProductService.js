import { store } from "@/store";
import { constants } from "@/constants";

export const productService = {
  getAllProduct,
};

function getAllProduct() {
  const token = store.state.authentication.token;
  const headerOptions = {
    method: "GET",
    headers: {
      Authorization: `Bearer ${token}`,
    },
  };
  return fetch(`${constants.API_URL}/product`, headerOptions)
    .then((response) => response.json())
    .catch((err) => {
      return err;
    });
}
