<%@page import="java.util.List"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.DAO.PostDAO"%>
<%@page import="com.User.Post"%>
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
<style>
html, body {
	height: 100%;
	margin: 0;
}

body {
	display: flex;
	flex-direction: column;
	min-height: 100vh;
}

.content-wrapper {
	flex: 1;
}
</style>
<%@include file="all_components/allcss.jsp"%>
</head>
<body>
	<div class="content-wrapper">
		<%@include file="all_components/navbar.jsp"%>
		<%
		String updateMsg = (String) session.getAttribute("updateMsg");
		if (updateMsg != null) {
		%>
		<div class="alert alert-success" role="alert"><%=updateMsg%></div>
		<%
		session.removeAttribute("updateMsg");
		}
		%>
		<%
		String deleteFaildMsg = (String) session.getAttribute("deleteFaildMsg");
		if (deleteFaildMsg != null) {
		%>
		<div class="alert alert-danger" role="alert"><%=deleteFaildMsg%></div>
		<%
		session.removeAttribute("deleteFaildMsg");
		}
		%>
		<div class="container  my-4">
			<h2 class="text-center mb-4">📝 View Your All Notes</h2>
			<div class="row">
				<div class="col-md-12">
					<%
					if (user3 != null) {
						PostDAO objectPost = new PostDAO(DBConnect.getConn());
						List<Post> post = objectPost.getData(user3.getId());
						for (Post onePost : post) {
					%>
					<div class="card shadow-lg border-1 rounded-4 overflow-hidden mt-3">
						<div class="text-center bg-light py-3">
							<img src="img/stickynote.png" alt="Sticky Note" class="img-fluid"
								style="max-width: 80px;">
						</div>

						<div class="card-body p-4">
							<h5 class="card-title text-primary font-weight-bold mb-3"><%=onePost.getTitle()%></h5>
							<p class="card-text text-dark mb-4"><%=onePost.getContent()%></p>


							<ul class="list-unstyled mb-4">
								<li><strong class="text-primary">📅 Published
										Date:</strong> <span><%=onePost.getpDate()%></span></li>
								<li><strong class="text-primary">👤 Published By:</strong>
									<span><%=user3.getName()%></span></li>
							</ul>

							<div class="container text-center mt-2">
								<a href="DeleteServlet?note_id=<%=onePost.getId()%>"
									class="btn btn-outline-danger mr-2 px-4"> <i
									class="fa fa-trash mr-1"></i> Delete
								</a> <a href="edit.jsp?note_id=<%=onePost.getId()%>"
									class="btn btn-outline-primary px-4"> <i
									class="fa fa-edit mr-1"></i> Edit
								</a>
							</div>

						</div>
					</div>
					<%
					}
					}
					%>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>