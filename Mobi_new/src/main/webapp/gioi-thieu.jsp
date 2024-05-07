<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giới thiệu</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="bootstrap.min.css">
    <script src="jquery_new.js"></script>
    <script src="home_jquery.js"></script>
    <link rel="stylesheet" href="css_itplus.css">
    <style>
         h1 {
            text-align: center;
            color: #333;
        }

        p {
            line-height: 1.5;
            margin-bottom: 20px;
            text-indent: 1em;
            margin-left: 10px;
        }
        main {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            position: relative;
            top: 33%;
            /* left: 18%; */
        }
        body {
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
            color: #333;
        }
    </style>
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
    
    <div class="content-menu" style="margin-top: 20px;">
        <main>
        <h1>Chào mừng bạn đến với Mobile Smart</h1>
        <p>
            Mobile Smart là cửa hàng điện thoại di động hàng đầu, chuyên cung cấp các sản phẩm từ những thương hiệu nổi tiếng trên toàn thế giới. Với cam kết mang đến cho khách hàng sự lựa chọn đa dạng và chất lượng tốt nhất, chúng tôi tự hào là địa chỉ tin cậy để khám phá và mua sắm điện thoại thông minh.
        </p>
        <p>
            Tại Mobile Smart, chúng tôi hiểu rằng điện thoại di động không chỉ là một công cụ liên lạc, mà còn là một phần của phong cách sống và cá nhân hóa. Vì vậy, chúng tôi tập trung vào việc cung cấp các sản phẩm đa dạng từ các thương hiệu hàng đầu như Apple. Bất kể bạn là người yêu công nghệ, người dùng thông minh hay người muốn thể hiện cá nhân, chúng tôi sẽ có một chiếc điện thoại phù hợp với nhu cầu của bạn.
        </p>
        <p>
            Đặc biệt, Mobile Smart không chỉ cung cấp các dòng điện thoại mới nhất, mà còn có sẵn các sản phẩm công nghệ tiên tiến như tai nghe không dây, đồng hồ thông minh, phụ kiện điện thoại và nhiều hơn nữa. Chúng tôi luôn cập nhật những xu hướng công nghệ mới nhất để đáp ứng nhu cầu đa dạng của khách hàng.
        </p>
        <p>
            Tại Mobile Smart, chúng tôi không chỉ chú trọng đến việc cung cấp các sản phẩm chất lượng mà còn cam kết về dịch vụ tuyệt vời. Đội ngũ nhân viên chuyên nghiệp và thân thiện của chúng tôi sẽ luôn sẵn sàng hỗ trợ bạn trong quá trình mua sắm và tư vấn về sản phẩm. Chúng tôi đảm bảo rằng bạn sẽ có trải nghiệm mua sắm thoải mái và hài lòng tại Mobile Smart.
        </p>
        <p>
            Hãy ghé thăm cửa hàng của chúng tôi để khám phá bộ sưu tập điện thoại di động đa dạng và nhận được sự tư vấn chuyên nghiệp từ đội ngũ của chúng tôi. Chúng tôi rất mong được phục vụ bạn và giúp bạn tìm thấy chiếc điệnthoại hoàn hảo cho mình.

            Xin cảm ơn và hy vọng sớm được đón tiếp bạn tại Mobile Smart!

        </p>
    </main>
        
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
</body>
</html>