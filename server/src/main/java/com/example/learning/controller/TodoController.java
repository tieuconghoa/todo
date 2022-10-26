package com.example.learning.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.learning.entity.Todo;
import com.example.learning.model.TodoRequest;
import com.example.learning.service.TodoService;
import com.example.learning.user.CustomUserDetails;

@RestController
@CrossOrigin("http://localhost:8080")
public class TodoController {

    @Autowired
    private TodoService service;

    /**
     * get one data by primary key
     * @return entity: Todo
     */
    @RequestMapping(value = "/api/todo", method = RequestMethod.GET)
    public Todo getTodo(@RequestBody TodoRequest todoRequest) {
        return service.getTodo(todoRequest.getId());
    }

    /**
     * get all data is not deleted
     * @return List<Enity> : List<Todo>
     */
    @RequestMapping(value = "/api/todos", method = RequestMethod.GET)
    public ResponseEntity<List<Todo>> getTodos() {
        return ResponseEntity.ok().body(service.getTodoList(null));
    }

    /**
     * get all data by create date
     * @return List<Enity> : List<Todo>
     */
    @RequestMapping(value = "/api/todo/changeDate", method = RequestMethod.POST)
    public ResponseEntity<List<Todo>> getTodoByDate(@RequestBody TodoRequest todoRequest) {
        return ResponseEntity.ok().body(service.getTodoByDate(todoRequest.getDateChange()));
    }
    
    /**
     * create a data
     * @return List<Enity> : List<Todo>
     */
    @RequestMapping(value = "/api/todo", method = RequestMethod.POST)
    public ResponseEntity<List<Todo>> createTodo(@RequestBody TodoRequest todoRequest) {
        Authentication authentication = (Authentication) SecurityContextHolder.getContext().getAuthentication();
        CustomUserDetails user = (CustomUserDetails) authentication.getPrincipal();
        Todo todo = new Todo();
        todo.setContent(todoRequest.getContent());
        todo.setStatus(todoRequest.getStatus());
        return ResponseEntity.ok().body(service.createTodo(todo, user, todoRequest));
    }

    /**
     * update status of data
     * @return List<Enity> : List<Todo>
     */
    @RequestMapping(value = "/api/todo", method = RequestMethod.PUT)
    public ResponseEntity<List<Todo>> updateTodo(@RequestBody TodoRequest todoRequest) {
        Authentication authentication = (Authentication) SecurityContextHolder.getContext().getAuthentication();
        CustomUserDetails user = (CustomUserDetails) authentication.getPrincipal();
        Todo todo = new Todo();
        todo.setId(todoRequest.getId());
        todo.setContent(todoRequest.getContent());
        todo.setStatus(todoRequest.getStatus());
        return ResponseEntity.ok().body(service.updateTodo(todo, user, todoRequest));
    }

    /**
     * delete logical data
     * @return List<Enity> : List<Todo>
     */
    @RequestMapping(value = "/api/todo", method = RequestMethod.DELETE)
    public ResponseEntity<List<Todo>> deleteTodo(@RequestBody TodoRequest todoRequest) {
        Authentication authentication = (Authentication) SecurityContextHolder.getContext().getAuthentication();
        CustomUserDetails user = (CustomUserDetails) authentication.getPrincipal();
        Todo todo = service.getTodo(todoRequest.getId());
        return ResponseEntity.ok().body(service.deleteTodo(todo, user, todoRequest));
    }
}
