package com.udemy.web.repo;


import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.udemy.web.todo.Todo;
import com.udemy.web.todo.User;

public interface TodoRepo extends JpaRepository<Todo, Integer> {
	List<Todo> findByUser(User user);
	List<Todo> findByTargetdateAndTimeAndUser(LocalDate targetdate, LocalTime time, User user);
}
