    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
background-image: url("https://img.freepik.com/free-photo/nobody-exterior-wall-page-empty_1258-257.jpg");
background-size: cover;
background-repeat: none; 
}
.list-group-item{
border:1px solid black;
}
.list-group-item:hover{
background-color: lightblue;}

</style>
</head>
<body>
<h1 style="color:white;text-align: center;font-family:timesnewroman;margin-bottom:20px;margin-top:40px;text-shadow:0px 0px 5px">Library Management System</h1>

<div class="card " style="max-width: 500px;display:flex;margin:0 auto">
  
    <div class="col">
      <img src="https://wallpapers.com/images/hd/cozy-library-evening-jpg-85ys19olhyvt4ysm.jpg" class="img-fluid rounded-start" alt="..." style="max-width:100%">
    </div>
    
    <div class="list-group" id="list-tab" role="tablist" style="width:500px;text-align:center;font-family:roboto;font-size:20">
      <a class="list-group-item list-group-item-action " id="list-home-list" data-toggle="list" href="addmember.jsp" role="tab" >Add New Member</a>
      <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="getallmembers.jsp" role="tab" >All Members</a>
      <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="updatemember.jsp" role="tab" >Update Data</a>
      <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="deletemember.jsp" role="tab">Delete Member</a>
      <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="login.jsp" role="tab" >Login</a>
            
      
    </div>
  </div>

        </body>
        </html>
        
      
    