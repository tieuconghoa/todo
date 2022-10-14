package com.example.learning.model;

public class TodoResponse {

    private Todo todo;

    public TodoResponse(Todo todo) {
        super();
        this.todo = todo;
    }

    /**
     * @return the todo
     */
    public Todo getTodo() {
        return todo;
    }

    /**
     * @param todo the todo to set
     */
    public void setTodo(Todo todo) {
        this.todo = todo;
    }

}
