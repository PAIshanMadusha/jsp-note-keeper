<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="all_components/allcss.jsp"%>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-sign-in fa-4x" aria-hidden="true"></i>
						<h4>LOG-IN</h4>
					</div>

					<%
					String invalidMsg = (String) session.getAttribute("login-failed");

					if (invalidMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=invalidMsg%></div>
					<%
					session.removeAttribute("login-failed");
					}
					%>

					<%
					String withoutLogin = (String) session.getAttribute("login-error");
					if (withoutLogin != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=withoutLogin%></div>
					<%
					session.removeAttribute("login-error");
					}
					%>

					<%
					String lgotMsg = (String) session.getAttribute("logoutMsg");
					if (lgotMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=lgotMsg%></div>
					<%
					session.removeAttribute("logoutMsg");
					}
					%>

					<div class="card-body">
						<form action="LoginServlet" method="post">
							<div class="form-group">
								<label>Enter Your Email: </label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Email" name="uEmail">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password: </label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="uPassword">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>