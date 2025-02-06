<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2 style="text-align: center;margin-bottom:-18%;margin-top:3%;color:crimson">Update Member Information</h2>
<form action="updatemember" method="post" style="margin:20% 38%;box-sizing: border-box;max-width:500px; border:2px solid black;padding:30px 30px;">
<label class="form-label" for="form3Example1q">Enter Email:</label>
<input type="email" name="email" placeholder="Enter email of member to update" style="width: 300px"><br><br> 
<div  style="box-sizing: border-box;max-width:500px; border:2px solid black;padding:30px 30px;">
<h5 style="color:orange">update with new data!</h5><br>
<label class="form-label" for="form3Example1q">Enter New Name:</label>
<input type="name" name="name" placeholder="name"><br>
<label class="form-label" for="form3Example1q">Enter New Mobile:</label>
<input type="phn" name="phn" placeholder="phone"><br>
<label class="form-label" for="form3Example1q">Enter New Password:</label>
<input type="password" name="password" placeholder="password"><br><br>
<button type="submit" class="btn btn-success" style="margin-left:35%">update</button>
</div>
</form>

</body>
</html>