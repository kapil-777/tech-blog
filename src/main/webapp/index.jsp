<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tech Blog</title>
<!-- css -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" type="text/css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>
	
	<!--  navbar -->
	<%@include file="normal_navbar.jsp" %>
	
	<!-- container -->
	<div class="container-fluid ">
		<div class="jumbotron">
			<div class="container">
				<h4 class="display-3">Welcome to TechBlog</h4>
				<p>Computer programming or coding is the composition of sequences of instructions, called programs. Programmers typically use high-level programming languages that are more easily intelligible to humans than machine code, which is directly executed by the central processing unit. Proficient programming usually requires expertise in several different subjects, including knowledge of the application domain, details of programming languages and formal logic.</p>
				<br>
				<button class="btn btn-outline-dark bt-lg m-1"><span class="fa fa-bolt "></span> start Now</button>
				<a href="login_page.jsp" class="btn btn-outline-dark bt-lg"><span class="fa fa-adjust fa-spin"></span> Login</a>
			</div>
		</div>
	 </div> 
	
	<br>
	
	<!-- cards  -->
	<div class="container ">
		<div class="row">
			<div class="col-md-4">
				<div class="card" >
				  <div class="card-body">
				    <h5 class="card-title">Java Programming</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="btn btn-primary">read more.. </a>
				  </div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card" >
				  <div class="card-body">
				    <h5 class="card-title">Java Programming</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="btn btn-primary">read more..</a>
				  </div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card" >
				  <div class="card-body">
				    <h5 class="card-title">Java Programming</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="btn btn-primary">read more..</a>
				  </div>
				</div>
			</div>
		</div>
		
		<div class="row  mt-3">
			<div class="col-md-4">
				<div class="card" >
				  <div class="card-body">
				    <h5 class="card-title">Java Programming</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="btn btn-primary">read more..</a>
				  </div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card" >
				  <div class="card-body">
				    <h5 class="card-title">Java Programming</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="btn btn-primary">read more..</a>
				  </div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card" >
				  <div class="card-body">
				    <h5 class="card-title">Java Programming</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="btn btn-primary">read more..</a>
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
		
</script>
</body>
</html>