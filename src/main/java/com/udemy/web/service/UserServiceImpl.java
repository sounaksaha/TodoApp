package com.udemy.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.udemy.web.repo.UserRepo;
import com.udemy.web.todo.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepo userRepo;

	@Override
	public String registeruser(User user) {
		User user1 = userRepo.findByEmail(user.getEmail());
		if (user1 == null) {
			User user2 = new User();
			user2.setUsername(user.getUsername());
			user2.setEmail(user.getEmail());
			user2.setPassword(user.getPassword());
			userRepo.save(user2);

			return "Registered Successfully...!!!";
		} else {
			return "User Already Exist...!!!";
		}

	}

	@Override
	public User login(String email,String password) {
		User user2=userRepo.findByEmail(email);
		if(user2!=null && user2.getPassword().equals(password) ) {
			
			return user2;
			
		}
		
		return null;
	}

	@Override
	public User findProfile(User user) {
		User user3 = userRepo.findByEmail(user.getEmail());
		System.out.println(user3);
		return user3;
		
	}
	

}
