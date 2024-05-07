<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="bootstrap.min.css">
    <script src="jquery_new.js"></script>
    <link rel="stylesheet" href="css_itplus.css">
    <title>Trang thông tin người dùng</title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }

        .container-user {
            max-width: 400px;
            margin: 50px auto; 
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #dddddd;
            border-radius: 5px;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
            position: absolute;
            top: 10%;
            left: 30%;
        }

        .container-user h3 {
            color: #555555;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #dddddd;
            border-radius: 3px;
        }

        .button-container {
            text-align: center;
        }
        .button-container button {
            padding: 10px 20px;
            background-color: #4a4a4a;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        select {
            width: 100%;
            padding: 5px;
            margin-bottom: 10px;
            border-radius: 5px;
        }
        .cancel {
            background-color: #dddddd;
            color: #555555;
            margin-left: 10px;
        }
    </style>
    <script src="jquery_new.js"></script>
</head>
<body>
    <div class="header">
        <div class="menu menu-head">
            <ul class="nav justify-content-end">
                <li class="nav-item" >
                    <a class="nav-link active" href="#">Hỗ trợ <i class="fa fa-life-ring"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/card.jsp">Giỏ hàng <i class="fa fa-shopping-cart"></i></a>
                </li>
                <li class="nav-item">
				    <c:choose>
				        <c:otherwise>
				            <a class="nav-link" href="${pageContext.request.contextPath}/customerInfo.jsp">
				                <span id="username">${sessionScope.username}</span> 
				                <i class="fa fa-user na" title="Cá nhân"></i>
				            </a>
				        </c:otherwise>
				    </c:choose>
				</li>
            </ul>
        </div>
        <nav class="navbar navbar-light bg-light">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/Home" >
                <img class="logo-it" src="LoGo_ITPLUS__1_-removebg.png" width="30px" height="50px">
                <i  title="Logo">Mobile Smart</i></a>
            <form class="form-inline" style="margin-right: 20px;">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </nav>
     </div>
    <div class="container-user">
        <h3>Sửa thông tin người dùng</h3>
        <form action="#">
            <div class="form-group">
                <label for="name">Tên người dùng:</label>
                <input type="text" id="name" name="name" value="" placeholder="Tên người dùng" required>
            </div>
			<div class="form-group">
                <label for="username">Tên đăng nhập:</label>
                <input type="text" id="username" name="username" value="" placeholder="Tên đăng nhập" required>
            </div>
            <div class="form-group">
                <label for="old-password">Mật khẩu cũ:</label>
                <input type="password" id="old-password" name="old-password" placeholder="Mật khẩu cũ" required>
            </div>

            <div class="form-group">
                <label for="new-password">Mật khẩu mới:</label>
                <input type="password" id="new-password" name="new-password" placeholder="Mật khẩu mới" required>
            </div>

            <div class="form-group">
                <label for="confirm-password">Nhập lại mật khẩu mới:</label>
                <input type="password" id="confirm-password" name="confirm-password" placeholder="Nhập lại mật khẩu mới" required>
            </div>
            <div class="form-group">
                <label for="number">Số điện thoại:</label>
                <input type="text" id="number" name="number" value="" placeholder="số điện thoại" required>
            </div>
			<div class="form-group">
                <label for="address">Địa chỉ:</label>
                <input type="text" id="address" name="address" value="" placeholder="Địa chỉ" required>
            </div>
            <div class="form-group">
                <label for="mail">Email:</label>
                <input type="text" id="mail" name="mail" value="" placeholder="email" required>
            </div>
      
            <div class="form-group button-container">
                <button type="submit" class="but-update">Cập nhật</button>
                <button type="button" class="cancel">Thoát</button>
            </div>
        </form>
    </div>

    <script>
        $(document).ready(function() {
            $('.cancel').click(function() {
                window.location.href = "customerInfo.jsp";
            });
            $('.but-update').click(function(){
                window.location.href = "Home";
            });
        });
    </script>
</body>
</html>