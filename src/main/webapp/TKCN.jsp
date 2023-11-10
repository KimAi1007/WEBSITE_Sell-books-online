<%@ page import="java.util.List"%>
<%@ page import="Dao.CustomerDao"%>
<%@ page import="Connection.DbCon"%>
<%@ page import="Model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>TKCN</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
	
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
      width: 262px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidenav a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  font-style: italic;
font-family: Georgia
}

.sidenav a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 287px; /* Same as the width of the sidenav */
  font-size: 28px; /* Increased text to enable scrolling */
  padding: 0px 10px;
  
}
.main h1 {
font-style: italic;
font-size: 60px;
font-family: Georgia;
}
.main table tr {
font-style: italic;

font-family: Georgia
}
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
#footer {
    width: 85%;
    background:rgb(0,0,0,0.79);
    height: 322px;
    margin-top:338px;
    margin-left: 236px;
    padding:0px 63px;
    padding-top:57px;
    display: flex;
    justify-content: space-around;
}

#footer .box {
    width: 250px;
    color:#fff;
}
#footer .box p{
margin-top: 30px;
font-size: 20px;
font-style: italic;
}

#footer .box .quick-menu {
    margin-top:40px;
   
}

#footer .box .quick-menu .item{
    margin-bottom:12px;
   

}
#footer .box h3{
font-size: 20px;
font-style: italic;
}
#footer .box .quick-menu ,.item a{
    color:#fff;
    text-decoration: none;
    font-size: 20px;
    font-style: italic;
}



#footer .box form input {
    width: 294px;
    height: 42px;
    background:transparent;
    padding-left:20px;
    color:#fff;
    margin-top:30px;
    font-size: 20px;
    font-style: italic;
    
}

#footer .box form button {
    background:#362f2f;
    box-shadow: 5px 5px 4px rgba(0,0,0.25);
    width: 163px;
    height: 38px;
    margin-top:29px;
    color:#fff;
    font-size: 20px;
    font-style: italic;
}
button {
    color:#111;
    font-size: 20px;
    font-style: italic;
}
.form-group {
    color:#111;
    font-size: 20px;
    font-style: italic;
    
}
</style>
</head>
<body>

<div class="sidenav">
<a href="" class="logo">
                <img src="image/logoDACNN.png" width="130" height="85" alt="">
            </a>
 <ul id="menu">
<li><a href="ReadSPhome"><i class="fas fa-home">Home</i></a></li>
<li><a href="ReadSanpham"><i class="fas fa-book">Sản phẩm</i></a></li>
<li><a href=""><i class="fab fa-microblog">Blog</i></a></li>
<li><a href="Login.jsp"><i class="fas fa-sign-out-alt">Logout</i></a></li>
</ul>
</div>

<div class="main">
<h1>TÀI KHOẢN CÁ NHÂN</h1>

<fieldset class="form-group">
						<label>Id</label> <input value="${tkcn.id}" type="text"
							class="form-control" name="" required="required" readonly="readonly" >
					</fieldset>

					<fieldset class="form-group">
						<label>Firstname</label> <input value="${tkcn.firstname}" type="text"
							class="form-control" name="" required="required" >
					</fieldset>
					
					<fieldset class="form-group">
						<label>Lastname</label> <input value="${tkcn.lastname}" type="text"
							class="form-control" name="" >
					</fieldset>

					<fieldset class="form-group">
						<label>Password</label> <input value="${tkcn.pass}" type="text"
							class="form-control" name="" required="required">
					</fieldset>
					
					<fieldset class="form-group">
						<label>Gmail</label> <input value="${tkcn.gmail}" type="text"
							class="form-control" name="" required="required">
					</fieldset>
					
					<fieldset class="form-group">
						<label>Phone Number</label> <input value="${tkcn.phone}" type="text"
							class="form-control" name="" required="required">
					</fieldset>
					
					<fieldset class="form-group">
						<label>Address</label> <input value="${tkcn.address}" type="text"
							class="form-control" name="" required="required">
					</fieldset>
					
				
				<button  >
				<td><a href="UpdateTKCN?id=${tkcn.id}">UPDATE</a>
				</button>
						
					

				

				
   </div>

        <div id="footer">
            <div class="box">
                <div class="logo">
                    <img src="image/logoDACNN.png" width="180" height="120" alt="">
                </div>
                <p>Apiricotblossom.com nhận đặt hàng trực tuyến và giao hàng tận nơi an toàn</p>
            </div>
            <div class="box">
                <h3>NỘI DUNG</h3>
                <ul class="quick-menu">
                    <div class="item">
                        <a href="">Trang chủ</a>
                    </div>
                    <div class="item">
                        <a href="">Sản phẩm</a>
                    </div>
                   
                    <div class="item">
                        <a href="">Liên hệ</a>
                    </div>
                </ul>
            </div>
            <div class="box">
                <h3>LIÊN HỆ</h3>
                <form action="">
                    <input type="text" placeholder="Địa chỉ email">
                    <button>Nhận tin</button>
                </form>
            </div>
        </div>
    </div>
  <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
</body>
</html> 
