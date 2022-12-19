<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">


<!-- Mirrored from htmldemo.net/pustok/pustok/wishlist.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:16 GMT -->
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Pustok - Danh sách yêu thích</title>
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
						<li class="breadcrumb-item"><a href="IndexControl">Trang
								chủ</a></li>
						<li class="breadcrumb-item active">Danh sách yêu thích</li>
					</ol>
				</nav>
			</div>
		</div>
	</section>
	<!-- Wishlist Page Start -->
	<div class="cart_area inner-page-sec-padding-bottom">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<form action="https://htmldemo.net/pustok/pustok/">
						<!-- Cart Table -->
						<div class="cart-table table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th class="pro-thumbnail">Hình ảnh</th>
										<th class="pro-title">Tên sách</th>
										<th class="pro-price">Giá</th>
										<th class="pro-quantity">Số lượng</th>
										<th class="pro-subtotal">Tổng tiền</th>
										<th class="pro-remove">Xóa</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="sp" items="${wishlist.getCard() }">

										<tr>

											<td class="pro-thumbnail"><a href="#"><img
													src="${sp.getSp().image }" alt="Product"></a></td>
											<td class="pro-title"><a
												href="ProductDetailsControl?masach=${sp.getSp().maSach}">${sp.getSp().tenSach }</a></td>
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
											<td class="pro-remove"><a
												href="WishlistControl?masach=${sp.getSp().maSach}&txt=remove&page=wishlist.jsp"><i
													class="far fa-trash-alt"></i></a></td>
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
	<!-- Cart Page End -->
	</div>
	<!--=================================
  Brands Slider
===================================== -->
	<section class="section-margin">
		<h2 class="sr-only">Brand Slider</h2>
		<div class="container">
			<div class="brand-slider sb-slick-slider border-top border-bottom"
				data-slick-setting='{
                                            "autoplay": true,
                                            "autoplaySpeed": 8000,
                                            "slidesToShow": 6
                                            }'
				data-slick-responsive='[
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


<!-- Mirrored from htmldemo.net/pustok/pustok/wishlist.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:16 GMT -->
</html>