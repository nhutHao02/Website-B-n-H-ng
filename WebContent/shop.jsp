<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">


<!-- Mirrored from htmldemo.net/pustok/pustok/shop-grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:14 GMT -->
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Pustok - Shop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Use Minified Plugins Version For Fast Page Load -->
<link rel="stylesheet" type="text/css" media="screen"
	href="css/plugins.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="css/main.css" />
<link rel="shortcut icon" type="image/x-icon" href="image/favicon.ico">
</head>

<body>
	<div class="site-wrapper" id="top">
		<jsp:include page="/header/header_U.jsp"></jsp:include>
	</div>
	<section class="breadcrumb-section">
		<h2 class="sr-only">Site Breadcrumb</h2>
		<div class="container">
			<div class="breadcrumb-contents">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">Trang
								chủ</a></li>
						<li class="breadcrumb-item active">Shop</li>

					</ol>
				</nav>
			</div>
		</div>
	</section>
	<main class="inner-page-sec-padding-bottom">
		<div class="container">
			<div class="shop-toolbar mb--30">
				<div class="row align-items-center">
					<div class="col-lg-2 col-md-2 col-sm-6">
						<!-- Product View Mode -->
						<div class="product-view-mode">
							<a href="#" class="sorting-btn active" data-target="grid"><i
								class="fas fa-th"></i></a> <a href="#" class="sorting-btn"
								data-target="grid-four"> <span class="grid-four-icon">
									<i class="fas fa-grip-vertical"></i><i
									class="fas fa-grip-vertical"></i>
							</span>
							</a> <a href="#" class="sorting-btn" data-target="list "><i
								class="fas fa-list"></i></a>
						</div>
					</div>
					<div class="col-xl-5 col-md-4 col-sm-6  mt--10 mt-sm--0">
						<span class="toolbar-status"> </span>
					</div>
					<div class="col-lg-2 col-md-2 col-sm-6  mt--10 mt-md--0">
						<div class="sorting-selection">
							<span>Hiển thị:</span> <select
								class="form-control nice-select sort-select">
								<option value="" selected="selected">3</option>
								<option value="">9</option>
								<option value="">5</option>
								<option value="">10</option>
								<option value="">12</option>
							</select>
						</div>
					</div>
					<div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 mt--10 mt-md--0 ">
						<div class="sorting-selection">
							<span>Sort:</span> <select
								class="form-control nice-select sort-select mr-0">
								<option value="" selected="selected">Sắp xếp mặc định</option>
								<option value="">Sắp xếp theo:Tên (A - Z)</option>
								<option value="">Sắp xếp theo:Tên (Z - A)</option>
								<option value="">Sắp xếp theo:Giá (Thấp &gt; Cao)</option>
								<option value="">Sắp xếp theo:Giá (Cao &gt; Thấp)</option>

							</select>
						</div>
					</div>
				</div>
			</div>


			<div
				class="shop-product-wrap grid with-pagination row space-db--30 shop-border">
				<c:forEach var="sp" items="${listSP}">
					<div class="col-lg-4 col-sm-6">
						<div class="product-card">
							<div class="product-grid-content">
								<div class="product-header">
									<a href="#" class="author"> ${sp.tacGia } </a>
									<h3>
										<a href="ProductDetailsControl?masach=${sp.maSach}">${sp.tenSach }</a>
									</h3>
								</div>
								<div class="product-card--body">
									<div class="card-image">
										<img src="${sp.image }" alt="">
										<div class="hover-contents">
											<a href="ProductDetailsControl?masach=${sp.maSach}" class="hover-image"> <img
												src="${sp.image }" alt="">
											</a>
											<div class="hover-btns">
												<a
													href="CardControl?masach=${sp.maSach}&txt=add&page=shop.jsp"
													class="single-btn"> <i class="fas fa-shopping-basket"></i>
												</a> <a href="WishlistControl?masach=${sp.maSach}&txt=add&page=shop.jsp" class="single-btn"> <i
													class="fas fa-heart"></i>
												</a> <a href="#" class="single-btn"> <i
													class="fas fa-random"></i>
												</a> <a href="ProductDetailsControl?masach=${sp.maSach}"
													class="single-btn"> <i class="fas fa-eye"></i>
												</a>
											</div>
										</div>

									</div>
									<div class="price-block">
										<span class="price">${(sp.gia)-((sp.gia)*(sp.giamGia)/100) }vnđ</span>
										<del class="price-old">${sp.gia }vnđ</del>
										<span class="price-discount">${sp.giamGia }%</span>
									</div>
								</div>
							</div>

						</div>
					</div>
				</c:forEach>


			</div>
			<!-- Pagination Block -->
			<div class="row pt--30">
				<div class="col-md-12">
					<div class="pagination-block">
						<ul class="pagination-btns flex-center">
							<li><a href="#" class="single-btn prev-btn ">|<i
									class="zmdi zmdi-chevron-left"></i>
							</a></li>
							<li><a href="#" class="single-btn prev-btn "><i
									class="zmdi zmdi-chevron-left"></i> </a></li>
							<c:forEach begin="1" end="${CountP }" var="i">
								<li class="${page==i ? "active":"" }"><a
									href="ShopListControl?page=${i}" class="single-btn">${i}</a></li>
							</c:forEach>
							<li><a href="#" class="single-btn next-btn"><i
									class="zmdi zmdi-chevron-right"></i></a></li>
							<li><a href="#" class="single-btn next-btn"><i
									class="zmdi zmdi-chevron-right"></i>|</a></li>
						</ul>
					</div>
				</div>
			</div>

		</div>
	</main>
	</div>
	<!--=================================
	<!--=================================
    Footer Area
===================================== -->
	<jsp:include page="/footer/footer.jsp"></jsp:include>
	<!-- Use Minified Plugins Version For Fast Page Load -->
	<script src="js/plugins.js"></script>
	<script src="js/ajax-mail.js"></script>
	<script src="js/custom.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

</body>


<!-- Mirrored from htmldemo.net/pustok/pustok/shop-grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:14 GMT -->
</html>