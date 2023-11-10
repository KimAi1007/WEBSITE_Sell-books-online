<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
<style type="text/css">
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
    padding:9px 10px;
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
</style>
</head>
<body>
<div id="wrapper">
        <div id="header">
        <nav class="container">
            <a href="" class="logo">
                <img src="image/logoDACN.png" width="130" height="85" alt="">
            </a>
                <ul id="menu">
<li><a class="active" href="ReadSPhome">Home</a></li>
<li><a href="ReadSanpham">Sản phẩm</a></li>


<c:if test="${sessionScope.username != null }">
<li><a href="">${sessionScope.username.lastname}</a>
        <ul class="sub-menu">
        <c:if test="${sessionScope.username.isAdmin == 1 }">
           <li><a href="ReadCustomer">Admin</a></li>
           </c:if>
           <c:if test="${sessionScope.username.isCustomer == 1 }">
           <li><a href="ReadTKCN?id=${username.id}">Account</a></li>
           </c:if>
           <li><a href="Login.jsp">Logout</a></li>
        </ul>
</li>

</c:if>

<c:if test="${sessionScope.username == null }">
 <li><a href="Login.jsp">Login</a></li>
 
 
</c:if>
</ul>
</nav>
            </div>
            </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script>
$(document).ready(function(){
	//Tim tat ca cac li co sub-menu vaf them vao nos class has-child
$('.sub-menu').parent('li').addClass('has-child');
});
</script>
</html>