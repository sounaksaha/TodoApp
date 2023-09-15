package com.sounak.web.service;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import org.springframework.stereotype.Service;

import com.sounak.web.repo.TodoRepo;
import com.sounak.web.todo.Todo;
import com.sounak.web.todo.User;

@Service
public class TodoService {

	private TodoRepo todoRepo;

	public TodoService(TodoRepo todoRepo) {
		super();
		this.todoRepo = todoRepo;
	}

	public void createTodo(Todo todo,User user) {
		
		todo.setUser(user);
		
		
		todoRepo.save(todo);

	}
	 public boolean hasTodoWithSameTargetDate(User user, LocalDate targetdate,LocalTime time) {
	        // Check if a TODO item with the same target date exists for the given user
        List<Todo> existingTodos = todoRepo.findByTargetdateAndTimeAndUser(targetdate,time, user );
	        return !existingTodos.isEmpty();
	    }

	public List<Todo> getTodoForUser(User user) {
		// TODO Auto-generated method stub
		return todoRepo.findByUser(user);
		
	}

	public void delete(int id) {
		todoRepo.deleteById(id);
	}

	public Todo getTodoById(int id) {
		// TODO Auto-generated method stub
		return todoRepo.findById(id).orElse(null);
	}

	public void updateTodoById(int id, Todo todo1) {
		Todo todo = todoRepo.findById(id).orElse(null);
		todo.setTargetdate(todo1.getTargetdate());
		todo.setDescription(todo1.getDescription());
		todo.setTime(todo1.getTime());
		todo.setComplete(false);
		todoRepo.save(todo);

	}

	public void completeTodo(int id) {
		Todo todo = todoRepo.findById(id).orElse(null);
		if (todo != null) {
			todo.setComplete(true);
			todoRepo.save(todo);
		}
	}
}
