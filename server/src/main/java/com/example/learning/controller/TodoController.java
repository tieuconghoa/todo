package com.example.learning.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.learning.model.Todo;
import com.example.learning.model.TodoRequest;
import com.example.learning.service.TodoService;

@RestController
@CrossOrigin("http://localhost:8080")
public class TodoController {

    @Autowired
    private TodoService service;

    /**
     * 
     * @return
     */
    @RequestMapping(value = "/api/todo", method = RequestMethod.GET)
    public Todo getTodo(@RequestBody TodoRequest todoRequest) {
        return service.getTodo(todoRequest.getId());
    }

    @RequestMapping(value = "/api/todos", method = RequestMethod.GET)
    public List<Todo> getTodos() {
        return service.getTodoList();
    }
    
    
    @RequestMapping(value = "/api/todo", method = RequestMethod.POST)
    public List<Todo> createTodo(@RequestBody TodoRequest todoRequest) {
        Todo todo = new Todo();
        todo.setContent(todoRequest.getContent());
        todo.setStatus(todoRequest.getStatus());
        return service.createTodo(todo);
    }
    
    @RequestMapping(value = "/api/todo", method = RequestMethod.PUT)
    public List<Todo> updateTodo(@RequestBody TodoRequest todoRequest) {
        Todo todo = new Todo();
        todo.setId(todoRequest.getId());
        todo.setContent(todoRequest.getContent());
        todo.setStatus(todoRequest.getStatus());
        return service.updateTodo(todo);
    }
    
    @RequestMapping(value = "/api/todo", method = RequestMethod.DELETE)
    public List<Todo> deleteTodo(@RequestBody TodoRequest todoRequest) {
        Todo todo = new Todo();
        todo.setId(todoRequest.getId());
        return service.deleteTodo(todo);
    }
}
