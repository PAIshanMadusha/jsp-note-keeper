<%@page import="com.Db.DBConnect"%>
<%@page import="com.DAO.PostDAO"%>
<%@page import="com.User.Post"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");

if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "To Edit Notes, Please Log In...");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Notes Page</title>
<%@include file="all_components/allcss.jsp"%>
</head>
<body>

	<%
	Integer noteId = Integer.parseInt(request.getParameter("note_id"));
	
	PostDAO post = new PostDAO(DBConnect.getConn());
	
	Post p = post.getDataById(noteId);
	
	%>
	<div class="container-fluid p-0">

		<%@include file="all_components/navbar.jsp"%>

		<h1 class="text-center mt-3">📝 Edit Your Notes</h1>

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="EditNotesServlet" method="post">
					<input type="hidden" value=<%=noteId%> name="noteId">
						<div class="form-group">

							<label for="exampleInputEmail1">Enter Note Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Note Title Here..."
								name="title" required="required" value="<%=p.getTitle()%>">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Note Content</label>
							<textarea rows="10" cols="" class="form-control"
								placeholder="Note Content Here..." name="content"
								required="required"><%=p.getContent()%></textarea>

						</div>
						<div class="container text-center mb-5">
							<button type="submit" class="btn btn-primary">Update Note</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>