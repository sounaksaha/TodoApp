package com.sounak.web.controller;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sounak.web.service.TodoService;
import com.sounak.web.service.UserService;
import com.sounak.web.todo.Todo;
import com.sounak.web.todo.User;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class TodoController {

	@Autowired
	private UserService userService;

	private TodoService todoService;

	public TodoController(TodoService todoService) {
		super();
		this.todoService = todoService;
	}

	@GetMapping("/list")
	public String viewTodo(ModelMap model, HttpSession session) {

		User user = (User) session.getAttribute("user");
		if (user != null) {
			List<Todo> todo = todoService.getTodoForUser(user);
			int totalTask = todo.size();
			int completedTask = 0;
			int remainTask = 0;

			for (Todo todos : todo) {
				if (todos.isComplete()) {
					completedTask++;
					remainTask = totalTask - completedTask;
				}

			}
			if (totalTask - completedTask == 0) {
				model.addAttribute("hi", "Your Target is Completed...!!!");
			}

			model.addAttribute("todo", todo);

			model.addAttribute("complete", completedTask);

			if (remainTask > 0) {
				model.addAttribute("remain", remainTask);
			}
			System.out.println(totalTask);
			System.out.println(completedTask);
			return "dashboard";
		}
		return "redirect:/";
	}

	@GetMapping("/create")
	public String showNewTodos(ModelMap model) {
		Todo todo = new Todo();
		model.put("todo", todo);

		return "add";
	}

	@PostMapping("/create")
	public String addTodo(ModelMap model, @Valid Todo todo, BindingResult result, HttpSession session,
			@RequestParam LocalDate targetdate, @RequestParam LocalTime time) {

		User user = (User) session.getAttribute("user");

		if (user != null) {

			if (result.hasErrors()) {
				return "add";
			}

			if (todoService.hasTodoWithSameTargetDate(user, targetdate, time)) {
				model.addAttribute("error", "A TODO item with the same Date and Time already exists...!!!");
				return "add";
			}
			todoService.createTodo(todo, user);
			System.out.println(todo);
		}
		return "redirect:list";

	}

	@RequestMapping("/delete")
	public String deletebyId(@RequestParam int id) {

		todoService.delete(id);

		return "redirect:list";

	}

	@GetMapping("/update")
	public String showbyId(@RequestParam int id, ModelMap model) {
		Todo todo = todoService.getTodoById(id);
		model.addAttribute("todo", todo);
		return "edit";
	}

	@RequestMapping("/complete")
	public String completebyId(@RequestParam int id) {

		todoService.completeTodo(id);

		return "redirect:list";
	}

	@PostMapping("/update")
	public String updatebyId(@RequestParam int id, @Valid Todo todo, BindingResult result) {

		todoService.updateTodoById(id, todo);
		System.out.println(todo);
		return "redirect:list";
	}

	@GetMapping("/profile")
	public String profilebyUser(HttpSession session, ModelMap model) {
		User user1 = (User) session.getAttribute("user");
		User user = userService.findProfile(user1);

		model.addAttribute("user3", user);
		return "profile";
	}

}
