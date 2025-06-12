<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
UserDetails user3 = (UserDetails) session.getAttribute("userD");

if (user3 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "To View Notes, Please Log In...");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Notes</title>
<%@include file="all_components/allcss.jsp"%>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	<div class="container my-5">
		<h2 class="text-center mb-4">📝 All Notes</h2>
		<div class="row justify-content-center">
			<div class="col-md-10 col-lg-8">
				<div class="card shadow-lg border-0 rounded-4 overflow-hidden">
					<div class="text-center bg-light py-3">
						<img src="img/stickynote.png" alt="Sticky Note" class="img-fluid"
							style="max-width: 80px;">
					</div>
					<div class="card-body p-5">
						<h4 class="card-title text-primary font-weight-bold mb-3">Text
							Data for Note Title</h4>
						<p class="card-text text-dark mb-4">Text Data for Note
							Content.</p>

						<ul class="list-unstyled mb-4">
							<li><strong class="text-success">📅 Published Date:</strong>
								<span>text data</span></li>
							<li><strong class="text-success">👤 Published By:</strong> <span
								class="text-primary">text data</span></li>
						</ul>

						<div class="d-flex justify-content-center gap-3">
							<a href="#" class="btn btn-outline-danger px-4 mr-3"> <i
								class="fa fa-trash mr-1"></i> Delete
							</a> <a href="#" class="btn btn-outline-primary px-4"> <i
								class="fa fa-edit mr-1"></i> Edit
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>