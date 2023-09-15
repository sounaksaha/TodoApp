package com.sounak.web.service;

import com.sounak.web.todo.User;


public interface UserService {

	

	User login(String email,String password);

	String registeruser(User user);
	
	User findProfile(User user);
}
