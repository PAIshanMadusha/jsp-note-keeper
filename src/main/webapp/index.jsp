<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
	background: url("img/bookimage.jpg");
	background-size: cover;
	width: 100%;
	height: 100vh;
}
</style>

<meta charset="UTF-8">
<title>Home Page</title>
<%@include file="all_components/allcss.jsp"%>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white"><i class="fa fa-book mr-1" aria-hidden="true"></i>NOTE-KEEPER: SAVE YOUR NOTES</h1>
			<a herf="login.jsp" class="btn btn-light"><i class="fa fa-sign-in mr-1" aria-hidden="true"></i>Login</a> <a
				herf="register.jsp" class="btn btn-light"><i class="fa fa-user-plus mr-1" aria-hidden="true"></i>Register</a>
		</div>
	</div>

	<%@include file="all_components/footer.jsp"%>

</body>
</html>