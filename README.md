# TodoApp

This is a simple Todo application built with Java Spring Boot and JSP (JavaServer Pages). It allows users to manage their tasks and todos efficiently.

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Contributing](#contributing)

## Features

- User registration and login.
- Create, read, update, and delete (CRUD) tasks.
- Set task due dates and times.
- Mark tasks as completed.
- View a list of tasks.
- User logout functionality.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Java Development Kit (JDK) 8 or higher installed.
- Apache Maven for building the project.
- MySQL database for data storage.
- An Integrated Development Environment (IDE) like Eclipse or IntelliJ IDEA.
- Git for version control.
- Web browser for running the application.

## Getting Started

To get started with this project, follow these steps:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/sounaksaha/TodoApp.git
2.Open the project in your preferred IDE.

3.Configure your MySQL database settings in application.properties:
                spring.datasource.url=jdbc:mysql://localhost:3306/todo_app
                spring.datasource.username=your-user_name
                spring.datasource.password=your-password
4. Build the project using Maven:
                mvn clean install
5: Run the application:
                mvn spring-boot:run
6. Access the application in your web browser at http://localhost:8080.

## Usage
          TodoController
              /list: View the list of todos.
              /create: Create a new todo.
              /delete?id=<todo-id>: Delete a todo by its ID.
              /update?id=<todo-id>: Update a todo by its ID.
              /complete?id=<todo-id>: Mark a todo as completed.
          UserController
              /: Login page.
              /login: Register and login page.
              /sign: Sign in with email and password.
              /logout: Log out and invalidate the session.
## Project Structure
              src/main/java/com/sounak/web/controller: Contains controller classes.
              src/main/java/com/sounak/web/service: Contains service classes.
              src/main/java/com/sounak/web/todo: Contains entity classes.
              src/main/resources: Contains configuration files and JSP templates.
## Contributing
            Contributions are welcome! Here are some ways you can contribute to this project:

            Report issues or bugs.
            Suggest new features or improvements.
            Create pull requests to fix issues or add features.
