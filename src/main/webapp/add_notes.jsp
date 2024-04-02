<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="header.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>

		<br>
		<h1>Please Fill Your Note Details</h1>
		<br>



		<!-- Form  -->

		<form action="SaveNoteServlet" method="post">
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label> 
				<input type="text"
						name="title" 
						class="form-control"
						id="title" 
						aria-describedby="emailHelp"
						placeholder="Enter Here"
						required>
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea id="content" 
						 name="content" 
						placeholder="Enter Your Content Here"
						class="form-control"
						style="height: 300px;"
						required></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add Note</button>
			</div>
		</form>

	</div>

</body>
</html>