<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

<title>Insert title here</title>
</head>
<body style="background-color: lightblue">
<div class="container">	   
	<div class="row">
	<form action="Login" >
		<div class="form-group" >
		<h2 style="color:blue;margin-left:400px">LOGIN FORM</h2>
	    </div>
	    
	    <div class="form-group" style="margin-left:350px;margin-top:40px">
		<label>UserName</label>
		<input type="text" class="form-control" style="width:300px" name="uname">
	    </div>
	    
	    <div class="form-group"style="margin-left:350px">
		<label>Password</label>
		<input type="password" class="form-control" name="pass">
	    </div>	
	    
	    <div class="form-group" style="margin-left:400px;margin-top:40px">
		<button type="submit" class="btn btn-success">Submit</button>
	    </div>	  
	    </form>
	    </div>
	    </div>
	
	  <div class="container">  
	
	 <form action="register.jsp">
	 <input style="margin-left:505px;margin-top:-98px" type="submit" value="Register"class="btn btn-success">
	
	</form>
	
	</div>
	
	
	

</body>
</html>


