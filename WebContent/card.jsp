<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">


<!-- Mirrored from htmldemo.net/pustok/pustok/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:16 GMT -->
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Pustok - Trang chủ</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Use Minified Plugins Version For Fast Page Load -->
	<link rel="stylesheet" type="text/css" media="screen" href="css/plugins.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
	<link rel="shortcut icon" type="image/x-icon" href="image/favicon.ico">
</head>

<body>
	<div class="site-wrapper" id="top">
			<jsp:include page="/header/header_U.jsp"></jsp:include>
		<section class="breadcrumb-section">
			<h2 class="sr-only">Site Breadcrumb</h2>
			<div class="container">
				<div class="breadcrumb-contents">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="IndexControl">Trang chủ</a></li>
							<li class="breadcrumb-item active">Giỏ hàng</li>
						</ol>
					</nav>
				</div>
			</div>
		</section>
		<!-- Cart Page Start -->
		<main class="cart-page-main-block inner-page-sec-padding-bottom">
			<div class="cart_area cart-area-padding  ">
				<div class="container">
					<div class="page-section-title">
						<h1>Giỏ hàng</h1>
					</div>
					<div class="row">
						<div class="col-12">
							<form action="#" class="">
								<!-- Cart Table -->
								<div class="cart-table table-responsive mb--40">
									<table class="table">
										<!-- Head Row -->
										<thead>
											<tr>
												<th class="pro-remove"></th>
												<th class="pro-thumbnail">Hình ảnh</th>
												<th class="pro-title">Tên sách</th>
												<th class="pro-price">Giá</th>
												<th class="pro-quantity">Số lượng</th>
												<th class="pro-subtotal">Tổng tiền</th>
											</tr>
										</thead>
										<tbody>
											<!-- Product Row -->
											<c:forEach var="sp" items="${card.getCard() }">

<tr>
												<td class="pro-remove"><a href="CardControl?masach=${sp.getSp().maSach}&txt=remove&page=card.jsp"><i class="far fa-trash-alt"></i></a>
												</td>
												<td class="pro-thumbnail"><a href="#"><img
															src="${sp.getSp().image }" alt="Product"></a></td>
												<td class="pro-title"><a href="ProductDetailsControl?masach=${sp.getSp().maSach}">${sp.getSp().tenSach }</a></td>
												<td class="pro-price"><span>${sp.getSp().gia }</span></td>
												<td class="pro-quantity">
													<div class="pro-qty">
														<div class="count-input-block">
															<input type="number" class="form-control text-center"
																value="${sp.soluong }">
														</div>
													</div>
												</td>
												<td class="pro-subtotal"><span>${sp.totalMoney()}</span></td>
											</tr>


											</c:forEach>
		
										</tbody>
									</table>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="cart-section-2">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-12 mb--30 mb-lg--0">
							<!-- slide Block 5 / Normal Slider -->
							<div class="cart-block-title">
								<h2>Những cuốn sách khác</h2>
							</div>
							<div class="product-slider sb-slick-slider" data-slick-setting='{
							          "autoplay": true,
							          "autoplaySpeed": 8000,
							          "slidesToShow": 2
									  }' data-slick-responsive='[
                {"breakpoint":992, "settings": {"slidesToShow": 2} },
                {"breakpoint":768, "settings": {"slidesToShow": 3} },
                {"breakpoint":575, "settings": {"slidesToShow": 2} },
                {"breakpoint":480, "settings": {"slidesToShow": 1} },
                {"breakpoint":320, "settings": {"slidesToShow": 1} }
            ]'>
            
            					<c:forEach begin="1" end="10" var="sp" items="${spDAO.getAllKH()}">
            					
            					<div class="single-slide">
									<div class="product-card">
										<div class="product-header">
											<span class="author">
												${sp.tacGia}
											</span>
											<h3><a href="ProductDetailsControl?masach=${sp.maSach}">${sp.tenSach }</a></h3>
										</div>
										<div class="product-card--body">
											<div class="card-image">
												<img src="${sp.image}" alt="">
												<div class="hover-contents">
													<a href="ProductDetailsControl?masach=${sp.maSach}" class="hover-image">
														<img src="${sp.image}" alt="">
													</a>
													<div class="hover-btns">
														<a href="CardControl?masach=${sp.maSach}&txt=add&page=card.jsp" class="single-btn">
															<i class="fas fa-shopping-basket"></i>
														</a>
														<a href="WishlistControl?masach=${sp.maSach}&txt=add&page=card.jsp" class="single-btn">
															<i class="fas fa-heart"></i>
														</a>
														<a href="#" class="single-btn">
															<i class="fas fa-random"></i>
														</a>
														<a href="ProductDetailsControl?masach=${sp.maSach}" 
															class="single-btn">
															<i class="fas fa-eye"></i>
														</a>
													</div>
												</div>
											</div>
											<div class="price-block">
												<span class="price">£51.20</span>
												<del class="price-old">£51.20</del>
												<span class="price-discount">20%</span>
											</div>
										</div>
									</div>
								</div>
            					</c:forEach>
								
								
							</div>
						</div>
						<!-- Cart Summary -->
						<div class="col-lg-6 col-12 d-flex">
							<div class="cart-summary">
								<div class="cart-summary-wrap">
									<h4><span>Tổng giỏ hàng</span></h4>
									<p>Tổng tiền sách <span class="text-primary"><c:if test="${card!=null }"> ${card.getPrice() }VNĐ</c:if>
									<c:if test="${card==null }"> 0 VNĐ</c:if>
									</span></p>
									<p>Phí ship <span class="text-primary">00.00 VNĐ</span></p>
									<h2>Tổng tiền <span class="text-primary"><c:if test="${card!=null }"> ${card.getPrice() }VNĐ</c:if>
									<c:if test="${card==null }"> 0 VNĐ</c:if></span></h2>
								</div>
								<div class="cart-summary-button">
									<a href="checkout.jsp" class="checkout-btn c-btn btn--primary">Checkout</a>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
		<!-- Cart Page End -->
	</div>
	<!--=================================
  Brands Slider
