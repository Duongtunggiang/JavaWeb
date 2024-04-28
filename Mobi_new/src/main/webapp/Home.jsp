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
	<title>Trang Chủ</title>
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
                    <a class="nav-link" href="#">Account
                        <i class="fa fa-user na" title="Cá nhân"></i>
                    </a>
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
    
    <div class="content-menu">
        <div class="banner-content">
            <input class="button-back-banner" type="button" id="flip" value="&lt">
            <div class="panel"><img class="emg" src="https://mir-s3-cdn-cf.behance.net/project_modules/1400_webp/f3832e180145769.6505ae76214ca.jpg" alt=""></div>
            <div class="panel"><img class="emg"  src="https://images.macrumors.com/article-new/2023/08/iPhone-15-Blue-Three-Quarters-Perspective-Feature-2.jpg" alt=""></div>
            <div class="panel"><img class="emg" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLbjJ7V74vIEYBQAOH3akynXRIzIykiESLkNHBkyBP&s" alt=""></div>
            <input class="button-next-banner" type="button" id="flop" value="&gt">
            <div class="danhsach"> 	
                <ul class="uu">
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
        </div>
        <div class="promotion">
            <div class="list-promotion">
            <label for="" class="text-promotion"><b>Khuyen mai</b></label>
               <c:forEach items="${listP}" var="o">
	                <div class="container-promotion">
	                    <div class="goods-promotion">
	                        <a href="#">
	                        <img width="100px" height="150px" src="${o.img }" alt="">
	                        <h5 style="color: red;">${o.unitPrice}</h5>
	                        <p>${o.productName}</p>
	                        </a>
	                    </div>
	                </div>
                </c:forEach>
            </div>
        </div>
		        <div class="list-goods">
		            <div class="funct">
		            <c:forEach items="${listP}" var="o">
		                <ul class="orther-list">
		                    <li><a href="#">${o.productName}</a></li>
		                </ul></c:forEach>
		            </div>
		            <div class="row">
						<c:forEach items="${listP}" var="o">
							<div class="col-lg-2 col-md-3 col-6">
								<div class="card">
									<img src="${o.img}" class="card-img-top" alt="Product 1">
									<div class="card-body">
										<h5 class="card-text">${o.productName}</h5>
										<p class="text-danger"><b>${o.unitPrice}</b></p>
										<p class="card-title">${o.productType}</p>
										<a href="#" class="btn btn-primary">Mua ngay</a>
									</div>
								</div>
							</div>
						</c:forEach>
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

        <!-- Làm thông tin gì cũng đều phải nằm trong thẻ div cuối này!! -->
    </div>
	<script src="home_jquery.js"></script>
  	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>