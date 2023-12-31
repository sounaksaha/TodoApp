package com.sounak.web.repo;

import org.springframework.data.jpa.repository.JpaRepository;


import com.sounak.web.todo.User;

public interface UserRepo extends JpaRepository<User, Integer> {
	public User findByEmail(String email);

	public User findByEmailAndPassword(String email, String password);

	public User findByUsername(String username);
}
