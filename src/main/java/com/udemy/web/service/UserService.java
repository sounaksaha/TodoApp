package com.udemy.web.service;

import com.udemy.web.todo.User;


public interface UserService {

	

	User login(String email,String password);

	String registeruser(User user);
	
	User findProfile(User user);
}
