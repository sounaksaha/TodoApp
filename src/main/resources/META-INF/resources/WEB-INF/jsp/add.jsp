<%@ include file="common/header.jspf"%>
 <%-- <%@ include file="common/navbar.jspf"%>  --%>
<!-- Include ClockPicker CSS -->
<!-- Include ClockPicker CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/clockpicker/0.0.7/bootstrap-clockpicker.min.css">

<!-- Include jQuery (required for ClockPicker) -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- Include ClockPicker JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/clockpicker/0.0.7/bootstrap-clockpicker.min.js"></script>


<style>

/* all */
@import
	url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap")
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

:root {
	--main-blue: #71b7e6;
	--main-purple: #9b59b6;
	--main-grey: #ccc;
	--sub-grey: #d9d9d9;
}

body {
	display: flex;
	height: 100vh;
	justify-content: center; /*center vertically */
	align-items: center; /* center horizontally */
	background: linear-gradient(135deg, var(--main-blue), var(--main-purple));
	padding: 10px;
}
/* container and form */
.container {
	max-width: 700px;
	width: 100%;
	background: #fff;
	padding: 25px 30px;
	border-radius: 5px;
}

.container .title {
	font-size: 25px;
	font-weight: 500;
	position: relative;
}

.container .title::before {
	content: "";
	position: absolute;
	height: 3.5px;
	width: 30px;
	background: linear-gradient(135deg, var(--main-blue), var(--main-purple));
	left: 0;
	bottom: 0;
}

.container form .user__details {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	margin: 20px 0 12px 0;
}
/* inside the form user details */
form .user__details .input__box {
	width: calc(100%/ 2 - 20px);
	margin-bottom: 15px;
}

.user__details .input__box .details {
	font-weight: 500;
	margin-bottom: 5px;
	display: block;
}

.user__details .input__box input {
	height: 45px;
	width: 100%;
	outline: none;
	border-radius: 5px;
	border: 1px solid var(--main-grey);
	padding-left: 15px;
	font-size: 16px;
	border-bottom-width: 2px;
	transition: all 0.3s ease;
}

.user__details .input__box input:focus, .user__details .input__box input:valid
	{
	border-color: var(--main-purple);
}

/* inside the form gender details */
form .gender__details .gender__title {
	font-size: 20px;
	font-weight: 500;
}

form .gender__details .category {
	display: flex;
	width: 80%;
	margin: 15px 0;
	justify-content: space-between;
}

.gender__details .category label {
	display: flex;
	align-items: center;
}

.gender__details .category .dot {
	height: 18px;
	width: 18px;
	background: var(--sub-grey);
	border-radius: 50%;
	margin: 10px;
	border: 5px solid transparent;
	transition: all 0.3s ease;
}

#dot-1:checked ~ .category .one, #dot-2:checked ~ .category .two, #dot-3:checked 
	 ~ .category .three {
	border-color: var(--sub-grey);
	background: var(--main-purple);
}

form input[type="radio"] {
	display: none;
}

/* submit button */
form .button {
	height: 45px;
	margin: 45px 0;
}

form .button input {
	height: 100%;
	width: 100%;
	outline: none;
	color: #fff;
	border: none;
	font-size: 18px;
	font-weight: 500;
	border-radius: 5px;
	background: linear-gradient(135deg, var(--main-blue), var(--main-purple));
	transition: all 0.3s ease;
}

form .button input:hover {
	background: linear-gradient(-135deg, var(--main-blue),
		var(--main-purple));
}

@media only screen and (max-width: 584px) {
	.container {
		max-width: 100%;
	}
	form .user__details .input__box {
		margin-bottom: 15px;
		width: 100%;
	}
	form .gender__details .category {
		width: 100%;
	}
	.container form .user__details {
		max-height: 300px;
		overflow-y: scroll;
	}
	.user__details::-webkit-scrollbar {
		width: 0;
	}
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

#logo:hover {
	color: cornflowerblue;
}
.flash-message {
    color: #fff; /* Text color */
    background-color: #ff5733; /* Background color */
    padding: 10px 20px; /* Padding around the flash message */
    border-radius: 5px; /* Rounded corners */
    font-size: 18px; /* Font size */
    font-weight: bold; /* Font weight */
    text-align: center; /* Text alignment */
    margin-top: 20px; /* Top margin */
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); /* Box shadow for a subtle lift */
    transition: background-color 0.3s ease; /* Smooth background color transition */
}

.flash-message:hover {
    background-color: #ff4320; /* Change background color on hover */
}
</style>


<body>
<div class="container">

	<h4 id="logo" >Add Todo</h4>
	<h4 id="flashMessage" >${ error}</h4>
	<form:form method="post" modelAttribute="todo">
		<div class="user__details">
			<fieldset class="input__box">
				<form:label path="description" class="form-label">Description</form:label>
				<form:input type="text" class="form-control" path="description"
					required="required" placeholder="Enter a description for your task" />
			</fieldset>
			<fieldset class="input__box">
				<form:label path="targetdate" class="form-label">Target Date</form:label>
				<form:input type="date" class="form-control" path="targetdate"
					required="required" />
			</fieldset>
			<fieldset class="input__box">
				<form:label path="time" class="form-label">Time (12-Hour Format)</form:label>
				<div class="input-group clockpicker">
					<form:input type="text" class="form-control" id="time" path="time"
						required="required" placeholder="HH:MM AM/PM" />
					<span class="input-group-addon"> <span
						class="glyphicon glyphicon-time"></span>
					</span>
				</div>
			</fieldset>


		</div>

		<div class="button">
			<input type="submit" value="Submit">
		</div>
	</form:form>
</div>
</body>

<script>

//Check if the flash message is not empty
// Check if the flash message is not empty
if ($.trim($('#flashMessage').text()) !== '') {
    // Apply styles to the flash message
    $('#flashMessage').css({
        'color': 'white', /* Text color */
        'background-color': 'black', /* Background color */
        'padding': '10px 20px', /* Padding around the flash message */
        'border-radius': '5px', /* Rounded corners */
        'font-size': '18px', /* Font size */
        'font-weight': 'bold', /* Font weight */
        'text-align': 'center', /* Text alignment */
        'margin-top': '20px', /* Top margin */
        'box-shadow': '0px 4px 6px #000' /* Black box shadow */
    });
}

	$(document).ready(function() {
		// Initialize the ClockPicker
		$('.clockpicker').clockpicker({
			autoclose : true,
			twelvehour : true
		});

		// Format the time input as HH:MM AM/PM
		$('#time').on('change', function() {
			var timeInput = $(this).val();
			if (!/^\d{1,2}:\d{2}\s[APap][Mm]$/.test(timeInput)) {
				// Invalid format, try to format it correctly
				var timeRegex = /(\d{1,2})(:)(\d{2})\s?([APap][Mm])?/;
				var match = timeInput.match(timeRegex);
				if (match) {
					var hours = match[1];
					var minutes = match[3];
					var ampm = match[4] ? match[4].toUpperCase() : 'AM';
					$(this).val(hours + ':' + minutes + ' ' + ampm);
				}
			}
		});
	});
</script>