===================================== -->
	<section class="section-margin">
		<h2 class="sr-only">Brand Slider</h2>
		<div class="container">
			<div class="brand-slider sb-slick-slider border-top border-bottom" data-slick-setting='{
                                            "autoplay": true,
                                            "autoplaySpeed": 8000,
                                            "slidesToShow": 6
                                            }' data-slick-responsive='[
                {"breakpoint":992, "settings": {"slidesToShow": 4} },
                {"breakpoint":768, "settings": {"slidesToShow": 3} },
                {"breakpoint":575, "settings": {"slidesToShow": 3} },
                {"breakpoint":480, "settings": {"slidesToShow": 2} },
                {"breakpoint":320, "settings": {"slidesToShow": 1} }
            ]'>
				<div class="single-slide">
					<img src="image/others/brand-1.jpg" alt="">
				</div>
				<div class="single-slide">
					<img src="image/others/brand-2.jpg" alt="">
				</div>
				<div class="single-slide">
					<img src="image/others/brand-3.jpg" alt="">
				</div>
				<div class="single-slide">
					<img src="image/others/brand-4.jpg" alt="">
				</div>
				<div class="single-slide">
					<img src="image/others/brand-5.jpg" alt="">
				</div>
				<div class="single-slide">
					<img src="image/others/brand-6.jpg" alt="">
				</div>
				<div class="single-slide">
					<img src="image/others/brand-1.jpg" alt="">
				</div>
				<div class="single-slide">
					<img src="image/others/brand-2.jpg" alt="">
				</div>
			</div>
		</div>
	</section>
	<!--=================================
    Footer Area
===================================== -->
	<jsp:include page="/footer/footer.jsp"></jsp:include>
	<!-- Use Minified Plugins Version For Fast Page Load -->
	<script src="js/plugins.js"></script>
	<script src="js/ajax-mail.js"></script>
	<script src="js/custom.js"></script>
</body>


<!-- Mirrored from htmldemo.net/pustok/pustok/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:16 GMT -->
</html>