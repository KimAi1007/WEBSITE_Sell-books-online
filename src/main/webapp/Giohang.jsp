<%@ page import="java.util.List"%>
<%@ page import="Dao.SanphamDao"%>
<%@ page import="Connection.DbCon"%>
<%@ page import="Model.Sanpham"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>San Pham</title>

    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

<style>
#menuu{
display: flex;
list-style: none;
margin: 0;
padding: 0;
}
#menuu li{
position: relative;
margin:0px 25px;
}
#menuu li a{
color: black;
display: block;
padding: 30px 20px;
text-decoration: none;
font-weight: bold;
font-style: italic;
font-size: 15px;
font-family: Georgia;
}
/* Thiết lập border khi hover */
#menuu>li>a{
position: relative;
}
#menuu>li>a:before{
content: "";
height: 4px;
width: 0px;
background: #999999;
position: absolute;
bottom: 0px;
left: 0px;
transition: 0.25s cubic-bezier(0.075, 0.82, 0.165, 1);
}
#menuu>li:hover>a::before{
width: 100%;
}
#actions {
    display: flex;
}

#actions .item {
    margin-left:22px;
}

body {
  font-family: 'Lato', sans-serif;

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

.to-bottom {
    position:absolute;
    bottom:-40px;
    left:50%;
    transform:translateX(-50%);
}

#wp-products {
    padding-top:63px;
    padding-bottom: 78px;
    padding-left:134px;
    padding-right:134px;
}
#wp-products h2 {
    text-align: center;
    margin-bottom: 76px;
    font-size:32px;
    color:#626a67;
}
#list-products {
    display: flex;
    list-style: none;
    justify-content: space-around;
    align-items: center;
    flex-wrap: wrap;
}

#list-products .item {
    width: 290px;   /* chiều rộng */
    height: 374px;    /* chiều cao */
    background:#cddffe;
    border-radius: 24px;   /* bán kính đường viền */
    margin-bottom: 50px;    /* lề dưới */
}

#list-products .item img {
    display: block;    
    margin:0px auto;   
    margin-top:23px;     /* lề trên */
}

#list-products .item .stars {

    display: flex;
    margin:0px auto;
    width: 50%;
    margin-top: -8px;
}

#list-products .item .name {
    text-align: center;
    color:#FF66CC;
    font-weight: bold;
    font-size: 18px;
}

#list-products .item .desc {
    text-align: center;
    color:#626a67;
    margin-top: 10px;
    font-style: italic;
    
    
}

#list-products .item .price {
    text-align: center;
    color:#626a67;
    font-weight: bold;
    margin-top:10px;
}
body {
  font-family: "Lato", sans-serif;
}

.sidepanel  {
  width: 0;
  position: fixed;
  z-index: 1;
  height: 723px;
  top: 20%;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidepanel a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidepanel a:hover {
  color: #f1f1f1;
}

.sidepanel .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
}

.openbtn {
  font-size: 20px;
  cursor: pointer;
  background-color: #111;
  color: white;
  padding: 10px 15px;
  border: none;
}

.openbtn:hover {
  background-color:#444;
}
.cart table {
width: 100%
}
.cart table tr td {
border-bottom: 1px solid #ddd;
padding: 12px 0;
}
.cart table tr th {
border-bottom: 1px solid #ddd;
padding: 12px 0;
}

.cart form table thead tr:first-child {
	color: #FFFFFF;
}
</style>

</head>

<body>
<%@include file="navbar.jsp"%>
            
<!-- GIAO DIỆN GIỎ HÀNG -->

<div id="mySidepanel" class="sidepanel">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
  <section class="cart">

<form action="">
<table>
<thead>
<tr>
<th>Sản Phẩm</th>
<th>Giá</th>
<th>SL</th>
<th>Chọn</th>
</tr>
</thead>
<tr>
</tr>
</table>
</form>
<div style="text-align: right; color: #FFFFFF;" class="price-total">
<p style="font-weight: bold; color: #FFFFFF;" >Tổng tiền:<span></span><sup>đ</sup></p>
</div>

</section>

</div>

<button class="openbtn" onclick="openNav()">☰ Giỏ Hàng Của Bạn</button>  


<script>
function openNav() {
  document.getElementById("mySidepanel").style.width = "450px";
}

function closeNav() {
  document.getElementById("mySidepanel").style.width = "0";
}
</script>
<!-- MENU LOẠI SẢN PHẨM  -->
<div id="wrapper">
        <div id="header">
        <nav class="container">
                <ul id="menuu">
                <c:forEach var="o" items="${category}">
<li><a href="LoaiSP?id=${o.idloaisach}">${o.loaisach}</a></li>
</c:forEach>

</ul>
</nav>
            </div>
            </div>
            
<div class="search-box">
<form action="SearchSanpham" method="post">

<input type="text" placeholder="Search..." name="txtSearchValue" value="" >
</form></div>
<div class="danhsach">	
        <div id="wp-products">
        
            <ul id="list-products"> 
           <c:forEach var="e" items="${listSanpham}">
              <div class="item">
               <a href="chitietSP?id=${e.masach}" title="View Product">
                  <img src="${e.hinhanh}" width="157" height="225" alt="" ></a>
                
                    <div class="stars">
                        <span>
                            <img src="image/star.png" alt="">
                        </span>
                        <span>
                            <img src="image/star.png" alt="">
                        </span>
                        <span>
                            <img src="image/star.png" alt="">
                        </span>
                        <span>
                            <img src="image/star.png" alt="">
                        </span>
                        <span>
                            <img src="image/star.png" alt="">
                        </span>
                         </div>
                    
                    
                    
                    <div class="name">
                   
                    ${e.tensach}</div>
                    <div class="desc">Mô Tả Ngắn Cho Sản Phẩm</div>
                    <div class="price">
                    ${e.dongia}</div>
           <button> Thêm vào giỏ hàng </button>
                    
                 
</div>

</c:forEach>

</ul>
</div>
</div>
			<%@include file="Footer.jsp"%>
 	
</body>
<script src="script.js"></script>
</html> 