<%@ page import="Connection.DbCon"%>
<%@ page import="Model.Sanpham"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!Doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container col-md-5">
		<form action="CreatLoaiSanpham" method="post">
			<div class="card">
				<div class="card-body">
					<h2>Creat Product</h2>

					
					
					<fieldset class="form-group">
						<label>Id loại sách</label> <input 
							type="text" class="form-control" name="idloaisach"
							required="required">
					</fieldset>
					
					<fieldset class="form-group">
						<label>Loại sách</label> <input
							type="text" class="form-control" name="loaisach"
							required="required" >
					</fieldset>
	

					<button type="submit" class="btn btn-success">Save</button>

				</div>
			</div>
		</form>
	</div>
</body>
</html>

