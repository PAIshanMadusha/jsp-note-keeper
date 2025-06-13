<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
	UserDetails user1 = (UserDetails)session.getAttribute("userD");
	
	if(user1 == null){
		response.sendRedirect("login.jsp");
		session.setAttribute("login-error", "To Add Notes, Please Log In...");
	}
	
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes Page</title>
<%@include file="all_components/allcss.jsp"%>
</head>
<body>
	<div class="container-fluid p-0">

		<%@include file="all_components/navbar.jsp"%>

		<h1 class="text-center mt-3">📝 Add Your Notes</h1>

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="AddNotesServlet" method="post">
						<div class="form-group">

							<%
							UserDetails us = (UserDetails) session.getAttribute("userD");
							if (us != null) {
							%>
							<input type="hidden" value="<%=us.getId()%>" name="uid">
							<%
							} else {
							%>
							<p style="color: red;">User Not Logged In Or Session Expired!</p>
							<%
							}
							%>

							<label for="exampleInputEmail1">Enter Note Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Note Title Here..."
								name="title" required="required">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Note Content</label>
							<textarea rows="10" cols="" class="form-control"
								placeholder="Note Content Here..." name="content"
								required="required"></textarea>

						</div>
						<div class="container text-center mb-5">
							<button type="submit" class="btn btn-primary">Add a Note</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>