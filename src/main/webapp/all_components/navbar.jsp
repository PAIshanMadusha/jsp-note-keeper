<%@page import="com.User.UserDetails"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
	<a class="navbar-brand" href="#"><i class="fa fa-book mr-1"
		aria-hidden="true"></i>NOTE-KEEPER</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp"><i
					class="fa fa-home mr-1" aria-hidden="true"></i>Home <span
					class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link" href="#"><i
					class="fa fa-plus mr-1" aria-hidden="true"></i>Add Notes</a></li>
			<li class="nav-item"><a class="nav-link" href="#"><i
					class="fa fa-sticky-note mr-1" aria-hidden="true"></i>Show Notes</a></li>
		</ul>

		<%
		UserDetails user = (UserDetails) session.getAttribute("userD");

		if (user != null) {
		%>
		<a href="" class="btn btn-light my-2 my-sm-0 mr-3" data-toggle="modal"
			data-target="#exampleModal" type="submit"><i
			class="fa fa-user-circle-o mr-1" aria-hidden="true"></i> <%= user.getName() %></a> 
			<a href="#" class="btn btn-light my-2 my-sm-0"
			type="submit"><i class="fa fa-sign-out mr-1" aria-hidden="true"></i>Logout</a>
		<%
		} else {
		%>
		<a href="login.jsp" class="btn btn-light my-2 my-sm-0 mr-3"
			type="submit"><i class="fa fa-sign-in mr-1" aria-hidden="true"></i>LogIn</a>
		<a href="register.jsp" class="btn btn-light my-2 my-sm-0"
			type="submit"><i class="fa fa-user-plus mr-1" aria-hidden="true"></i>Register</a>
		<%
		}
		%>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
</nav>