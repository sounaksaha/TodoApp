<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ include file="common/header.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>


<style>

.button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff; /* Button background color */
    color: #fff; /* Button text color */
    text-decoration: none; /* Remove underline from the link */
    border: none; /* Remove button border */
    border-radius: 5px; /* Add rounded corners */
    font-size: 16px;
}

.button:hover {
    background-color: #0056b3; /* Change background color on hover */
    /* You can add more hover effects as needed */
}

</style>
<body>
<section class="vh-100" style="background-color: #9de2ff;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-md-9 col-lg-7 col-xl-5">
        <div class="card" style="border-radius: 15px;">
          <div class="card-body p-4">
            <div class="d-flex text-black">
              <div class="flex-shrink-0">
                <img src="https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars-thumbnail.png"
                  alt="Generic placeholder image" class="img-fluid"
                  style="width: 180px; border-radius: 10px;">
              </div>
  
              <div class="flex-grow-1 ms-3">
                <h5 class="mb-1" style="font-weight: bold;">User Name</h5>
                <p class="mb-2 pb-1" style="color: #2b2a2a;font-weight: bold;">${user.username}</p>
                <div class="d-flex justify-content-start rounded-3 p-2 mb-2"
                  style="background-color: #efefef;">
                  <div>
                    <p class="small text-muted mb-1" style="font-weight: bold;">UserId</p>
                    <p class="mb-0" style="font-weight: bold;">${user.user_id}</p>
                  </div>
                  <div class="px-3">
                    <p class="small text-muted mb-1" style="font-weight: bold;">Email</p>
                    <p class="mb-0" style="font-weight: bold;">${user.email}</p>
                  </div>
                  
                </div>
                <div class="d-flex pt-1">
                <a href="/list" class="btn btn-outline-primary me-1 flex-grow-1">Todo</a>
                <a href="/create" class="btn btn-outline-primary me-1 flex-grow-1">Add Todo</a>
                
                  
                </div>
              </div>
              	
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>