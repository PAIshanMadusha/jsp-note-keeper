<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_components/allcss.jsp"%>
</head>
<body>
	<div class="container-fluid p-0">
		<%@include file="all_components/navbar.jsp"%>

		<div class="d-flex justify-content-center align-items-center"
			style="min-height: 90vh;">
			<div class="card shadow-lg border-0 rounded-4 p-4 text-center">
				<div class="card-body">
					<img alt="Note Image" src="img/notebook.jpg" class="img-fluid mb-4"
						style="background: transparent; max-width: 450px; border-radius: 26px; transition: transform 0.3s;"
						onmouseover="this.style.transform='scale(1.05)'"
						onmouseout="this.style.transform='scale(1)'">
					<h1 class="fw-bold mb-3" style="font-size: 1.8rem; color: #333;">You
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