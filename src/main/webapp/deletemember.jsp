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

<section class="h-100 h-custom" >
  <div class="container py-5 h-100" >
    <div class="row d-flex justify-content-center align-items-center h-100" >
      <div class="col-lg-8 col-xl-6" >
        <div class="card rounded-3" style="box-shadow:0px 10px 50px gray">
           
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2" style="text-align: center;color:crimson">Delete Member</h3>

            <form class="px-md-2" action="deletemember" method="get">
			<div data-mdb-input-init class="form-outline mb-4">
                <label class="form-label" for="form3Example1q">Email:</label>
                <input type="email" id="form3Example1q" class="form-control" name="email" placeholder="enter email" />
              </div>
             
              <button type="submit" data-mdb-button-init data-mdb-ripple-init class="btn btn-danger " style="text-align:center;margin-left:40%">Delete</button>
            </form>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>