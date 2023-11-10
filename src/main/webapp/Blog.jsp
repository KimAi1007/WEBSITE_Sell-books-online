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
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>


.coupon {
 display: flex;
  border: 5px dotted #bbb;
  width: 80%;
  border-radius: 15px;
  margin: 0 auto;
  margin-top: 93px;
  max-width: 600px;
  
}

.container {
  padding: 2px 16px;


}

.promo {
  background: #ccc;
  padding: 3px;
}

.expire {
  color: red;
}
</style>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="coupon">
  <div class="container">
    <h3>Company Logo</h3>
  </div>
  <img src="image/SP2.png" alt="Avatar" style="width:20%;">
  <div class="container" style="background-color:white">
    <h2><b>20% OFF YOUR PURCHASE</b></h2> 
    <p>Lorem ipsum dolor sit amet, et nam pertinax gloriatur. Sea te minim soleat senserit, ex quo luptatum tacimates voluptatum, salutandi delicatissimi eam ea. In sed nullam laboramus appellantur, mei ei omnis dolorem mnesarchum.</p>
  </div>
  <div class="container">
    <p>Use Promo Code: <span class="promo">BOH232</span></p>
    <p class="expire">Expires: Jan 03, 2021</p>
  </div>
  
</div>
<div class="coupon">
  <div class="container">
    <h3>Company Logo</h3>
  </div>
  <img src="image/SP2.png" alt="Avatar" style="width:20%;">
  <div class="container" style="background-color:white">
    <h2><b>20% OFF YOUR PURCHASE</b></h2> 
    <p>Lorem ipsum dolor sit amet, et nam pertinax gloriatur. Sea te minim soleat senserit, ex quo luptatum tacimates voluptatum, salutandi delicatissimi eam ea. In sed nullam laboramus appellantur, mei ei omnis dolorem mnesarchum.</p>
  </div>
  <div class="container">
    <p>Use Promo Code: <span class="promo">BOH232</span></p>
    <p class="expire">Expires: Jan 03, 2021</p>
  </div>
  
</div>

</body>
</html> 
