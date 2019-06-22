<html>
<head>
<title>Apply for Course</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
h1 {
	color: black;
	margin-top: -36px;
}

body {
	background-color: cornsilk;
	min-height: 100%;
	min-width: 100%;
	background-size: 100% 100%;
	background-repeat: no-repeat;
	overflow-y: hidden;
	overflow-x: hidden;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">

			<div class="col-sm-offset-5 col-sm-6">
				<br> <br>
				<h1 class="text-justify">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Apply
					for Course</h1>
				<form name="myform" method="POST" class="form-horizontal"
					action="applyForCourse">

					<script>
						function validate() {
							var x = document.myform.nm.value;
							if (x == "") {
								alert("name cannot be empty");
								return false;
							} else if (!isNaN(x)) {
								alert("Name cannot be a number");
								return false;
							} else if (!/^[a-zA-Z]+$/g.test(x)) {
								alert("Name should contain only alphabets");
								return false;
							}
							var y = document.myform.em.value;
							if (y == "") {
								alert("email cannot be empty");
								return false;
							} else if (y.indexOf("@", 0) < 0) {
								alert("email should have @ character");
								return false;
							} else if (!/@+\w{2,3}/g.test(y)) {
								alert("email should have minimum two characters after @");
								return false;
							} else if (!/\@\S[a-zA-Z]/g.test(y)) {
								alert("email should have only alphabets after @");
								return false;
							} else if (y.indexOf(".", 0) < 0) {
								alert("email should have . operator");
								return false;
							} else if (!/\.\S{2}/g.test(y)) {
								alert("email should have minimum two character after . operator");
								return false;
							} else if (!/\.\S[a-zA-Z]/g.test(y)) {
								alert("email should have only alphabets after.");
								return false;
							}
							var z = document.myform.ps.value;
							if (z == "") {
								alert("password cannot be empty");
								return false;
							} else if (z.length<8 || z.length>14) {
								alert("Password should in between 8 to 14 characters");
								return false;
							} else if (!/[A-Z]/g.test(z)) {
								alert("Password should contain atleast one uppercase letter");
								return false;
							} else if (!/[@#!$%^&*]/g.test(z)) {
								alert("Password should have atleast one special character");
								return false;
							} else if (!/[0-9]/g.test(z)) {
								alert("Password should have atleast one number");
								return false;
							}
							var n = document.myform.conpw.value;
							if (n == "") {
								alert("should confirm the password");
								return false;
							} else if (z != n) {
								alert("password not matching");
								return false;
							}
							var u = document.myform.ph.value;
							if (u == "") {
								alert("enter the phone number");
								return false;
							} else if (isNaN(u)) {
								alert("only digits allowed");
								return false;
							} else if (u.length<10 || u.length>10) {
								alert("phone number must be 10 digits");
								return false;
							}
							var q = document.myform.gender.value;
							if (q == "") {
								alert("Choose a Gender");
								return false;
							}
						}
					</script>


					<span>
						<div class="form-group">
							<label for="name" class="control-label col-sm-4">Full_name:
								<span style="color: red">*</span>
							</label>
							<div class="col-sm-6">
								<input class="form-control" placeholder="Name" type="text"
									name="fullName">
							</div>
						</div>
						<div class="form-group">
							<label for="date" class="control-label col-sm-4">Date_of_Birth:<span
								style="color: red">*</span>
							</label>
							<div class="col-sm-6">
								<input class="form-control " type="date" placeholder="date"
									id="dateOfBirth" name="dateOfBirth">
							</div>
						</div>
						<div class="form-group">
							<label for="Qualification" class="control-label col-sm-4"
								required>Qualification: </label>
							<div class="col-sm-6">
								<select class="form-control" name="Qualification">
									<option value="">select</option>
									<option value="a">Bsc</option>
									<option value="b">BA</option>
									<option value="c">BE</option>
									<option value="d">MCA</option>
									<option value="e">MBA</option>
									<option value="f">MS</option>
									<option value="g">MTech</option>
									<option value="h">Btech</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="Marks" class="control-label col-sm-4" required>Marks
								Obtained: </label>
							<div class="col-sm-6">
								<input type="number" maxlength="2" min="60" max="99"
									name="marksObtained" required>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="control-label col-sm-4">Email:<span
								style="color: red">*</span>
							</label>
							<div class="col-sm-6">
								<input class="form-control " type="text" placeholder="Email"
									id="em" name="email">
							</div>
						</div>
			</div>
			<div class="form-group">
				<label for="status" class="control-label col-sm-4">Goals: <span
					style="color: red">*</span></label>
				<div class="col-sm-6">
					<input class="form-control" type="text" placeholder="Goals"
						id="Goals" name="goals">
				</div>
			</div>

			<div class="form-group">
				<label for="Gender" class="control-label col-sm-4">Gender:</label>
				<div class="col-sm-2">
					<input type="radio" name="gender" value="M">Male
				</div>
				<div class="col-sm-2">
					<input type="radio" name="gender" value="F">Female
				</div>
			</div>
			<div class="form-group">
				<label for="Date_Of_Interview" class="control-label col-sm-4">Date_Of_Interview:
					<span style="color: red">*</span>
				</label>
				<div class="col-sm-6">
					<input class="form-control" type="date" name="dateOfInterview"
						placeholder="Date_Of_Interview" id="date">
				</div>
			</div>
			<input type="hidden" value="${requestScope.scheduledProgramId}"
				name="scheduledProgramId">
		</div>
		<div class="col-sm-offset-4 col-sm-2">
			<input type="Submit" onclick="return validate()"
				class="btn  btn-success btn-lg" value="submit">
		</div>
		<div class="col-sm-2">
			<input type="Reset" class="btn btn-warning btn-lg" value="Clear">
		</div>
		</form>

		<br> <br> <br>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;All
			Fields are mandatory(*)</p>
	</div>
	</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>