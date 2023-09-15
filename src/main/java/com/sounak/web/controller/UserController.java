package com.sounak.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sounak.web.service.UserService;
import com.sounak.web.todo.User;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@GetMapping("/")
	public String loginPage(ModelMap model) {
		User user = new User();
		model.put("user", user);
		return "index";
	}

	@GetMapping("/login")
	public String login(ModelMap model) {
		User user = new User();
		model.put("user", user);
		return "registerlogin";
	}

	@PostMapping("/login")
	public String register(@Valid User user, BindingResult result, ModelMap model) {

		String message = userService.registeruser(user);
		if (message.length() == 29) {
			model.put("msg", message);
			return "registerlogin";
		}
		model.put("msg", message);
		System.out.println(user);
		System.out.println(message);
		return "registerlogin";
	}

	@PostMapping("/sign")
	public String signin(@RequestParam String email, @RequestParam String password, HttpSession session,
			ModelMap model) {
		User user1 = userService.login(email, password);
		if (user1 != null) {
			session.setAttribute("user", user1);

			return "redirect:/list";
		}

		return "redirect:/";

	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		// Invalidate the session
		session.invalidate();
		return "redirect:/"; // Redirect to the login page after logout
	}

}
