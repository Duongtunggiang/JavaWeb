<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<title>Trang Chu</title>
</head>
<body>
<div class="col-sm-9">
	<div class="row">
		<c:forEach items="${listP}" var="o">
			<div class="card">
				<img class="card-img-top" alt="" src="${o.img}">
				<div class="card-body">
					<h4 class="card-title show_txt"><a href="#" title="View Producr">${o.productName}</a></h4>
					<p class="card-text show_txt">${o.productType}</p>
					<div class="row">
						<div class="col">
							<p class="btn btn-danger btn-block">${o.unitPrice}</p>
						</div>
						<div class="col">
							<a href="#" class="btn btn-success btn-block">Add to card</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<h1>Trang Chu Mobile Star</h1>
	<div class="menu menu-head">
        <ul class="nav justify-content-end">
            <li class="nav-item" >
                <a class="nav-link active" href="#">AAA</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">BBB</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Account
                    <i class="fa fa-user na" title="Cá nhân"></i>
                </a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
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
            <li><a href="#">Trang Chu</a></li>
            <li><a href="#">Gioi thieu</a></li>
            <li><a href="#">San Pham</a></li>
            <li><a href="#">Dich Vu</a></li>
            <li><a href="#">Lien He</a></li>
        </ul>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>