import { store } from "@/store";
import { constants }  from '@/constants'
export const todoService = {
    getAll,
    getOne,
    createTodo,
    updateTodo,
    deleteTodo,
    searchByDate
  };
  
  function getAll() {
    const token = store.state.authentication.token;
    const headerOptions = {
      method: "GET",
      headers: {
        "Authorization": `Bearer ${token}`,
      }
    };
    return fetch(`${constants.API_URL}/todos`, headerOptions)
    .then(response => response.json())
    .catch(err => { return err})
  }
  
  function getOne(id) {
    const token = store.state.authentication.token;
    const headerOptions = {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
      body : JSON.stringify(id)
    };
    return fetch(`${constants.API_URL}/todo`, headerOptions)
    .then(response => response.json())
    .catch(err => { return err})
  }

  function searchByDate(todo) {
    const token = store.state.authentication.token;
    const headerOptions = {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
      body : JSON.stringify(todo)
    };
    return fetch(`${constants.API_URL}/todo/changeDate`, headerOptions)
    .then(response => response.json())
    .catch(err => { return err})
  }

  function createTodo(todo){
    const token = store.state.authentication.token;
    const headerOptions = {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
      body : JSON.stringify(todo)
    };
    return fetch(`${constants.API_URL}/todo`, headerOptions)
    .then(response => response.json())
    .catch(err => { return err})
  }

  function updateTodo(todo){
    const token = store.state.authentication.token;
    const headerOptions = {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
      body : JSON.stringify(todo)
    };
    return fetch(`${constants.API_URL}/todo`, headerOptions)
    .then(response => response.json())
    .catch(err => { return err})
  }

  function deleteTodo(todo){
    const token = store.state.authentication.token;
    const headerOptions = {
      method: "DELETE",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
      body : JSON.stringify(todo)
    };
    return fetch(`${constants.API_URL}/todo`, headerOptions)
    .then(response => response.json())
    .catch(err => { return err})
  }
  