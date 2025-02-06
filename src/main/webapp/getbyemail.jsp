
<%@page import="javax.swing.plaf.metal.MetalBorders.Flush3DBorder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="bootstrap.jsp" %>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection" %>
<%@page import="library.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
span{
	font-size:20px;
	font-weight:350;
	color:black
}
h5{
margin-left:30px;
color:maroon
}
</style>
</head>
<body>

<%-- 	<%@ %> = it is used for package , importing file importing &page integrations or connections
	<% %> = it is used for writing codes
	<%= %> = it is used to see the output
	
	--%>
	
	<%
        ResultSet getbyemail = (ResultSet) request.getAttribute("getbyemail");
        if (getbyemail!= null) {
        	
        
    %>
	
	<div class="card" style="box-sizing:border-box;max-width:400px; border:2 px solid black;box-shadow:0px 0px 15px;margin:200px auto;padding:10px 10px">
	<img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1rTLeQraa9s-Rkj2_KMPOzh30CwK1G2D85A&s" style="max-width:30%;margin:0 auto">
	<hr>
	
	<h5>Name: <span><%= getbyemail.getString("name") %></span></h5> <br>
	<h5>Email: <span><%= getbyemail.getString("email") %></span></h5><br>
	<h5>Phone:<span><%= getbyemail.getString("phn") %></span></h5><br>
	
	<h5>Paassword:<span><%= getbyemail.getString("password") %></span></h5>
	<form action="home.jsp">
	<button  type="submit" data-mdb-button-init data-mdb-ripple-init class="btn btn-danger " style="text-align:center;margin-left:40%;margin-top:10px">close</button>
	 </form>
	</div>
	<!-- <button onclick="window.location.href='home.jsp'">ok</button> -->
	<%
	}
	else{
		%>
		<h3>no data</h3>
		<%} %>
	
	
	
	
</body>
</html>