<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

		<h1 class="text-center mt-3">Add Your Notes</h1>

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Note Title</label> <input
								type="email" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Note Title Here...">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Note Content</label>
							<textarea rows="10" cols="" class="form-control"
								placeholder="Note Content Here..."></textarea>

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