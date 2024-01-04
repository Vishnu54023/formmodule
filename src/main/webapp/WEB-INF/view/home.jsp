

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
     

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>


	<div class="container">
		<div class="card col-md-6 mx-auto mt-4">
			<div class="card-body">
				<h2 class="text-center">Register here</h2>
				<div class="alert alert-danger" role="alert">
					<form:errors path="user.*" />
				</div>

				<form action="myserver" method="post">
					<div class="mb-3">
						<label for="name" class="form-label">Name </label> <input
							type="text" class="form-control" id="name" name="name"
							aria-describedby="emailHelp">
					</div>
					<div class="mb-3">
						<label for="id" class="form-label">Your id </label> <input
							type="text" class="form-control" id="id"
							aria-describedby="emailHelp" name="id">
					</div>
					<div class="mb-3">
						<label for="dob" class="form-label">Your DOB </label> <input
							type="text" class="form-control" id="dob"
							aria-describedby="emailHelp" placeholder="dd/MM/YYYY" name="dob">
					</div>

					<div class="mb-3">
						<label for="courses" class="form-label">Select Courses </label> <select
							class="form-select" id="courses"
							aria-label="Default select example" name="courses" multiple>

							<option name="Java">Java</option>
							<option value="Python">Python</option>
							<option value="JavaScript">JavaScript</option>
							<option value="C++">C++</option>
							<option value="C">C</option>

						</select>
					</div>

					<div class="mb-3">
						<span>Select Gender :</span> <input type="radio" id="g1"
							value="Male" name="gender"> <label for="g1">Male</label>

						<input type="radio" id="g2" value="Female" name="gender">
						<label for="g2">Female</label>

					</div>

					<div class="mb-3">
						<label for="type" class="form-label">Select Type </label> <select
							class="form-select" id="type" aria-label="Default select example"
							name="type">

							<option value="Old Student">Old Student</option>
							<option value="New Student">New Student</option>

						</select>
					</div>



					<div class="card">
						<div class="card-body">
							<p>Enter Address</p>

							<div class="form-group">
								<label for="city" class="form-label">Enter City</label> <input
									type="text" name="address.city" id="city" class="form-control">

							</div>

							<div class="form-group">
								<label for="street" class="form-label">Enter Street</label> <input
									type="text" name="address.street" id="street"
									class="form-control">

							</div>

						</div>


					</div>



					<div class="text-center">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>

				</form>


			</div>
		</div>

	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>