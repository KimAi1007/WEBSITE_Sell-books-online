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
body {
	background-image: url('image/4K.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	height: 100%;
	font-family: 'Numans', sans-serif;
}
* {
  box-sizing: border-box;
}

body {
  font-family: Arial;
  font-size: 17px;
}

.container {
  position: relative;
  max-width: 688px;
  margin: 0 auto;
}

.container img {vertical-align: middle;}

.container .content {
  position: absolute;
  bottom: 0;
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
  color: #f1f1f1;
  width: 100%;
  padding: 20px;
  font-size: 10px;
   font-style: italic;
    font-family: Florence, cursive;
    line-height: 35px;
}
.container .logo {
display: flex;
justify-content: center;
}
.container .content .tensach {
   display: flex;
   align-items: center;
   justify-content: center;
   font-size: 15px;
   font-style: italic;
    font-family: Florence, cursive;
    line-height: 25px;
}

.container button {
margin:auto;
  display:block;
text-decoration: none;
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin-top: 8px ;
  border: none;
  cursor: pointer;
  width: 50%;
  font-style: italic;
  font-size: 20px;
  border-radius: 20px;
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

button:hover {
  opacity: 0.8;
}
</style>
</head>
<body>

<div class="container">

  <img src="image/LL.png" alt="Notebook" style="width:100%;">
  <div class="content">
     
  <div class="logo">
  <img src="${chitietSP.hinhanh}" width="200" height="300" alt=""></div>
 
    <div class="tensach"> 
    <h1> ${chitietSP.tensach}</h1>
    </div> 
     <h1>Mã sách : ${chitietSP.masach}</h1>   
      <h1>Loại sách : ${chitietSP.loaisach}</h1>
      <h1>Tên tác giả : ${chitietSP.tacgia}</h1>
      <h1>Nhà xuất bản : ${chitietSP.nhaxuatban}</h1>
      <h1>Nhà cung cấp : ${chitietSP.nhacungcap}</h1>
      <h1>Năm XB : ${chitietSP.namxuatban}</h1>
      <h1>Review: ${chitietSP.gioithieu}</h1>

    <button>
    <a href="ReadSanpham">Back</a>
    </button>
  </div>
  
  
  </div>
  <%@include file="Footer.jsp"%>
</body>
</html>
