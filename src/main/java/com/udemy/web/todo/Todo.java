package com.udemy.web.todo;

import java.time.LocalDate;
import java.time.LocalTime;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

//DataBase(MYSQL)
//static LIST of Todos==>Database(H2,MYSQL)

@Entity(name = "List")
public class Todo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String description;
	private LocalDate targetdate;
	private LocalTime time;
	private boolean complete;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id", nullable = false)
	private User user;

	public Todo(int id, String description, LocalDate targetdate, LocalTime time, boolean complete, User user) {
		super();
		this.id = id;
		this.description = description;
		this.targetdate = targetdate;
		this.time = time;
		this.complete = complete;
		this.user = user;
	}

	public Todo() {

	}

	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getId() {
		return id;
	}

	public String getDescription() {
		return description;
	}

	public LocalDate getTargetdate() {
		return targetdate;
	}

	@Override
	public String toString() {
		return "Todo [id=" + id + ", description=" + description + ", targetdate=" + targetdate + ", time=" + time
				+ ", complete=" + complete + "]";
	}

	public LocalTime getTime() {
		return time;
	}

	public void setTime(LocalTime time) {
		this.time = time;
	}

	public boolean isComplete() {
		return complete;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setTargetdate(LocalDate targetdate) {
		this.targetdate = targetdate;
	}

	public void setComplete(boolean complete) {
		this.complete = complete;
	}

}
