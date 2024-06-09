<%@page import="com.tech.blog.helper.Message"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.tech.blog.entities.User" %> 
<%
  
	User user = (User)session.getAttribute("currentUser");
	if(user == null){
		response.sendRedirect("login_page.jsp");
	}
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>profile</title>
<!-- css -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" type="text/css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

	<!-- navbar  start -->
	<nav class=" navbar navbar-expand-lg   bg-body-tertiary bg-dark">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="index.jsp"><span class="fa fa-certificate"></span> TechBlog</a>
	    
	    
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">Daily</a>
	        </li>
	       
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            Categories
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">Programming</a></li>
	            <li><a class="dropdown-item" href="#">projects</a></li>
	            <li><hr class="dropdown-divider"></li>
	            <li><a class="dropdown-item" href="#">Notes</a></li>
	          </ul>
	        </li>
	         <li class="nav-item">
	          <a class="nav-link" href="#">contact us</a>
	        </li>
	         <li class="nav-item">
	           <a class="nav-link" href="#">do post</a>
	        </li>
	        </li>
	      </ul>
	      
	      <!-- right side  -->
	      <ul class="navbar-nav mr-right">
	      	 <li class="nav-item">
	          <a class="nav-link text-black" data-bs-toggle="modal" data-bs-target="#profile-model" href="#"><span class="fa fa-user-circle"></span><%= " "+user.getName() %></a>
	        </li> 
	      	 <li class="nav-item">
	          <a class="nav-link" href="LogoutServlet"><span class="fa fa-motorcycle "></span> Logout</a>
	        </li> 
	      </ul>
	    </div>
	  </div>
	</nav>
	<!-- navbar end -->
	
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
	
	<!-- start of the modal  -->
	
<!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Launch demo modal
</button> -->

<!-- Modal -->
<div class="modal fade" id="profile-model" tabindex="-1" aria-labelledby="profileModelLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Tech Blog</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      
        <div class="container text-center" >
        <div id="profile-details">
        <table class="table">
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			      <td>id : </td>
			      <td><%= user.getId() %></td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			      <td>Name : </td>
			      <td><%= user.getName() %></td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			      <td>Email : </td>
			      <td><%= user.getEmail() %></td>
			    </tr>
			   
			  </tbody>
			</table>
			</div>
			
			<!-- profile edit -->
			<div id="profile-edit" style="display : none ">
				 <h6 mt-2> please edit carefully </h6>
				 <form  action="EditServlet" method="post">
				 	<table class="table">
				 		<tr>
				 			<td> ID : </td>
				 			<td><%= user.getId() %></td>
				 		</tr>
				 		<tr>
				 			<td> Name : </td>
				 			<td><input type="text"  class="form-control" name="edit_name" value=<%= user.getName() %>></td>
				 		</tr>
				 		<tr>
				 			<td> Email : </td>
				 			<td><input type="email"  class="form-control" name="edit_email" value=<%= user.getEmail() %>></td>
				 		</tr>
				 		<tr>
				 			<td> Password : </td>
				 			<td><input type="password"  class="form-control" name="edit_password" value=<%= user.getPassword() %>></td>
				 		</tr>
				 	</table>
				 	
				 	<div class="container">
				 		<button class="btn btn-outline-primary"> Save </button>
				 	</div>
				 
				 </form>
			</div>
			<!-- profile edit end -->
			
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button  type="button" class="btn btn-primary" id="profile-edit-btn">Edit</button>
      </div>
    </div>
  </div>
</div>
	 
	<!--  end edit model of the model  -->
	
	
	
	
	
	
	
	
	
	
	<!-- javascript --> 
    
	<script src="js/main.js" type="text/javascript"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

<script>
//jquery code for the model and toggling the form and the table
$(document).ready(function(){
	let flag = false;
	$("#profile-edit-btn").click(function(){
		
		if(flag == false){
			$("#profile-edit").show();
			$("#profile-details").hide();
			$(this).text("Back");
			flag = true;
		}
		else{
			$("#profile-edit").hide();
			$("#profile-details").show();
			$(this).text("Edit");
			flag = false;
		}
	})
})

</script>




</body>
</html>