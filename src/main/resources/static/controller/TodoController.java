package com.udemy.web.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.udemy.web.service.TodoService;
import com.udemy.web.todo.Todo;

import jakarta.validation.Valid;

@Controller
public class TodoController {

	private TodoService todoService;

	public TodoController(TodoService todoService) {
		super();
		this.todoService = todoService;
	}

	
	
	
	@GetMapping("/list")
	public String viewTodo(ModelMap model) {
		List<Todo> todo = todoService.getAllTodo();
		model.addAttribute("todo", todo);
		return "dashboard";
	}
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String showNewTodos(ModelMap model) {
		
//		Todo todo = new Todo(0, "username", "", LocalDate.now().plusWeeks(1), false);
//		model.put("todo", todo);
		return "add";
	}

	@RequestMapping(value = "/create", method = {RequestMethod.POST})
	public String addTodo(@Valid Todo todo) {
		todoService.createTodo(todo);
		System.out.println(todo);
		return "redirect:list";

	}
	@RequestMapping ("/delete")
	public String deletebyId(@RequestParam int id) {
		
		todoService.delete(id);
		
		return "redirect:list";
		
	}
	
	
	  @GetMapping("/update")
	    public String updatebyId(@RequestParam int id,ModelMap model) {
	        Todo todo = todoService.getTodoById(id);
//	        model.addAttribute("task", task);
	        model.addAttribute(todo);
	        System.out.println(todo);
	        return "add";
	    }
//	@GetMapping ("/update")
//	public String updatebyId(@RequestParam int id) {
//		
//		Todo todo = todoService.updatebyId(id);
//		
//		return "add";
//		
//	}

}
