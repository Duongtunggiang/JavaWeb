<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="css_itplus.css">
    <link rel="stylesheet" href="card.css">
    <script src="jquery_new.js"></script>
    <script src="home_jquery.js"></script>
<title>Giỏ hàng</title>
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
				        <c:when test="${empty sessionScope.username}">
				            <a class="nav-link" href="${pageContext.request.contextPath}/login.jsp">Account
				                <i class="fa fa-user na" title="Cá nhân"></i>
				            </a>
				        </c:when>
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
        <div class="list-menu">
            <ul class="list-ul-menu">
                <li class="has-submenu"><a href="${pageContext.request.contextPath}/Home">Trang Chủ</a></li>         
                <li class="has-submenu"><a href="${pageContext.request.contextPath}/san-pham.jsp">Sản Phẩm <i class="fa fa-chevron-down"></i></a>
                    <ul class="submenu">
                        <li class="submenu-item">
                            <ul class="menu-pruct menu-product">
                                <li><b>Sản phẩm mới</b></li>
                                <li><a href="#" title="iPhone 15 Promax 256Gb mới">iPhone 15 Promax 256Gb</a></li>
                                <li><a href="#" title="iPhone 15 Promax 512Gb mới">iPhone 15 Promax 512Gb</a></li>
                                <li><a href="#" title="iPhone 15 Promax 1Tb mới">iPhone 15 Promax 1Tb</a></li>
                                <li><a href="#" title="iPhone 15 Pro 128Gb mới">iPhone 15 Pro 128Gb</a></li>
                            </ul>
                        </li>
                        <li class="submenu-item">
                            <ul class="menu-pruct menu-product">
                                <li><b>Đã qua sử dụng 99%</b></li>
                                <li><a href="#" title="iPhone 12 đã qua sử dụng">iPhone 12 đã qua sử dụng</a></li>
                                <li><a href="#" title="iPhone 12 đã qua sử dụng">iPhone 12 đã qua sử dụng</a></li>
                                <li><a href="#" title="iPhone 13 đã qua sử dụng">iPhone 13 đã qua sử dụng</a></li>
                                <li><a href="#" title="iPhone 14 đã qua sử dụng">iPhone 14 đã qua sử dụng</a></li>
                                <!-- Các dòng iPhone khác đã qua sử dụng -->
                            </ul>
                        </li>
                        <li class="submenu-item">
                            <ul class="menu-pruct menu-product">
                                <li><b>Đã qua sử dụng 95%</b></li>
                                <li><a href="#" title="iPhone 11 đã qua sử dụng 95%">iPhone 11 95%</a></li>
                                <li><a href="#" title="iPhone 12 đã qua sử dụng 95%">iPhone 12 95%</a></li>
                                <li><a href="#" title="iPhone 13 đã qua sử dụng 95%">iPhone 13 95%</a></li>
                                <li><a href="#" title="iPhone 14 đã qua sử dụng 95%">iPhone 14 95%</a></li>
                                <!-- Các dòng iPhone khác đã qua sử dụng 95% -->
                            </ul>
                        </li>
                        <li class="submenu-item">
                            <ul class="menu-pruct menu-product">
                                <li><b>Linh kiện phụ kiện</b></li>
                                <li><a href="#" title="Phụ kiện iPhone">Phụ kiện iPhone</a></li>
                                <li><a href="#" title="Ốp lưng iPhone">Ốp lưng iPhone</a></li>
                                <li><a href="#" title="Air pod">Air pod</a></li>
                                <!-- Các linh kiện và phụ kiện khác -->
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="has-submenu"><a href="${pageContext.request.contextPath}/gioi-thieu.jsp">Giới Thiệu</a></li>
                <li class="has-submenu"><a href="#">Dịch Vụ</a></li>
                <li class="has-submenu"><a href="#">Tuyển Dụng <i class="fa fa-chevron-down"></i></a>
                    <ul class="submenu">
                        <li class="submenu-item"><a href="#" title="Tuyển dụng nhân viên bán hàng">Nhâ viên bán hàng</a></li>
                        <li class="submenu-item"><a href="#" title="Tuyển dụng nhân viên Marketing">Nhân viên Marketing</a></li>
                        <li class="submenu-item"><a href="#" title="Tuyển dụng nhân viên quản lý">Quản lý</a></li>
                        <li class="submenu-item"><a href="#" title="Tuyển dụng nhân viên kế toán">Kế toán</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    
        <div class="container-card">
        <h1>Giỏ hàng</h1>
        <table>
            <thead>
                <tr>
                    <th>Sản phẩm</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Tổng cộng</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <img src="iphone.jpg" alt="iPhone">
                        <span>iPhone 11</span>
                    </td>
                    <td>11.000.000đ</td>
                    <td>
                        <div class="btn-quantity">
                            <button class="btn-minus">-</button>
                            <input type="number" min="0" value="1">
                            <button class="btn-plus">+</button>
                        </div>
                    </td>
                    <td class="total-price">11.000.000đ</td>
                    <td>
                        <button class="btn-remove">Xóa</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="iphone.jpg" alt="iPhone">
                        <span>iPhone 11</span>
                    </td>
                    <td>11.000.000đ</td>
                    <td>
                        <div class="btn-quantity">
                            <button class="btn-minus">-</button>
                            <input type="number" min="0" value="1">
                            <button class="btn-plus">+</button>
                        </div>
                    </td>
                    <td class="total-price">11.000.000đ</td>
                    <td>
                        <button class="btn-remove">Xóa</button>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <img src="iphone.jpg" alt="iPhone">
                        <span>iPhone 11</span>
                    </td>
                    <td>11.000.000đ</td>
                    <td>
                        <div class="btn-quantity">
                            <button class="btn-minus">-</button>
                            <input type="number" min="0" value="1">
                            <button class="btn-plus">+</button>
                        </div>
                    </td>
                    <td class="total-price">11.000.000đ</td>
                    <td>
                        <button class="btn-remove">Xóa</button>
                    </td>
                </tr>
                <!-- Thêm các hàng sản phẩm khác tương tự ở đây -->
            </tbody>
        </table>
        <div class="total">
            <span>Tổng tiền:</span>
            <span id="total-amount"></span>
        </div>
        <button class="btn-checkout">Thanh toán</button>
    </div>
    <script src="card.js"></script>
        
        <div class="footer">
            <div class="container">
                <div class="footer-content">
                    <div class="footer-column">
                        <h4>Thông tin</h4>
                        <ul>
                            <li><a href="#">Về chúng tôi</a></li>
                            <li><a href="#">Câu hỏi thường gặp</a></li>
                            <li><a href="#">Chính sách bảo mật</a></li>
                        </ul>
                    </div>
                    <div class="footer-column">
                        <h4>Địa chỉ</h4>
                        <ul>
                            <li>123 Đường ABC, Quận XYZ</li>
                            <li>Thành phố ABC</li>
                            <li>Việt Nam</li>
                        </ul>
                    </div>
                    <div class="footer-column">
                        <h4>Liên hệ hỗ trợ</h4>
                        <ul>
                            <li><i class="fa fa-phone"></i> 0123456789</li>
                            <li><i class="fa fa-envelope"></i> info@example.com</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>	

        <!-- Làm thông tin gì cũng đều phải nằm trong thẻ div cuối này!! -->
    </div>
	<script src="home_jquery.js"></script>
  	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>