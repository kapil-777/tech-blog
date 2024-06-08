<%@page import="com.tech.blog.helper.Message"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>

<!-- css -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" type="text/css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

	<!-- navbar -->
	<%@include file="normal_navbar.jsp" %>


	<div class="mt-5" >
		<div class="container">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card">
						<div class="card-header">
						 	<h4>Login </h4>
						</div>
						<%
						    Message msg = (Message)session.getAttribute("msg");
						    if(msg != null){
						 %>
						  		<div class="alert <%= msg.getCssClass() %>" role="alert">
								  <%= msg.getContent() %>
								</div>
						 <%
						    }
						    
						    session.removeAttribute("msg");
						
						%>
						<div class="card-body">
						 		<form action="LoginServlet" method="POST">
								  <div class="mb-3">
								    <label for="exampleInputEmail1" class="form-label">Email address</label>
								    <input name="email" required="required" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
								    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
								  </div>
								  <div class="mb-3">
								    <label for="exampleInputPassword1" class="form-label">Password</label>
								    <input name="password" required="required" type="password" class="form-control" id="exampleInputPassword1">
								  </div>
								 <!--  <div class="mb-3 form-check">
								    <input type="checkbox" class="form-check-input" id="exampleCheck1">
								    <label class="form-check-label" for="exampleCheck1">Check me out</label>
								  </div> -->
								  <button type="submit" class="btn btn-primary">login</button>
								</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- javascript -->
	

<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<script src="js/main.js" type="text/javascript">
</body>
</html>