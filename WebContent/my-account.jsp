<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">


<!-- Mirrored from htmldemo.net/pustok/pustok/my-account.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:16 GMT -->
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Pustok - Tài khoản</title>
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
										class="fas fa-tachometer-alt"></i> Bảng điều khiển</a> <a
										href="#orders" data-bs-toggle="tab"><i
										class="fa fa-cart-arrow-down"></i> Đơn hàng</a> <a
										href="#account-info" data-bs-toggle="tab"><i
										class="fa fa-user"></i> Thông tin tài khoản</a>
										<a
										href="#changePass" data-bs-toggle="tab"><i
										class="fa fa-user"></i> Thay đổi mật khẩu</a>
										 <a
										href="Account?type=logout"><i class="fas fa-sign-out-alt"></i>
										Logout</a>
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

															<th>Mã đơn hàng</th>
															<th>Ngày</th>
															<th>Trạng thái</th>
															<th>Tổng tiền</th>
															<th>Chi tiết</th>
														</tr>
													</thead>
													<tbody>
													
													<c:forEach var="dh" items="${donhang}">
													<tr>
															<td>${dh.id_dh }</td>
															<td>${dh.ngay }</td>
															<td>${dh.tinhtrang }</td>
															
															<td>${dh.totalMoney() }</td>
															<td><a href="#" class="btn">View</a></td>
															</tr>
													</c:forEach>
														

													</tbody>
												</table>
											</div>
										</div>
									</div>

									<!-- Single Tab Content End -->

									<!-- Single Tab Content Start -->
									<div class="tab-pane fade" id="account-info" role="tabpanel">
										<div class="myaccount-content">
											<h3>Thông tin tài khoản</h3>
											<div class="account-details-form">

												<div class="row">
													<form action="Account?type=update" method="post">
														<div class="col-12  mb--30">
														<c:if test="${khachhang.fullName==null }">
														<label>Họ tên:</label> <input id="display-name" 
																placeholder="Họ và tên" name="fname" type="text">
														</c:if>
															<c:if test="${khachhang.fullName!=null }">
														<label>Họ tên:</label> <input id="display-name" 
																value="${khachhang.fullName }" name="fname" type="text">
														</c:if>
														</div>
														<div class="col-12  mb--30">
														<c:if test="${khachhang.age==null }">
														<label>Tuổi:</label> <input id="display-name"
																placeholder="Tuổi" name="age" type="text">
														</c:if>
															<c:if test="${khachhang.age!=null }">
														<label>Tuổi:</label> <input id="display-name"
																value="${khachhang.age }" name="age" type="text">
														</c:if>
														</div>
														<div class="  ">
															<label>Giới tính:</label> 
															<div style="clear: both">
															<c:if test="${khachhang.gender==true }">
															<input type="radio" id="nam"  name="gender" value="1" checked> 
															 <label for="nam">Nam</label>
															</c:if>
															 <c:if test="${khachhang.gender==false }">
															<input type="radio" id="nam"  name="gender" value="1"> 
															 <label for="nam">Nam</label>
															</c:if>
 															<br>
 															 <c:if test="${khachhang.gender==true }">
															<input type="radio" id="nu"  name="gender" value="0" > 
															 <label for="nu">Nữ</label>
															</c:if>
															<c:if test="${khachhang.gender==false }">
															<input type="radio" id="nu"  name="gender" value="0" checked > 
															 <label for="nu">Nữ</label>
															</c:if>
															</div>
	
														</div>
												
														<div class="col-12  mb--30">
														<c:if test="${khachhang.phone==null }">
														<label>Số điện thoại:</label> <input id="display-name"
																placeholder="Số điện thoại" name="phone" type="text">
															</c:if>
															<c:if test="${khachhang.phone!=null }">
														<label>Số điện thoại:</label> <input id="display-name"
																value="${khachhang.phone}" name="phone" type="text">
															</c:if>
														</div>
														<div class="col-12  mb--30">
														<c:if test="${khachhang.email==null }">
														<label>Email:</label> 
															<input id="display-name"
																placeholder="Email của bạn" name="email" type="text">
														</c:if>
														<c:if test="${khachhang.email!=null }">
														<label>Email:</label> 
															<input id="display-name"
																value="${khachhang.email }" name="email" type="text">
														</c:if>
															
														</div>
														<div class="col-12  mb--30">
														<c:if test="${khachhang.address==null }">
														<label>Địa chỉ:</label> <input id="display-name"
																placeholder="Địa chỉ" name="address" type="text">
														</c:if>
														<c:if test="${khachhang.address==null }">
														<label>Địa chỉ:</label> <input id="display-name"
																value="${ khachhang.address}" name="address" type="text">
														</c:if>
															
														</div>
														<div class="col-12">
															<button type="submit" class="btn btn--primary">Lưu thay đổi</button>
														</div>
													</form>
												</div>

											</div>
										</div>
									</div>
									<!-- Single Tab Content End -->
									<!-- Single Tab Content Start -->
									<div class="tab-pane fade" id="changePass" role="tabpanel">
										<div class="myaccount-content">
											<h3>Thay đổi mật khẩu</h3>
											<div class="account-details-form">
												<form action="Account?type=doimk" method="post">
													<div class="row">
														
													<div class="col-12  mb--30">
															<label>Mật khẩu cũ:</label> <input id="display-name"
																placeholder="Mật khẩu củ" name="pass" type="text">
														</div>
														<div class="col-12  mb--30">
															<label>Mật khẩu mới:</label> <input id="display-name"
																placeholder="Mật khẩu mới" name="newpass" type="text">
														</div>
														<div class="col-12  mb--30">
															<label>Nhập lại mật khẩu mới:</label> <input id="display-name"
																placeholder="Nhập lại mật khẩu mới" name="newpassRP" type="text">
														</div>
														<div class="col-12">
															<button type="submit" class="btn btn--primary">Lưu thay đổi</button>
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