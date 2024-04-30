<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" href="css_itplus.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="jquery_new.js"></script>
    <link rel="stylesheet" href="bootstrap.min.css">
	<title>Sản phẩm</title>
</head>
<body>
    <div class="header">
        <div class="menu menu-head">
            <ul class="nav justify-content-end">
                <li class="nav-item" >
                    <a class="nav-link active" href="#">Hỗ trợ <i class="fa fa-life-ring"></i></a>
                </li>
                <li class="nav-item">
                    
                    <a class="nav-link" href="#">Giỏ hàng <i class="fa fa-shopping-cart"></i></a>
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
            <a class="navbar-brand" href="#" >
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
                <li class="has-submenu"><a href="#">Giới Thiệu</a></li>
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
    <div class="content-menu-san-pham">
        <nav aria-label="breadcrumb">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/Home.jsp">Trang Chủ</a></li>
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/san-pham.jsp">Sản Phẩm</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Data</li>
                    </ol>
                </nav>
            </nav>
        <div class="information-product">
            <div class="production">
           <c:set var="product" value="${producted}" />

				<div class="production-img">
				    <input class="button-back-banner" type="button" id="flip" value="&lt">
				    <div class="imagess panel"><img class="emgi" src="${product.img}" alt=""></div>
				    <div class="imagess panel"><img class="emgi" src="https://images.macrumors.com/article-new/2023/08/iPhone-15-Blue-Three-Quarters-Perspective-Feature-2.jpg" alt=""></div>
				    <div class="imagess panel"><img class="emgi" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLbjJ7V74vIEYBQAOH3akynXRIzIykiESLkNHBkyBP&s" alt=""></div>
				    <input class="button-next-banner" type="button" id="flop" value="&gt">
				    <div class="list-img-product">
				        <!-- Hiển thị thông tin sản phẩm -->
				        <h2>${product.productName}</h2>
				        <p>Product Type: ${product.productType}</p>
				        <p>Product Category: ${product.productCategoryPath}</p>
				        <p>Unit Price: ${product.unitPrice}</p>
                        <ul class="uu">
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                </div>
              <%--   </c:forEach>  --%>
            </div>
            <div class="priced">
                <h3 class="name-phone">${product.productName}</h3>
				<h4 class="price">${product.unitPrice}đ</h4> <span><del>${product.oldPrice}đ</del></span>
                <div class="chose-memories">
                    <p><b>Chọn dung lượng</b></p>
                    <div class="chose-memory chose">
                        <input type="radio" class="check-radio-memory" id="chose1">
						<label for="myCheckbox">64Gb</label>
						<h6 class="price">${product.unitPrice}đ</h6>
                    </div>
                    <div class="chose-memory chose">
                        <input type="radio" class="check-radio-memory" id="chose2">
                        <label for="myCheckbox" >128Gb</label>
                        <h6 class="price">12.890.000đ</h6>
                    </div>                    
                </div>
                <div class="chose-colors">
                    <p><b>Chọn màu</b></p>
                    <div class="chose chose-color">
                        <input type="radio" class="check-radio-color">
                        <label for="myCheckbox" >Đen</label>
                        <h6 class="price">11.000.000đ</h6>
                    </div>
                    <div class="chose chose-color">
                        <input type="radio" class="check-radio-color" >
                        <label for="myCheckbox" >Trắng</label>
                        <h6 class="price">12.890.000đ</h6>
                    </div>        
                    <div class="chose chose-color">
                        <input type="radio" class="check-radio-color" >
                        <label for="myCheckbox" >Vàng gold</label>
                        <h6 class="price">12.890.000đ</h6>
                    </div> 
                    <div class="chose chose-color">
                        <input type="radio" class="check-radio-color">
                        <label for="myCheckbox" >Xanh</label>
                        <h6 class="price">12.890.000đ</h6>
                    </div>             
                </div>
                <div class="pay">
                    <input type="button" class="button-pay button-pay-now" id="button-pay-now" value="Thanh toán ngay"><br>
                    <input type="button" class="button-pay button-installment" id="button-installment" value="Trả góp"><br>
                    <input type="button" class="button-pay button-pay-later" id="button-pay-later" value="Thanh toán khi nhận hàng"><br><br>
                    <button type="button" class="button-add button-add-to-card" id="button-add-to-card" value="Thêm vào giỏ hàng">Thêm vào giỏ hàng <i class="fa fa-shopping-cart"></i></button>
                    <br>
                    <p class="gom"><i class="fa fa-check-circle"></i> Đã đi kèm theo phụ kiện</p>
                    <p class="gom"><i class="fa fa-check-circle"></i> Tặng kèm sạc nhanh 20W</p>
                    <p class="gom"><i class="fa fa-check-circle"></i> Tặng kèm cáp sạc Type-C to Lightning</p>
                    <p class="gom"><i class="fa fa-check-circle"></i> Tặng kèm tai nghe</p>
                    <p class="gom"><i class="fa fa-check-circle"></i> Tặng kèm ốp lưng chống sóc</p>
                    <p class="gom"><i class="fa fa-check-circle"></i> Đã có tem niêm phong ốc</p>
                </div>
            </div>
            <div class="guarantee">
                <p class="guarant"><b>Bảo hành 12 tháng</b></p>
                <p class="guarant"><i class="fa fa-shield"></i> Bảo hành 12 tháng</p>
                <p class="guarant"><i class="fa fa-shield"></i> Hỗ trợ 1 đổi 1 trong 30 ngày</p>
            </div>
            <div class="news">
                <p class="new-item">Tất cả iPhone chính hãng VN/A, LL/A được phân phối tại Mobile Smart đều được nhập trực tiếp từ Công ty TNHH Apple Việt Nam. Mobile Smart là nhà bán lẻ ủy quyền chính thức của Apple tại Việt Nam.</p>
            </div>
            <div class="information">
                <p class="infor-item"><b>Thông số kĩ thuật của <a href="#">iPhone 11</a></b></p>
                <img class="info-img" src="LoGo_ITPLUS__1_-removebg.png" alt="">
                <div class="info-text">
                    <p><b>Công nghệ màn hình:</b> IPS LCD</p>
                    <p><b>Tần số quét:</b> 60Hz</p>
                    <p><b>Kích thước màn hình:</b> 6.1 inch</p>
                    <p><b>Hệ điều hành: </b>IOS</p>
                    <p><b>Vi xử lý: </b>A15 Bionic</p>
                    <p><b>Sim: </b>1 nano SIM và 1 eSIM</p>
                </div>
                <input type="button" class="button-show-infor" id="button-show-infor" value="Xem chi tiết">
            </div>
        </div>
       

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
    </div>
<a href="${pageContext.request.contextPath}/Home.jsp">Day la trang san pham</a>
    	<script src="home_jquery.js"></script>
  	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>