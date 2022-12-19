<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">


<!-- Mirrored from htmldemo.net/pustok/pustok/login-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:16 GMT -->
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Pustok - Đăng nhập-Đăng kí</title>
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
							<li class="breadcrumb-item active">Đăng nhập - Đăng kí </li>
						</ol>
					</nav>
				</div>
			</div>
		</section>
		<!--=============================================
    =            Login Register page content         =
    =============================================-->
		<main class="page-section inner-page-sec-padding-bottom">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb--30 mb-lg--0">
						<!-- Login Form s-->
<!-- 						<form action="" method="post"> -->
							<div class="login-form">
								<h4 class="login-title">Khách hàng mới</h4>
								<p><span class="font-weight-bold">Tôi là  khách hàng mới</span></p>
								<div class="row">
									<form action="Account?type=register" method="post">
									<div class="col-md-12 col-12 mb--15">
										<label for="email">Họ và tên</label>
										<input name="fullname" class="mb-0 form-control" type="text" id="name"
											placeholder="Nhập họ và tên của bạn">
									</div>
									<div class="col-12 mb--20">
										<label for="email">Email *</label>
										<input name="email" class="mb-0 form-control" type="email" id="email" placeholder="Nhập địa chỉ email">
									</div>
									<div class="col-lg-6 mb--20">
										<label for="password">Mật khẩu *</label>
										<input name="pass" class="mb-0 form-control" type="password" id="password" placeholder="Nhập mật khẩu">
									</div>
									<div class="col-lg-6 mb--20">
										<label for="password">Nhập lại mật khẩu *</label>
										<input name="passRP" class="mb-0 form-control" type="password" id="repeat-password" placeholder="Nhập lại mật khẩu">
									</div>
									<div>
									<c:if test="${error==1 }">
									<label style="color: red;" >Email đã tồn tại</label>
									</c:if>
									<c:if test="${error==2 }">
									<label style="color: red;" >Nhập lại mật khẩu không đúng</label>
									</c:if>
									</div>
									<div class="col-md-12">
										<button type="submit" class="btn btn-outlined">Đăng kí</button>
									</div>
									</form>
								</div>
							</div>
<!-- 						</form> -->
					</div>
					<div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
<!-- 						<form action="Account?type=login" method="post"> -->
							<div class="login-form">
								<h4 class="login-title">Khách hàng cũ</h4>
								<p><span class="font-weight-bold">Tôi là khách hàng cũ</span></p>
								<div class="row">
									<form action="Account?type=login" method="post">
									<div class="col-md-12 col-12 mb--15">
										<label for="email">Tên đăng nhập *</label>
										<input class="mb-0 form-control" type="email" id="email1" name="user"
											placeholder="Nhập địa chỉ email của bạn">
									</div>
									<div class="col-12 mb--20">
										<label for="password">Mật Khẩu *</label>
										<input class="mb-0 form-control" type="password" id="login-password" name="passw" placeholder="Nhập mật khẩu">
									</div>
									<div>
									<c:if test="${error==1 }">
									<label style="color: red;" >Email không tồn tại</label>
									</c:if>
									<c:if test="${error==2 }">
									<label style="color: red;" >Mật khẩu không đúng</label>
									</c:if>
									
									</div>
									<div class="col-md-12">
<!-- 										<input hidden="true" value="login" name="type"> -->
										<button type="submit" class="btn btn-outlined">Đăng nhập</button>
									</div>
									</form>
								</div>
							</div>
<!-- 						</form> -->
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


<!-- Mirrored from htmldemo.net/pustok/pustok/login-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:16 GMT -->
</html>