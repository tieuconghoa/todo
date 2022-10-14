export const loginService = {
  login,
};

function login(username, password) {
  const headerOptions = {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      username,
      password
    })
  };
  return fetch("http://localhost/api/authenticate", headerOptions)
  .then(response => response.json())
  .catch(err => { return err})
}
