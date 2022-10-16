package com.example.learning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.learning.model.Todo;
import com.example.learning.repository.TodoRepository;

@Service
public class TodoService {

    @Autowired
    private TodoRepository todoRepo;

    /**
     * 
     * @param id
     * @return
     */
    public Todo getTodo(int id) {
        Todo todo = todoRepo.findById(id).get();
        return todo;

    }

    /**
     * 
     * @return
     */
    public List<Todo> getTodoList() {
        List<Todo> todoList = todoRepo.findAll();
        return todoList;

    }
    
    /**
     * 
     * @param todo
     * @return
     */
    public List<Todo> createTodo(Todo todo) {
        todoRepo.save(todo);
        return  getTodoList();
    }

    /**
     * 
     * @param todo
     * @return
     */
    public List<Todo> updateTodo(Todo todo) {
        todoRepo.save(todo);
        return  getTodoList();
    }

    /**
     * 
     * @param todo
     * @return
     */
    public List<Todo> deleteTodo(Todo todo) {
        todoRepo.deleteById(todo.getId());;
        return  getTodoList();
    }
}
