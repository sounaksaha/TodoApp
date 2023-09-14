<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
@import
	url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap")
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

.container {
	display: flex;
	row-gap: 10px;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	height: 100vh;
	width: 100%;
	overflow: hidden;
}

.container .image {
	position: absolute;
	height: 100%;
	width: 100%;
	object-fit: cover;
	z-index: -1;
}

body::after {
	position: absolute;
	content: "";
	top: 0;
	height: 100%;
	width: 100%;
	background: #000;
	z-index: -1;
	opacity: 0.2;
}

.container header {
	font-size: 60px;
	color: #000;
	font-weight: 600;
	text-align: center;
}

.container p {
	font-size: 16px;
	font-weight: 400;
	color: #000;
	max-width: 550px;
	text-align: center;
}

.container .time-content {
	display: flex;
  column-gap: 30px;
  align-items: center;
  margin: 2rem;
  border: 1px solid white;
  padding: 2rem 2.5rem;
  border-radius: 0.5rem;
  background: rgba(250, 250, 250, 0.2); /* Background color for the time area */
  color: #fff; 
}

.time-content .time {
	 display: flex;
  align-items: center;
  flex-direction: column;
}

 .time .number {
      font-weight: 800;
      font-size: 80px;
      line-height: 1;
      color: #000; /* Change the color to black */
    }
.time .text {
	text-transform: capitalize;
  color: #fff;
  font-weight: 600;
  font-size: 12px;
}

.email-content {
	display: flex;
	align-items: center;
	flex-direction: column;
	width: 100%;
}

.email-content p {
	font-size: 20px;
}

.input-box {
	display: flex;
	align-items: center;
	height: 40px;
	max-width: 360px;
	width: 100%;
	margin-top: 20px;
	column-gap: 20px;
}

.input-box input, .input-box button {
	height: 100%;
	outline: none;
	border: none;
	border: 1px solid #fff;
	border-radius: 4px;
	background-color: rgba(255, 255, 255, 0.2);
	font-weight: 400;
}

.input-box input {
	width: 100%;
	padding: 0 15px;
	color: #fff;
}

input::placeholder {
	color: #fff;
}

.input-box button {
	cursor: pointer;
	background-color: #eee;
	color: #0d6a81;
	white-space: nowrap;
	padding: 0 20px;
	transition: all 0.3s ease;
}

.input-box button:hover {
	background-color: #fff;
}

@media screen and (max-width: 480px) {
	.container header {
		font-size: 50px;
	}
}
 .email-content button {
      background-color: #007bff; /* Blue background color */
      color: #000; /* White text color */
      padding: 10px 20px; /* Padding around the text */
      border: none; /* No border */
      border-radius: 5px; /* Rounded corners */
      font-size: 16px; /* Font size */
      cursor: pointer; /* Cursor on hover */
      text-decoration: none; /* Remove underline on hover */
      transition: background-color 0.3s ease; /* Smooth background color transition */
    }

    /* Style for the button on hover */
    .email-content button:hover {
      background-color: #0056b3; /* Darker blue background color on hover */
    }
       #date {
            font-size: 18px;
            font-weight: 600;
            color: #000;
            margin-top: 10px;
            text-align: center;
        }
</style>
<body>
	<section class="container">
		<img
			src="https://images.pexels.com/photos/3243/pen-calendar-to-do-checklist.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
			alt="" class="image" />
		<div class="time-content">
			<div class="time hours">
				<span class="number"></span> <span class="text" style="color:black">hours</span>
			</div>
			<div class="time minutes">
				<span class="number"></span> <span class="text" style="color:black">minutes</span>
			</div>
			<div class="time seconds">
				<span class="number"></span> <span class="text" style="color:black">seconds</span>
			</div>
		</div>
		<div class="email-content">
			<p>Stay organized and boost productivity with our intuitive to-do list...!!!</p>
			<div class="input-box">
				<p id="date"></p>
				 <a href="/login">
        <button class="btn btn-outline-info">Sign In</button>
      </a>
			</div>
		</div>
	</section>

</body>

<script>
	const hours = document.querySelector(".hours .number"), minutes = document
			.querySelector(".minutes .number"), seconds = document
			.querySelector(".seconds .number");

	function updateTime() {
		const currentTime = new Date();

		const currentHours = currentTime.getHours();
		const currentMinutes = currentTime.getMinutes();
		const currentSeconds = currentTime.getSeconds();

		hours.textContent = currentHours < 10 ? `0${currentHours}`
				: currentHours;
		minutes.textContent = currentMinutes < 10 ? `0${currentMinutes}`
				: currentMinutes;
		seconds.textContent = currentSeconds < 10 ? `0${currentSeconds}`
				: currentSeconds;
		
		
		const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
        const today = currentTime.toLocaleDateString('en-US', options);
        date.textContent = today;
        
	}

	updateTime(); // Initial call to display the current time

	setInterval(updateTime, 1000);
</script>
</html>