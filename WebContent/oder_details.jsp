<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">


<!-- Mirrored from htmldemo.net/pustok/pustok/my-account.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:16 GMT -->
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Pustok - Book Store HTML Template</title>
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
							<li class="breadcrumb-item active">Tài khoản</li>
						</ol>
					</nav>
				</div>
			</div>
		</section>
		<div class="page-section inner-page-sec-padding">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="row">
							<!-- My Account Tab Menu Start -->
							<div class="col-lg-3 col-12">
								<div class="myaccount-tab-menu nav" role="tablist">
									<a href="#dashboad" class="active" data-bs-toggle="tab"><i
										class="fas fa-tachometer-alt"></i> Bảng điều khiển</a>
										 <a
										href="#orders" data-bs-toggle="tab"><i
										class="fa fa-cart-arrow-down"></i> Đơn hàng</a> 
										<a href="#download"
										data-bs-toggle="tab"><i class="fas fa-download"></i>
										Download</a> <a href="#payment-method" data-bs-toggle="tab"><i
										class="fa fa-credit-card"></i> Phương thức thanh toán</a> 
										<a
										href="#address-edit" data-bs-toggle="tab"><i
										class="fa fa-map-marker"></i> Địa chỉ</a> 
										<a href="#account-info"
										data-bs-toggle="tab"><i class="fa fa-user"></i> Account
										Details</a> 
										<a href="Account?type=logout"><i
										class="fas fa-sign-out-alt"></i> Logout</a>
								</div>
							</div>
							<!-- My Account Tab Menu End -->
							<!-- My Account Tab Content Start -->
							<div class="col-lg-9 col-12 mt--30 mt-lg--0">
								<div class="tab-content" id="myaccountContent">
									<!-- Single Tab Content Start -->
									<div class="tab-pane fade show active" id="dashboad"
										role="tabpanel">
										<div class="myaccount-content">
											<h3>Bảng điều khiển</h3>
											<div class="welcome mb-20">
												<p>
													Xin chào, <strong>${khachhang.fullName }</strong> (Nếu
													không phải <strong>${khachhang.fullName } !</strong><a
														href="login-register.html" class="logout"> ! Hãy đăng
														xuất</a>)
												</p>
											</div>
											<p class="mb-0">Từ bảng điều khiển tài khoản của bạn. bạn
												có thể dễ dàng kiểm tra và xem các đơn đặt hàng gần đây của
												mình, quản lý địa chỉ giao hàng và thanh toán cũng như chỉnh
												sửa mật khẩu và chi tiết tài khoản của bạn.</p>
										</div>
									</div>
									<!-- Single Tab Content End -->
									<!-- Single Tab Content Start -->
									<div class="tab-pane fade" id="orders" role="tabpanel">
										<div class="myaccount-content">
											<h3>Đơn hàng</h3>
											<div class="myaccount-table table-responsive text-center">
												<table class="table table-bordered">
													<thead class="thead-light">
														<tr>
															<th>No</th>
															<th>Name</th>
															<th>Date</th>
															<th>Status</th>
															<th>Total</th>
															<th>Action</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>1</td>
															<td>Mostarizing Oil</td>
															<td>Aug 22, 2018</td>
															<td>Pending</td>
															<td>$45</td>
															<td><a href="cart.html" class="btn">View</a></td>
														</tr>
														<tr>
															<td>2</td>
															<td>Katopeno Altuni</td>
															<td>July 22, 2018</td>
															<td>Approved</td>
															<td>$100</td>
															<td><a href="cart.html" class="btn">View</a></td>
														</tr>
														<tr>
															<td>3</td>
															<td>Murikhete Paris</td>
															<td>June 12, 2017</td>
															<td>On Hold</td>
															<td>$99</td>
															<td><a href="cart.html" class="btn">View</a></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									
									<!-- Single Tab Content End -->
									<!-- Single Tab Content Start -->
									<div class="tab-pane fade" id="download" role="tabpanel">
										<div class="myaccount-content">
											<h3>Downloads</h3>
											<div class="myaccount-table table-responsive text-center">
												<table class="table table-bordered">
													<thead class="thead-light">
														<tr>
															<th>Product</th>
															<th>Date</th>
															<th>Expire</th>
															<th>Download</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>Mostarizing Oil</td>
															<td>Aug 22, 2018</td>
															<td>Yes</td>
															<td><a href="#" class="btn">Download File</a></td>
														</tr>
														<tr>
															<td>Katopeno Altuni</td>
															<td>Sep 12, 2018</td>
															<td>Never</td>
															<td><a href="#" class="btn">Download File</a></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<!-- Single Tab Content End -->
									<!-- Single Tab Content Start -->
									<div class="tab-pane fade" id="payment-method" role="tabpanel">
										<div class="myaccount-content">
											<h3>Payment Method</h3>
											<p class="saved-message">You Can't Saved Your Payment
												Method yet.</p>
										</div>
									</div>
									<!-- Single Tab Content End -->
									<!-- Single Tab Content Start -->
									<div class="tab-pane fade" id="address-edit" role="tabpanel">
										<div class="myaccount-content">
											<h3>Billing Address</h3>
											<address>
												<p>
													<strong>Alex Tuntuni</strong>
												</p>
												<p>
													1355 Market St, Suite 900 <br> San Francisco, CA 94103
												</p>
												<p>Mobile: (123) 456-7890</p>
											</address>
											<a href="#" class="btn btn--primary"><i
												class="fa fa-edit"></i>Edit Address</a>
										</div>
									</div>
									<!-- Single Tab Content End -->
									<!-- Single Tab Content Start -->
									<div class="tab-pane fade" id="account-info" role="tabpanel">
										<div class="myaccount-content">
											<h3>Account Details</h3>
											<div class="account-details-form">
												<form action="#">
													<div class="row">
														<div class="col-lg-6 col-12  mb--30">
															<input id="first-name" placeholder="First Name"
																type="text">
														</div>
														<div class="col-lg-6 col-12  mb--30">
															<input id="last-name" placeholder="Last Name" type="text">
														</div>
														<div class="col-12  mb--30">
															<input id="display-name" placeholder="Display Name"
																type="text">
														</div>
														<div class="col-12  mb--30">
															<input id="email" placeholder="Email Address"
																type="email">
														</div>
														<div class="col-12  mb--30">
															<h4>Password change</h4>
														</div>
														<div class="col-12  mb--30">
															<input id="current-pwd" placeholder="Current Password"
																type="password">
														</div>
														<div class="col-lg-6 col-12  mb--30">
															<input id="new-pwd" placeholder="New Password"
																type="password">
														</div>
														<div class="col-lg-6 col-12  mb--30">
															<input id="confirm-pwd" placeholder="Confirm Password"
																type="password">
														</div>
														<div class="col-12">
															<button class="btn btn--primary">Save Changes</button>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
									<!-- Single Tab Content End -->
								</div>
							</div>
							<!-- My Account Tab Content End -->
						</div>
					</div>
				</div>
			</div>
		</div>
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


<!-- Mirrored from htmldemo.net/pustok/pustok/my-account.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:16 GMT -->
</html>