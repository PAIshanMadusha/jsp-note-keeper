<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<%@include file="all_components/allcss.jsp"%>

</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-4x" aria-hidden="true"></i>
						<h4>Registration</h4>
					</div>
					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="form-group">
								<label>Enter Your Full Name: </label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="fname"
									placeholder="Full Name">

							</div>
							<div class="form-group">
								<label>Enter Your Email: </label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail" placeholder="Email">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password: </label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword" placeholder="Password">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>