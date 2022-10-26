package com.example.learning.service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.logging.log4j.util.Strings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.learning.entity.Todo;
import com.example.learning.model.TodoRequest;
import com.example.learning.repository.TodoRepository;
import com.example.learning.user.CustomUserDetails;

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
    public List<Todo> getTodoList(TodoRequest todoRequest) {
        List<Todo> todoList = new ArrayList<Todo>();
        if (todoRequest != null && Strings.isNotEmpty(todoRequest.getDateChange()) ) {

            todoList = todoRepo.findByDelFlgAnDate(0, todoRequest.getDateChange());
        } else {
            todoList = todoRepo.findByDelFlg(0);
        }
        return todoList;

    }

    /**
     * 
     * @param todo
     * @return
     */
    public List<Todo> createTodo(Todo todo, CustomUserDetails user, TodoRequest todoRequest) {
        todo.setCreateUser(user.getUser().getId());
        todo.setCreateDate(LocalDateTime.now());
        todo.setDelFlg(0);
        setCommonParamater(todo, user);
        todoRepo.save(todo);
        return getTodoList(todoRequest);
    }

    /**
     * update status
     * @param todo
     * @return
     */
    public List<Todo> updateTodo(Todo todo, CustomUserDetails user, TodoRequest todoRequest) {
        Todo entity = todoRepo.findById(todo.getId()).get();
        entity.setStatus(todo.getStatus());
        setCommonParamater(entity, user);
        todoRepo.save(entity);
        return getTodoList(todoRequest);
    }

    /**
     * delete logical
     * @param todo
     * @return
     */
    @Transactional(rollbackOn = Exception.class)
    public List<Todo> deleteTodo(Todo todo, CustomUserDetails user, TodoRequest todoRequest) {
        setCommonParamater(todo, user);
        todoRepo.deleleTodoLogicalById(todo.getId());
        return getTodoList(todoRequest);
    }

    /**
     * set param
     * @param todo
     * @param user
     */
    private void setCommonParamater(Todo todo, CustomUserDetails user) {
        todo.setUpdateUser(user.getUser().getId());
        todo.setUpdateDate(LocalDateTime.now());
    }

    /**
     * get data by date
     * @param dateChange
     * @return
     */
    public List<Todo> getTodoByDate(String dateChange) {
        if(Strings.isNotBlank(dateChange)) {
            return todoRepo.findByDelFlgAnDate(0, dateChange);
        } else {
            return todoRepo.findByDelFlg(0);
        }
    }

}
