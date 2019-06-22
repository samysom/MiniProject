<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Add Course</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-dark sticky-top">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">

			<a class="navbar-brand" style="color: white">Home</a>
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<li class="nav-item active"></li>
			</ul>

			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false" style="margin-left: -150px">Course
					Maintainance</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton"
					style="margin-left: -150px">
					<a class="dropdown-item" href="./AddCourse.html">AddCourse</a> <a
						class="dropdown-item" href="./ViewCourse.html">ViewCourse</a> <a
						class="dropdown-item" href="./UpdateCourse.html">UpdateCourse</a>
				</div>
			</div>
		</div>
	</nav>
	<br>
	<br>
	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<form action="viewScheduledProgram" method="post">
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="programName">Program Name</label> <input type="text"
							class="form-control" name="programName"
							placeholder="Program Name" required>
					</div>
					<br>
					<div class="form-group col-md-6">
						<label for="location">Location</label> <input type="text"
							class="form-control" name="location" placeholder="location"
							required>
					</div>
					<br>

					<div class="form-group col-md-6">
						<label for="startDate">Start Date</label> <input type="date"
							name="startDate" required>
					</div>
					<div class="form-group col-md-6">
						<label for="endDate">End Date</label> <input type="date"
							name="endDate" required>
					</div>
					<div class="form-group col-md-6">
						<label for="sessionsPerWeek">Session Per Week</label> <input
							type="text" name="sessionsPerWeek" required>
					</div>
					<br>

					<div class="form-group col-md-8">
						<button type="submit" class="btn btn-primary">Add Program</button>
					</div>
				</div>
			</form>
</body>
</html>