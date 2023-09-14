<%@ include file="common/header.jspf"%>
<%-- <%@ include file="common/navbar.jspf"%> --%>



<style>
@import
	url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

.wrapper {
	position: fixed;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
	/* background: linear-gradient(-135deg, #c850c0, #4158d0);
	 /* background: linear-gradient(375deg, #1cc7d0, #2ede98); */ */
	 background: -webkit-linear-gradient(left, black, #25b7c4);
	background: linear-gradient(to right, black, #25b7c4);
	clip-path: circle(25px at calc(0% + 45px) 45px);
	clip-path: circle(25px at calc(100% - 45px) 45px);
	transition: all 0.3s ease-in-out;
}

#active:checked ~ .wrapper {
	clip-path: circle(75%);
}

.menu-btn {
	position: absolute;
	z-index: 2;
	right: 20px;
	/* left: 20px; */
	top: 20px;
	height: 50px;
	width: 50px;
	text-align: center;
	line-height: 50px;
	border-radius: 50%;
	font-size: 20px;
	color: #fff;
	cursor: pointer;
	background: linear-gradient(-135deg, #c850c0, #4158d0);
	/* background: linear-gradient(375deg, #1cc7d0, #2ede98); */
	transition: all 0.3s ease-in-out;
}

#active:checked ~ .menu-btn {
	background: #fff;
	color: #4158d0;
}

#active:checked ~ .menu-btn i:before {
	content: "\f00d";
}

.wrapper ul {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	list-style: none;
	text-align: center;
}

.wrapper ul li {
	margin: 15px 0;
}

.wrapper ul li a {
	color: none;
	text-decoration: none;
	font-size: 30px;
	font-weight: 500;
	padding: 5px 30px;
	color: #fff;
	position: relative;
	line-height: 50px;
	transition: all 0.3s ease;
}

.wrapper ul li a:after {
	position: absolute;
	content: "";
	background: #fff;
	width: 100%;
	height: 50px;
	left: 0;
	border-radius: 50px;
	transform: scaleY(0);
	z-index: -1;
	transition: transform 0.3s ease;
}

.wrapper ul li a:hover:after {
	transform: scaleY(1);
}

.wrapper ul li a:hover {
	color: #4158d0;
}

input[type="checkbox"] {
	display: none;
}

.content {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: -1;
	text-align: center;
	width: 100%;
	color: #202020;
}

.content .title {
	font-size: 40px;
	font-weight: 700;
}

.content p {
	font-size: 35px;
	font-weight: 600;
}

table {
	width: 100%;
	table-layout: fixed;
}

.tbl-header {
	background-color: rgba(255, 255, 255, 0.3);
}

.tbl-content {
	height: 500px;
	overflow-x: auto;
	margin-top: 0px;
	border: 1px solid rgba(255, 255, 255, 0.3);
}

th {
	padding: 20px 15px;
	text-align: left;
	font-weight: bold;
	font-size: 15px;
	font-family: Papyrus, fantasy;
	color: white;
	text-transform: uppercase;
}

td {
	padding: 15px;
	text-align: left;
	vertical-align: middle;
	font-weight: 300;
	font-size: 17px;
	font-family: Courier, monospace;
	color: black;
	border-bottom: solid 0px rgba(255, 255, 255, 0.1);
	color: black;
}

body {
	background: -webkit-linear-gradient(left, black, #25b7c4);
	background: linear-gradient(to right, black, #25b7c4);
	font-family: 'Roboto', sans-serif;
}

section {
	margin: 50px;
}
#logo {
	margin: 0 auto;
	width: 200px;
	font-family: 'Lily Script One', cursive;
	font-size: 60px;
	font-weight: bold;
	text-align: center;
	color: lightgray;
	-webkit-transition: 0.2s ease all;
	-moz-transition: 0.2s ease all;
	-ms-transition: 0.2s ease all;
	-o-transition: 0.2s ease all;
	transition: 0.2s ease all;
}

#logo1 {
	margin: 0 auto;
	width: 200px;
	font-family: 'Lily Script One', cursive;
	font-size: 15px;
	font-weight: bold;
	text-align: left;
	color: white;
	-webkit-transition: 0.2s ease all;
	-moz-transition: 0.2s ease all;
	-ms-transition: 0.2s ease all;
	-o-transition: 0.2s ease all;
	transition: 0.2s ease all;
}

#logo1:hover {
	color: red;
}

#logo:hover {
	color: #FFDB15;
}

#logo2 {
	font-family: Courier, monospace;
	font-size: 17px;
	font-weight: bold;
	color: white;
	-webkit-transition: 0.2s ease all;
	-moz-transition: 0.2s ease all;
	-ms-transition: 0.2s ease all;
	-o-transition: 0.2s ease all;
	transition: 0.2s ease all;
}

#logo2:hover {
	color: violet;
}

/* Add CSS for todo-ratio */
/* Add CSS for todo-ratio */
.todo-ratio {
	display: flex;
	justify-content: space-between;
	
    white-space: nowrap;
    overflow: hidden;
    animation: scrollTodo 20s linear infinite; /* Adjust duration as needed */
    padding: 10px;
    background-color: rgba(255, 255, 255, 0.3);
    color: white;
    font-weight: bold;
    font-size: 20px;
    font-family: Papyrus, fantasy;
    margin-top: 15px;
}

/* Keyframes for scrolling animation */
@keyframes scrollTodo {
    0% {
        transform: translateX(100%);
    }
    100% {
        transform: translateX(-100%);
    }
}

