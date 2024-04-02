<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="header.jsp"%>
<title>Insert title here</title>

</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>

		<br>
		<h1>Edit Your Note</h1>
		<br>
		<%
			int note_id = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Note note = (Note) s.get(Note.class, note_id);
			
			s.close();
		%>
		
		<!-- Form  -->

		<form action="UpdateServlet" method="post">
		
			<input value="<%=note.getId()%>" name="note_id" type="hidden"/>
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label> 
				<input type="text"
						name="title" 
						class="form-control"
						id="title" 
						aria-describedby="emailHelp"
						placeholder="Enter Here"
						value="<%=note.getTitle() %>"
						required>
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea id="content" 
						 name="content" 
						placeholder="Enter Your Content Here"
						class="form-control"
						style="height: 300px;" required><%=note.getContent() %></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Your Note</button>
			</div>
		</form>
	</div>
</body>
</html>