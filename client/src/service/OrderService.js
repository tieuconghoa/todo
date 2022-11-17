import store from "@/store";
import { constants } from "@/constants";
export const orderService = {
  getLastestOrder,
  getAllOrder,
};

async function getLastestOrder() {
  const token = store.state.authentication.token;
  const headerOptions = {
    method: "GET",
    headers: {
      Authorization: `Bearer ${token}`,
    },
  };
  return await fetch(`${constants.API_URL}/order/lastest`, headerOptions)
    .then((response) => response.json())
    .catch((err) => {
      return err;
    });
}

async function getAllOrder() {
  const token = store.state.authentication.token;
  const headerOptions = {
    method: "GET",
    headers: {
      Authorization: `Bearer ${token}`,
    },
  };
  return await fetch(`${constants.API_URL}/order/all`, headerOptions)
    .then((response) => response.json())
    .catch((err) => {
      return err;
    });
}