/* Style individual items within todo-ratio */
.todo-ratio p {
    display: inline-block;
    margin-right: 20px; /* Adjust as needed for spacing */
    background: linear-gradient(to right, red, orange, yellow, green, blue, indigo, violet);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
}
  .todo-ratio:hover {
            animation-play-state: paused;
        }
        /* Add this CSS to your stylesheet or within a <style> tag in your HTML */

.button {
    float: right; /* Float the button to the right */
    margin-top: 30px; /* Adjust top margin as needed for spacing */
    margin-right: 10px; /* Adjust right margin as needed for spacing */
    
}
        
.btn-gradient-2 {
 float: right; /* Float the button to the right */
    margin-top: 70px; /* Adjust top margin as needed for spacing */
    margin-right: 70px;
  position: relative;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  font-size: 1em;
  color: darkblue;
  padding: 1rem 2rem;
  cursor: pointer;
}
.parent {
  display: flex;
  flex-wrap: wrap;
  gap: 1rem;
  padding: 10rem;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
}
.btn-gradient-2 {
  background: linear-gradient(white, white) padding-box,
              linear-gradient(to right, darkblue, darkorchid) border-box;
  border-radius: 50em;
  border: 4px solid transparent;
}
</style>
<nav>
	<input type="checkbox" id="active">
	<label for="active" class="menu-btn"><i class="fas fa-bars"></i></label>
	<div class="wrapper">
		<ul>
			<li><a href="/list">Todo</a></li>
			<li><a href="#">About</a></li>
			<li><a href="/create">Add Todo</a></li>
			<li><a href="/profile">Profile</a></li>
			 <li><a href="/logout">LogOut</a></li>
		
		</ul>
	</div>
	</nav>
<body>
	<section>
		<!--for demo wrap-->
		<h4 id="logo">Todo</h4>
		<div class="tbl-header">
			<table cellpadding="0" cellspacing="0" border="0">

				<thead>
					<tr>
						<th id="logo1">ID</th>
						<th id="logo1">UserName</th>
						<th id="logo1">Description</th>
						<th id="logo1">Target Date</th>
						<th id="logo1">Time</th>
						<th id="logo1">Complete?</th>
						<th id="logo1">Actions</th>
					</tr>
				</thead>
			</table>
		</div>
		<div class="tbl-content">
			<table cellpadding="0" cellspacing="0" border="0">
				<tbody>
					<c:if test="${empty todo}">
						<p
							style="text-align: center; font-family: 'Lily Script One', cursive; font-size: 40px;">No
							todos are set..!!!</p>
						<p
							style="text-align: center; font-family: 'Lily Script One', cursive; font-size: 40px;">Please
							Add..!!!</p>
					</c:if>
					<c:forEach var="todo" items="${todo}" varStatus="loop">
						<tr>

							<td id="logo2">${loop.index+1}</td>
							<td id="logo2">${user.username}</td>
							<td id="logo2">${todo.description}</td>
							<td id="logo2">${todo.targetdate}</td>
							<td id="logo2">${todo.time}</td>
							<c:choose>
								<c:when test="${todo.complete}">
									<td id="logo2">Done</td>
								</c:when>
								<c:otherwise>
									<td id="logo2">Not Done</td>
								</c:otherwise>
							</c:choose>
							<td><a class="btn btn-view" href="/complete?id=${todo.id}">
									<i class="fas fa-check"></i> <!-- Updated icon class here -->
							</a> <a class="btn btn-edit" href="/update?id=${todo.id}"> <i
									class="fas fa-edit"></i>
							</a> <a class="btn btn-delete" href="/delete?id=${todo.id}"> <i
									class="fas fa-trash-alt"></i>
							</a></td>

						</tr>
					</c:forEach>

				</tbody>
			</table>
	
				  <div class="btn-gradient-2" id="add-button">
        <a href="/create"  >
            <i class="fas fa-plus" >ADD</i> <!-- Use the plus icon class here -->
        </a>
    </div>
		</div>

			
    	
	</section>
	<div class="todo-ratio">
			<p>Completed Todos: ${complete}</p>

			<p>Remaining Todos: ${remain}</p>
			<p>${hi}</p>
		</div>
	
	<!--   <p>
            using only HTML & CSS
         </p> -->
 <script>
//Add this JavaScript code to your page, preferably at the end of the HTML body or in a separate script file.

//Get references to your checkbox input and the "ADD" button.
const checkbox = document.getElementById('active');
const addButton = document.getElementById('add-button');

//Function to toggle the visibility of the "ADD" button based on the checkbox state.
function toggleAddButtonVisibility() {
  if (checkbox.checked) {
      addButton.style.display = 'none'; // Hide the button if the checkbox is checked (navbar is open).
  } else {
      addButton.style.display = 'block'; // Show the button if the checkbox is not checked (navbar is closed).
  }
}

//Initial call to set the button's visibility based on the initial state of the checkbox.
toggleAddButtonVisibility();

//Event listener to toggle the button when the checkbox state changes (navbar opens or closes).
checkbox.addEventListener('change', toggleAddButtonVisibility);

	//'.tbl-content' consumed little space for vertical scrollbar, scrollbar width depend on browser/os/platfrom. Here calculate the scollbar width .
	$(window).on(
			"load resize ",
			function() {
				var scrollWidth = $('.tbl-content').width()
						- $('.tbl-content table').width();
				$('.tbl-header').css({
					'padding-right' : scrollWidth
				});
			}).resize();
</script> 

 <script src="webjars/bootstrap/5.3.1/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.7.0/jquery.min.js"></script> 
<%@ include file="common/footer.jspf"%> 
</body>
</html>
