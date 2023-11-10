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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<title>Insert title here</title>
<style>

* {
    box-sizing: border-box;
    font-family: 'Montserrat', sans-serif ;
}
body{
    margin: 0;
    padding:0;
    background: #e9e9e9;
}
.content{
    width: 1280px;
    max-width: 100%;
    margin: 0 auto;
}


.shadow-box{
    background: white;
}
p{
    padding: 0;
    margin: 0;
}
@media (min-width:700px) {
    .shadow-box{
        box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
    }
}

.signup-wrapper .company-details {
    background: url(image/AB.jpg);
    background-size: cover;
  position:relative;


}
.signup-wrapper .company-details:before {
    content: "";
  position: absolute;
    display: block;
    left: 0;
    right: 0;
    bottom: 0;
    height: 100%;
    background: linear-gradient(to top, rgba(0,0,0,0.75) 0%,rgba(0,0,0,0) 100%);
}

.signup-wrapper .company-details .wrapper-1{
    position: relative;
    padding-bottom: 10px;
    padding-top: 22px;

}
.signup-wrapper .company-details .logo {
    padding: 0 20px;
    width: 20%;
    margin: 0 auto;
}
.signup-wrapper .company-details .logo .icon-food {
    background: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/182774/food.png);
    background-size:contain ;
    background-repeat: no-repeat;
    width: 38px;
    height: 38px;
    margin: 0 auto;
}
.signup-wrapper .company-details .title {
    padding: 20px;
    width: 74%;
    margin: 0 auto;
    text-transform: uppercase;
    color: #fff;
    font-weight: 600;
    font-size: 2em;
    text-shadow: 1px 1px #4b4a4a;
    text-align: center;
  
}
.signup-wrapper .company-details .slogan {
   display: none;
}

.signup-wrapper .signup-form .wrapper-2{
    padding: 14px 20px;
    margin: 30px 80px;
}
.signup-wrapper .signup-form .form-title{
    font-size: 1.5em;
    color:  #D60CA7;
    padding: 5px;
    text-align: center;

}
.signup-wrapper .signup-form .form .content-item{
    text-transform: uppercase;
    color: #A19F9C;
    font-size: 0.7em;
    letter-spacing: 1px;
    margin-top: 35px;
    text-align: center;
}
.signup-wrapper .signup-form .form input[type=text],.signup-wrapper .signup-form .form input[type=password]{
    border: none;
    border-bottom: 1px solid #e4e4e4;
    padding-top: 10px;
    padding-bottom: 10px;
    display: block;

    text-align: center;
    width: 100%;
}
.signup-wrapper .signup-form .signup {
    background-color: #D60CA7;
    border: none;
    color: white;
    padding: 15px 25px;
    font-size: 1em;
    text-transform: capitalize;
    margin-top: 49px;
    border-radius: 5px;

}
.signup-wrapper .signup-form .login{
    color: #D60CA7;
    padding: 20px;
    font-weight: 600;
    text-decoration: none;
    font-size: 0.9em;
    width: 95%;
    margin: 0 auto;
    display: inline-block;
    text-align: center;

}
input::placeholder {
    color: #575757;
}

@media (min-width: 200px) {

    .signup-wrapper .signup-form .wrapper-2{
        margin: 30px 23px;
    }

    .signup-wrapper .company-details .title {
        width: 90%;
        font-size: 1.5em;
    }

}
@media (min-width: 300px) {
    .signup-wrapper .signup-form .login{
        display: inline-block;
    }
    .signup-wrapper .signup-form .wrapper-2{
        margin: 30px 60px;
    }

    .signup-wrapper .company-details .title {
        width: 80%;
       font-size: 2em;
    }

}
@media (min-width: 500px) {
    .signup-wrapper .signup-form .login{
        display: inline;
    }
}

@media (min-width: 700px) {
    .signup-wrapper .company-details,
    .signup-wrapper .signup-form {
        width: 50%;
    }
    .signup-wrapper {
       display: flex;
        max-width: 700px;
        margin: 0 auto;
        margin-top: 5%;
    }
    .signup-wrapper .company-details .wrapper-1 {
        padding-bottom: 150px;
        padding-top: 160px;
    }
    .signup-wrapper .company-details .slogan {
        padding: 0 20px;
        width: 70%;
        margin: 0 auto;
        color: #fff;
        font-size: 1.2em;
        text-align: center;
        text-shadow: 1px 1px #4b4a4a;
        display: block;
    }
    .signup-wrapper .company-details .title {
        width: 76%;
    }
    .signup-wrapper .signup-form .wrapper-2{
        padding: 50px 40px;
        margin: 0;
    }

    .signup-wrapper .signup-form .login{
        display: inline;
    }
    .signup-wrapper .signup-form .form .content-item{
        text-align: initial;
    }
    .signup-wrapper .signup-form .form input[type=text],.signup-wrapper .signup-form .form input[type=password]{
        text-align: initial;

    }
   .signup-wrapper .signup-form .form-title{
        text-align: initial;
     padding :0;
    }

}
</style>

</head>
<body>
<div class="content-wrapper">
        <div class="content">
            <div class="signup-wrapper shadow-box">
                <div class="company-details ">
                  
                    <div class="shadow"></div>
                    <div class="wrapper-1">
                        <div class="logo">
       <div class="icon-food">
         
                    </div>
                        </div>
                        <h1 class="title"> Apricot blossom</h1>
                        <div class="slogan">Sending knowledge to you.</div>
                    </div>

                </div>
                <div class="signup-form ">
                    <div class="wrapper-2">
                        <div class="form-title">Sign up today!</div>
                        <div class="form">
                            <form action="SignupServlet" method="post">
                            <p class="text-success">${messe}</p>
                            <p class="text-danger">${mess}</p>
                            <p class="content-item">
                                
                                    <label>Id
                                        <input type="text" name="login-id" placeholder="Please enter..."  required>
                                    </label>
                                </p>

                              
                                <p class="content-item">
                                
                                    <label>full name
                                        <input type="text" name="login-username" placeholder="Please enter..."  required>
                                    </label>
                                </p>

                                <p class="content-item">

                                    <label>password
                                        <input type="text"  name="login-password" placeholder="*****" required>
                                    </label>
                                </p>


                                <button type="submit" class="signup">CREATE</button>
                                <a href="Login.jsp" class="login">login</a>
                            </form>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>


    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
</body>

</html>
