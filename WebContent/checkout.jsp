<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">


<!-- Mirrored from htmldemo.net/pustok/pustok/checkout.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:16 GMT -->
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Pustok - Thanh Toán</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Use Minified Plugins Version For Fast Page Load -->
	<link rel="stylesheet" type="text/css" media="screen" href="css/plugins.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
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
							<li class="breadcrumb-item"><a href="IndextControl">Trang chủ</a></li>
							<li class="breadcrumb-item active">Thanh toán</li>
						</ol>
					</nav>
				</div>
			</div>
		</section>
		<main id="content" class="page-section inner-page-sec-padding-bottom space-db--20">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<!-- Checkout Form s-->
						<div class="checkout-form">
							<div class="row row-40">
								<div class="col-12">
									<h1 class="quick-title">Thanh toán</h1>
									<!-- Slide Down Trigger  -->
									<div class="checkout-quick-box">
										<p><i class="far fa-sticky-note"></i>Mã giảm giá? <a href="javascript:"
												class="slide-trigger" data-target="#quick-cupon">
												Click để nhập mã giảm giá</a></p>
									</div>
									<!-- Slide Down Blox ==> Cupon Box -->
									<div class="checkout-slidedown-box" id="quick-cupon">
										<form action="/">
											<div class="checkout_coupon">
												<input type="text" class="mb-0" placeholder="Coupon Code">
												<a href="#" class="btn btn-outlined">Áp dụng</a>
											</div>
										</form>
									</div>
								</div>
								
								<div class="col-lg-7 mb--20">
									<!-- Billing Address -->
									
									<c:if test="${khachhang!=null }">
									<div id="billing-form" class="mb-40">
										<h4 class="checkout-title">Thông tin người nhận</h4>
										<div class="row">
											<div class="col-md-6 col-12 mb--20">
												<label>Họ và tên*</label>
												<input type="text" placeholder="Họ và tên" name="fullname" >${khachhang.fullName }
											</div>
											
											<div class="col-12 mb--20">
												<label>Tên công ty</label>
												<input type="text" placeholder="Tên công ty" name="companyname">
											</div>
											
											<div class="col-md-6 col-12 mb--20">
												<label>Email*</label>
												<input type="email" placeholder="Địa chỉ email" name="email">${khachhang.email }
											</div>
											<div class="col-md-6 col-12 mb--20">
												<label>Số điện thoại*</label>
												<input type="text" placeholder="Số điện thoại người nhận" name="phone">${khachhang.phone }
											</div>
											<div class="col-12 mb--20">
												<label>Địa chỉ*</label>
												<input type="text" placeholder="Nhập địa chỉ cụ thể, số nhà ,tên đường">
												
											</div>
											<div class="col-md-6 col-12 mb--20">
												<label>Thành phố*</label>
												<input type="text" placeholder="Thành phố" name="cityname">
											</div>
											<div class="col-md-6 col-12 mb--20">
												<label>Thị xã/Huyện*</label>
												<input type="text" placeholder="Thị xã / Huyện" name="huyen" >
											</div>
											<div class="col-md-6 col-12 mb--20">
												<label>Xã*</label>
												<input type="text" placeholder="Xã" name="xa">
											</div>
											
										</div>
									</div>
									</c:if>
									<c:if test="${khachhang==null }">
									<div id="billing-form" class="mb-40">
										<h4 class="checkout-title">Thông tin người nhận</h4>
										<div class="row">
											
											<div class="col-md-6 col-12 mb--20">
												<label>Họ và tên*</label>
												<input type="text" placeholder="Họ và tên" name="fullname">
											</div>
											
											<div class="col-12 mb--20">
												<label>Tên công ty</label>
												<input type="text" placeholder="Tên công ty" name="companyname">
											</div>
											
											<div class="col-md-6 col-12 mb--20">
												<label>Email*</label>
												<input type="email" placeholder="Địa chỉ email" name="email">
											</div>
											<div class="col-md-6 col-12 mb--20">
												<label>Số điện thoại*</label>
												<input type="text" placeholder="Số điện thoại người nhận" name="phone">
											</div>
											<div class="col-12 mb--20">
												<label>Địa chỉ*</label>
												<input type="text" placeholder="Nhập địa chỉ cụ thể, số nhà ,tên đường">
												
											</div>
											<div class="col-md-6 col-12 mb--20">
												<label>Thành phố*</label>
												<input type="text" placeholder="Thành phố" name="cityname">
											</div>
											<div class="col-md-6 col-12 mb--20">
												<label>Thị xã/Huyện*</label>
												<input type="text" placeholder="Thị xã / Huyện" name="huyen" >
											</div>
											<div class="col-md-6 col-12 mb--20">
												<label>Xã*</label>
												<input type="text" placeholder="Xã" name="xa">
											</div>
											
											
										</div>
									</div>
									</c:if>
									
									<div class="order-note-block mt--30">
										<label for="order-note">Ghi chú: </label>
										<textarea id="order-note" cols="30" rows="10" class="order-note"
											placeholder="Ghi chú" name="note"></textarea>
									</div>
									
								</div>
								<div class="col-lg-5">
									<div class="row">
										<!-- Cart Total -->
										<div class="col-12">
											<div class="checkout-cart-total">
												<h2 class="checkout-title">Đơn hàng của bạn</h2>
												<h4>Sản phẩm <span>Giá tiền</span></h4>
												<ul>
												<c:if test="${card!=null }">
												<c:forEach var="sp" items="${card.getCard()}">
												<li><span class="left">${sp.getSp().tenSach } X ${sp.soluong }</span> <span
															class="right">${sp.totalMoney() } vnđ</span></li>
												</c:forEach>
												</ul>
												<p>Tổng tiền <span>${card.getPrice()} vnđ</span></p>
												<p>Phí ship <span>00.00 vnđ</span></p>
												<h4>Tổng tiền thanh toán <span>${card.getPrice()} vnđ</span></h4>
												</c:if>
												
												<c:if test="${card==null }">
												
												</ul>
												<p>Tổng tiền <span>0 vnđ</span></p>
												<p>Phí ship <span>00.00 vnđ</span></p>
												<h4>Tổng tiền thanh toán <span>0 vnđ</span></h4>
												</c:if>
												<div class="method-notice mt--25">
													<article>
														<h3 class="d-none sr-only">blog-article</h3>
														Cảm ơn quý khách đã ủng hộ. Có vấn đề nào sai xót hoặc mọi thắc mắc xin liên hệ với chúng tối.
													</article>
												</div>
												<c:if test="${card==null}">
												<button  class="place-order w-100"> <a  href="ShopListControl?page=1">Tiến hành mua hàng </a>	</button>
												</c:if>
												<c:if test="${card!=null}">
												<button  class="place-order w-100"><a href="CheckoutControl"> Đặt hàng </a> </button>
												</c:if>
											</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
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


<!-- Mirrored from htmldemo.net/pustok/pustok/checkout.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:16 GMT -->
</html>