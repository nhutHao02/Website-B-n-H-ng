<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">


<!-- Mirrored from htmldemo.net/pustok/pustok/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:22 GMT -->
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Pustok - Liên hệ</title>
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
		<section class="breadcrumb-section">
			<h2 class="sr-only">Site Breadcrumb</h2>
			<div class="container">
				<div class="breadcrumb-contents">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="IndexControl">Trang
									chủ</a></li>
							<li class="breadcrumb-item active">Liên hệ</li>
						</ol>
					</nav>
				</div>
			</div>
		</section>
		<!-- Cart Page Start -->
		<main class="contact_area inner-page-sec-padding-bottom">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div>
							<iframe style="height: 512px; width: 100%;"
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.2641832811714!2d106.78577111744386!3d10.867499999999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752723ea2654c5%3A0x4f23b763376a799d!2zQuG6o25nIHTDqm4gVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOw7RuZyBMw6JtIFRQLkhDTQ!5e0!3m2!1svi!2s!4v1598008005347!5m2!1svi!2s"
								" frameborder="0" allowfullscreen></iframe>
							<!--                        style="border:0; width: 100%; height: 270px;" -->
						</div>
					</div>
				</div>
				<div class="row mt--60 ">
					<div class="col-lg-5 col-md-5 col-12">
						<div class="contact_adress">
							<div class="ct_address">
								<h3 class="ct_title">Vị trí</h3>

							</div>
							<div class="address_wrapper">
								<div class="address">
									<div class="icon">
										<i class="fas fa-map-marker-alt"></i>
									</div>
									<div class="contact-info-text">
										<p>
											<span>Địa chỉ:</span> khu phố 6, phường Linh Trung, Tp.Thủ
											Đức, Tp.HCM
										</p>
									</div>
								</div>
								<div class="address">
									<div class="icon">
										<i class="far fa-envelope"></i>
									</div>
									<div class="contact-info-text">
										<p>
											<span>Email: </span> hotro@example.com
										</p>
									</div>
								</div>
								<div class="address">
									<div class="icon">
										<i class="fas fa-mobile-alt"></i>
									</div>
									<div class="contact-info-text">
										<p>
											<span>Phone:</span> (800) 0123 456 789
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-7 col-md-7 col-12 mt--30 mt-md--0">
						<div class="contact_form">
							<h3 class="ct_title">Gửi lời nhắn cho chúng tôi</h3>
							<form id="contact-form"
								action=""
								method="post" class="contact-form">
								<div class="row">
									<div class="col-lg-12">
										<div class="form-group">
											<label>Tên <span class="required">*</span></label> <input
												type="text" id="con_name" name="con_name"
												class="form-control" required>
										</div>
									</div>
									<div class="col-lg-12">
										<div class="form-group">
											<label>Email <span class="required">*</span></label> <input
												type="email" id="con_email" name="con_email"
												class="form-control" required>
										</div>
									</div>
									<div class="col-lg-12">
										<div class="form-group">
											<label>Số điện thoại *</label> <input type="text"
												id="con_phone" name="con_phone" class="form-control">
										</div>
									</div>
									<div class="col-lg-12">
										<div class="form-group">
											<label>Nội dung</label>
											<textarea id="con_message" name="con_message"
												class="form-control"></textarea>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="form-btn">
											<button type="submit" value="submit" id="submit"
												class="btn btn-black" name="submit">Gửi</button>
										</div>
										<div class="form__output"></div>
									</div>
								</div>
							</form>
							<div class="form-output">
								<p class="form-messege"></p>
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
	<script src="js/plugins.js"></script>
	<script src="js/ajax-mail.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2D8wrWMY3XZnuHO6C31uq90JiuaFzGws"></script>
	<script src="js/custom.js"></script>
</body>


<!-- Mirrored from htmldemo.net/pustok/pustok/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:22 GMT -->
</html>