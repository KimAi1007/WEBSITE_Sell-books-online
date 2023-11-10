<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
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
#banner {
    width: 100%;
    background-image :url("image/BB.jpg");
    height: 463px;
    display: flex;
    padding:0px 133px;
    position:relative;
    margin-top: -10px;
}

#banner .box-left ,#banner .box-right {
    width: 60%;
}

#banner  .box-left h2 {
    font-size:48px;
    font-style: italic;
    margin-top:75px;
    height: 130px;
    color: black;
}

#banner .box-left p {
    color:#000000;
    font-size:14px;
    font-style: italic;
    width: 50%;
    font-family: monospace;

}

#banner .box-left button {
    width: 191px;
    height: 40px;
    margin-top:41px;
    background:#1d1a1a;
    border:none;
    outline:none;
    color:#fff;
    font-weight: bold;
    border-radius: 20px;
    transition:0.4s;
}

#banner .box-left button:hover {
    background:orange;
}

#banner .box-right {
    padding-left:200px;
    display: flex;
    justify-content: center;
    align-items: center;
}

#banner .box-right img {
    margin:0px 10px;
    animation :animation 3s infinite linear; 
}


#banner .box-right img:nth-child(1)
{
    animation-delay: 0.5s;
}
#banner .box-right img:nth-child(2)
{
    
    animation-delay: 1s;
}

@keyframes animation {
    0%{
        transform:translateY(0px);
    }
    50%{
        transform: translateY(-10px);
    }
    100%{
        transform: translateY(0px);
    }
    
}

.to-bottom {
    position:absolute;
    bottom:-40px;
    left:50%;
    transform:translateX(-50%);
}



#wp-products {
    padding-top:116px;
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

.list-page {
    width: 50%;
    margin:0px auto;
}

.list-page {
    display: flex;
    list-style: none;
    justify-content: center;
    align-items: center;
}

.list-page .item {
    margin:0px 15px;
    width: 37px;
    height: 37px;
    background:#362f2f;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
}
.list-page .item a {
    color:#fff;
    text-decoration: none;
}


#saleoff {
    width: 100%;
    display: flex;
    height: 340px;
}
#saleoff .box-left ,#saleoff .box-right {
    width: 40%;
}
#saleoff .box-left {
    background:#3e413e;
    text-align: center;
    min-height: 340px;
}

#saleoff .box-left h1 {
    padding-top:38px;
}
#saleoff .box-left span:nth-child(1)
{
    color:#fff;
    font-size:50px;
}

#saleoff .box-left span:nth-child(2)
{
    color:orange;
    font-size:128px;
}

#saleoff .box-right {
    background-image:url("image/box-right.png");
    width: 60%;
}


#comment {
    width: 1012px;
    height: 478px;
    margin:0px auto;
    margin-top: -15px;
    margin-bottom: 50px;
}

#comment h2 {
    text-align: center;
    margin-bottom: 50px;
    font-size:32px;
    color:#626a67;
}


#comment-body{
    display: flex;
    justify-content: center;
    align-items: center;
    width: 1000px;
    height: 400px;
    list-style: none;
    overflow: hidden;
}

#list-comment {
    width: 100%;
    height: 100%;
    list-style: none;
    transition:0.5s;
}

#list-comment .item {
    width: 100%;
    height: 100%;
    background:#362f2f;
    border-radius: 20px;
    padding-top:50px;
}

#list-comment .item .avatar {
    text-align: center;
    margin-top:13px;
}

#list-comment .item .stars {
    display: flex;
    margin:0px auto;
    width: 50%;
    margin-top:32px;
    justify-content: center;
    align-items: center;
}

#list-comment .item .name {
    text-align: center;
    font-weight: bold;
    color:#fff;
}

#list-comment .item .text {
    padding:20px 50px;
    color:#fff;
   
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web bán sách </title>
    <link rel="stylesheet" href="style.css">
</head>
<body>


    <div id="wrapper">
        <div id="header">
        <nav class="container">
            <a href="" class="logo">
                <img src="image/logoDACN.png" width="130" height="85" alt="">
            </a>
         
                <ul id="menu">
<li><a class="active" href="">Home</a></li>
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
            <div id="actions">
                <div class="item">
                    <img src="assets/user.png" alt="">
                </div>
                <div class="item">
                    <img src="assets/cart.png" alt="">
                </div>
            </div>
        </div>
        <div id="banner">
            <div class="box-left">
                <h2>
                    <span>READ BOOKS</span>
                    <br>
                    <span>EVERY DAY</span>
                </h2>
                <p>Một cuốn sách hay và hấp dẫn sẽ giúp bạn hòa mình vào trong thế giới khác </p>
                <button class="icon"><i class="fa-solid fa-heart"></i>
                <i class="fa-solid fa-heart"></i>
                <i class="fa-solid fa-heart"></i></button>
            </div>
            <div class="box-right">
                <img src="image/BN5.png" width="120" height="350" alt="">
                <img src="image/BN2.png" width="120" height="330" alt="">
                <img src="image/BN6.png" width="120" height="350" alt="">
            </div>
            <div class="to-bottom">
                <a href="">
                    <img src="assets/to_bottom.png" alt="">
                </a>
            </div>
        </div>
        <div id="wp-products">
            <h2>SẢN PHẨM NỔI BẬT CỦA CHÚNG TÔI</h2>
            <ul id="list-products">
                 <c:forEach var="e" items="${listSP}">
              <div class="item">
             
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
                    ${e.dongia}.000đ</div>
                         
                         </div>
                         </c:forEach>
                       
            </ul>
            <div class="list-page">
                <div class="item">
                    <a href="">1</a>
                </div>
                <div class="item">
                    <a href="">2</a>
                </div>
                <div class="item">
                    <a href="">3</a>
                </div>
                <div class="item">
                    <a href="">4</a>
                </div>
            </div>
        </div>
  <div id="comment">
            <h2>---------------------------------</h2>
            <div id="comment-body">
                <div class="prev">
                    <a href="#">
                        <img src="image/oo.jpg" alt="">
                    </a>
                </div>
                <div class="next">
                </div>
            </div>
        </div>
        <div id="saleoff">
            <div class="box-left">
                <h1>
                    <span>GIẢM GIÁ LÊN ĐẾN</span>
                    <span>30%</span>
                </h1>
            </div>
            <div class="box-right"></div>
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
<!-- <script src="uu.js"></script> -->
<script>
let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
</html>
</html>