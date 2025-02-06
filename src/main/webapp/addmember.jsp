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
          <!-- <img src="https://www.nypl.org/scout/_next/image?url=https%3A%2F%2Fdrupal.nypl.org%2Fsites-drupal%2Fdefault%2Ffiles%2Fstyles%2F2_1_960%2Fpublic%2F2023-11%2FGregorian_Center_Noma_1000x500.jpeg%3Fh%3D5dabf909%26itok%3DWykbHEON&w=3840&q=90"
            class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
            alt="Sample photo"> -->
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2" style="text-align: center;color:brown">Add New Member</h3>

            <form class="px-md-2" action="addmember" method="post">
			<div class="flex" style="display: flex">
              <div data-mdb-input-init class="form-outline mb-4" style="margin :2px 25px 0px 0px ">
                <label class="form-label" for="form3Example1q">Name:</label>
                <input type="text" id="form3Example1q" class="form-control" name="name" placeholder="enter name" />
              </div>
              <div data-mdb-input-init class="form-outline mb-4">
                <label class="form-label" for="form3Example1q">Mobile:</label>
                <input type="text" id="form3Example1q" class="form-control" name="phn" placeholder="enter mobile number" />
              </div>
			</div>
			<div data-mdb-input-init class="form-outline mb-4">
                <label class="form-label" for="form3Example1q">Email:</label>
                <input type="email" id="form3Example1q" class="form-control" name="email" placeholder="enter email" />
              </div>
              <div data-mdb-input-init class="form-outline mb-4">
                <label class="form-label" for="form3Example1q">Password:</label>
                <input type="password" id="form3Example1q" class="form-control" name="password" placeholder="enter password" />
              </div>
              <button type="submit" data-mdb-button-init data-mdb-ripple-init class="btn btn-success " style="margin-left:40%">Add Member</button>
            </form>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>