<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
UserDetails user2 = (UserDetails) session.getAttribute("userD");

if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "To Add Notes, Please Log In...");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<%@include file="all_components/allcss.jsp"%>
</head>
<body style="background-image: url('img/bookimage.jpg'); background-size: cover; background-repeat: no-repeat; background-position: center;">
	<div class="container-fluid p-0">
		<%@include file="all_components/navbar.jsp"%>

		<div class="d-flex justify-content-center align-items-center"
			style="min-height: 90vh;">
			<div class="card shadow-lg border-0 rounded-4 p-4 text-center" style="background-color: rgba(255, 255, 255, 0);">
				<div class="card-body">
					<img alt="Note Image" src="img/notebook.jpg" class="img-fluid mb-4"
						style="background: transparent; max-width: 450px; border-radius: 26px; transition: transform 0.3s;"
						onmouseover="this.style.transform='scale(1.05)'"
						onmouseout="this.style.transform='scale(1)'">
					<h1 class="fw-bold mb-3" style="font-size: 1.8rem; color: white;">You
						Can Start Writing Your Notes Now</h1>
					<a href="addNotes.jsp"
						class="btn btn-primary btn-lg rounded-pill px-4 py-2 shadow-sm">Start
						Here</a>
				</div>
			</div>
		</div>
	</div>

	<%@include file="all_components/footer.jsp"%>
</body>
</html>