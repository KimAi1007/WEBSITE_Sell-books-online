<%@ page import="java.util.List"%>
<%@ page import="Dao.CustomerDao"%>
<%@ page import="Connection.DbCon"%>
<%@ page import="Model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
<title>Insert title here</title>
<style>
*{
    padding:0;
    margin:0;
    box-sizing: border-box;
    font-family:'Poppins', sans-serif;
    cursor: pointer;
}
.container{
max-width: 2000px;
margin: 0px auto;
}
nav{
display: flex;
justify-content: space-between;
justify-item: center;
font-size: 20px;
}
#wrapper {
    /* Kích thước màn hình là 1280 x 720 */
    width: 100%;

}
#header {
    width: 100%;
    padding:0px 10px;
    display: flex;
    justify-content: space-between;
    align-items: center; 
    background-color: #FFFFFF;  
}
#logo{
padding: 5px 0px;

}
#logo img{
max-width:50px;
height: auto;
}
#menu{
display: flex;
list-style: none;
margin: 0;
padding: 0;
}
#menu li{
position: relative;
margin:0px 25px;
}
#menu li a{
color: black;
display: block;
padding: 30px 20px;
text-decoration: none;
font-weight: bold;
font-style: italic;
font-size: 20px;
font-family: Georgia;

} 
#menu ul.sub-menu{
position: absolute;
z-index: 10;
background-color: #FFFFFF; 
padding: 15px 0px;
list-style: none;
width: 150px;
border: 1px solid #434343;
display: none;
font-style: italic;
font-size: 20px;
font-family: Georgia;
}
#menu li:hover>ul.sub-menu{
display: block;
}

#menu ul.sub-menu a{
padding: 8px 15px;
border-bottom: 1px solid #434343;
}
#menu ul.sub-menu li:hover a{
border-bottom: 1px solid #6e6e6e;
}
#menu ul.sub-menu li:last-child a{
border: none;
} 
/* Thiết lập border khi hover */
#menu>li>a{
position: relative;
}
#menu>li>a:before{
content: "";
height: 4px;
width: 0px;
background: #999999;
position: absolute;
bottom: 0px;
left: 0px;
transition: 0.25s cubic-bezier(0.075, 0.82, 0.165, 1);
}
#menu>li:hover>a::before{
width: 100%;
}
#menu>li.has-child::after{
font-family: "Font Awesome 5 Free"; 
font-weight: 900; 
content: "\f007"; 
/* content: "\f107";   */
color: #858585;
position: absolute;
top: 0px;
right: 0px;
padding: 30px 0px;
} 
#menu .sub-menu li:hover>a{
color: #999999;
}
#actions {
    display: flex;
}

#actions .item {
    margin-left:22px;
}
.search-box {
  position: absolute;
  flex: 65%;
  padding: 20px;
  top:100px;
  left: 450px;
  font-style: italic;
}
.search-box input{
  font-style: italic;
  font-size: 20px;
  width: 650px;
  border-radius: 20px;
}
.danhsach h1 {

		  width: 497px;
          height: 48px;
		  position: absolute;
		  left: 50%;
		  top: 25%;
		  transform: translate(-50%, -50%);
}
.danhsach table {
	      width: 837px;
          height: 48px;;
		  position: absolute;
		  left: 50%;
		  top: 45%;
		  transform: translate(-50%, -50%);
}

</style>
</head>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web bán sách </title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<%@include file="navbar.jsp"%>

<div class="search-box">
<form action="SearchCustomer" method="post">
<input type="text" placeholder="Tìm kiếm..." name="txtSearchValue" value="" >
<button class="icon"><i class="fa-solid fa-magnifying-glass"></i></button>
<br></form>
</div>
<div class="danhsach">
<h1> DANH SÁCH KHÁCH HÀNG</h1>
			<table border="1">
					<tr>
						<th>ID</th>
						<th>Username</th>
						<th>Password</th>
						<th>Gmail</th>
						<th>Phone Number</th>
						<th>Address</th>
						<th>Action</th>
					</tr>
				<tbody>
					<c:forEach var="e" items="${listCustomer}">

						<tr>
							<td>${e.id}</td>
							<td>${e.username}</td>
							<td>${e.pass}</td>
							<td>${e.gmail}</td>
							<td>${e.phone}</td>
							<td>${e.address}</td>	
							<td><a href="UpdateCustomer?id=${e.id}">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a href="DeleterCustomer?id=${e.id}" onclick="showMess(${e.id})">Delete</a></td>		
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<button>
			<a href="CreateCustomer"> ADD NEW </a>
			</button>
		</div>	
		<%@include file="Footer.jsp"%>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script>
$(document).ready(function(){
	//Tim tat ca cac li co sub-menu vaf them vao nos class has-child
$('.sub-menu').parent('li').addClass('has-child');
});
</script>
</html>