<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="row">
    <div class="col-3 bg-success">
  <a href="#" class="active">Home</a>
    
    <ul>

<li><a href="Sampham.jsp">Sản phẩm</a></li>
<li><a href="ReadCustomer">Khách hàng</a></li>
<li><a href="Employee.jsp">Nhân viên</a></li>
<li><a href="">Liên hệ</a></li>
<li><a href="">${sessionScope.USER}</a>
        <ul class="sub-menu">
           <li><a href="TTCN.jsp">Account</a></li>
           <li><a href="Login.jsp">Logout</a></li>
        </ul>
        </li></ul>
    </div>
    <div class="col-9 bg-warning">.col-6</div>
</body>
</html>