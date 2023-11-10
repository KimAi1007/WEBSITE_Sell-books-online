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
		<form action="UpdateSanpham" method="post">
			<div class="card">
				<div class="card-body">
					<h2>Edit Product</h2>

					<fieldset class="form-group">
						<label>Mã sách</label> <input value="${sanphamEdit.masach}"
							type="text" class="form-control" name="masach"
							required="required" readonly>
					</fieldset>
					<fieldset class="form-group">
						<label>Hình ảnh</label> <input value="${sanphamEdit.hinhanh}"
							type="text" class="form-control" name="hinhanh"
							required="required">
					</fieldset>
					
					<fieldset class="form-group">
						<label>ID loại sách</label> <input value="${sanphamEdit.idloaisach}"
							type="text" class="form-control" name="idloaisach"
							required="required">

					<fieldset class="form-group">
						<label>Loại sách</label> <input value="${sanphamEdit.loaisach}"
							type="text" class="form-control" name="loaisach"
							required="required">
					</fieldset>

					<fieldset class="form-group">
						<label>Tên sách</label> <input value="${sanphamEdit.tensach}"
							type="text" class="form-control" name="tensach"
							required="required">
					</fieldset>

					<fieldset class="form-group">
						<label>Tác giả</label> <input value="${sanphamEdit.tacgia}"
							type="text" class="form-control" name="tacgia"
							required="required">
					</fieldset>
					<fieldset class="form-group">
						<label>Nhà cung cấp</label> <input
							value="${sanphamEdit.nhacungcap}" type="text"
							class="form-control" name="nhacungcap" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label>Nhà XB</label> <input value="${sanphamEdit.nhaxuatban}"
							type="text" class="form-control" name="nhaxuatban"
							required="required">
					</fieldset>
					<fieldset class="form-group">
						<label>Năm XB</label> <input value="${sanphamEdit.namxuatban}"
							type="text" class="form-control" name="namxuatban"
							required="required">
					</fieldset>
					<fieldset class="form-group">
						<label>Giá sách(vnd)</label> <input value="${sanphamEdit.dongia}"
							type="text" class="form-control" name="dongia"
							required="required">
					</fieldset>
					<fieldset class="form-group">
						<label>Số lượng nhập</label> <input
							value="${sanphamEdit.soluongnhap}" type="text"
							class="form-control" name="soluongnhap" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label>Đã bán</label> <input value="${sanphamEdit.daban}"
							type="text" class="form-control" name="daban" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label>Tồn kho</label> <input value="${sanphamEdit.tonkho}"
							type="text" class="form-control" name="tonkho"
							required="required">
					</fieldset>
					<fieldset class="form-group">
						<label>Giới thiệu</label> <textarea style="height: 200px;"
							type="text" class="form-control" name="gioithieu"
							required="required">${sanphamEdit.gioithieu}</textarea>
					</fieldset>

					<button type="submit" class="btn btn-success">Save</button>

				</div>
			</div>
		</form>
	</div>
</body>
</html>

