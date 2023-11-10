<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#footer {
    width: 100%;
    background:rgb(0,0,0,0.79);
    height: 322px;
    margin-top:338px;
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
</style>
</head>
<body>

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
  
    
</body>
</html>