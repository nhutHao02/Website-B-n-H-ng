<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">


<!---->
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Pustok - Book Store</title>
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
							<li class="breadcrumb-item"><a href="index.html">Trang
									chủ</a></li>
							<li class="breadcrumb-item active">Chi tiết sản phẩm</li>
						</ol>
					</nav>
				</div>
			</div>
		</section>
		<main class="inner-page-sec-padding-bottom">
			<div class="container">
				<div class="row  mb--60">
					<div class="col-lg-5 mb--30">
						<!-- Product Details Slider Big Image-->
						<div class="product-details-slider sb-slick-slider arrow-type-two"
							data-slick-setting='{
              "slidesToShow": 1,
              "arrows": false,
              "fade": true,
              "draggable": false,
              "swipe": false,
              "asNavFor": ".product-slider-nav"
              }'>
							<c:forEach var="img" items="${imgs}">
								<div class="single-slide">
									<img src="${img.image}" alt="">
								</div>
							</c:forEach>
						</div>
						<!-- Product Details Slider Nav -->

						<div
							class="mt--30 product-slider-nav sb-slick-slider arrow-type-two"
							data-slick-setting='{
            "infinite":true,
              "autoplay": true,
              "autoplaySpeed": 8000,
              "slidesToShow": 4,
              "arrows": true,
              "prevArrow":{"buttonClass": "slick-prev","iconClass":"fa fa-chevron-left"},
              "nextArrow":{"buttonClass": "slick-next","iconClass":"fa fa-chevron-right"},
              "asNavFor": ".product-details-slider",
              "focusOnSelect": true
              }'>
							<c:forEach var="img" items="${imgs}">
								<div class="single-slide">
									<img src="${img.image}" alt="">
								</div>
							</c:forEach>


						</div>
					</div>
					<div class="col-lg-7">
						<div class="product-details-info pl-lg--30 ">
							<p class="tag-block">
								Thể Loại: <a href="CategoryControl?loai=${spDetails.loaiSach}">${spDetails.loaiSach }
								</a>
							</p>
							<h3 class="product-title">${spDetails.tenSach }</h3>
							<ul class="list-unstyled">
								<li>Mã Sách: <span class="list-value">
										${spDetails.maSach }</span></li>
								<li>Tác giả: <a href="#" class="list-value ">${spDetails.tacGia }</a></li>
								<li>Ngày xuất bản: <span class="list-value">
										${spDetails.ngayXuatBan }</span></li>
								<li>Nơi Xuất Bản: <span class="list-value">
										${spDetails.noiXuatBan }</span></li>

							</ul>
							<div class="price-block">
								<span class="price-new">${(spDetails.gia)-((spDetails.gia)/(spDetails.giamGia)) }vnđ</span>
								<del class="price-old">${spDetails.gia}vnđ</del>
							</div>
							<div class="rating-widget">
								<div class="rating-block">
									<span class="fas fa-star star_on"></span> <span
										class="fas fa-star star_on"></span> <span
										class="fas fa-star star_on"></span> <span
										class="fas fa-star star_on"></span> <span class="fas fa-star "></span>
								</div>
								<div class="review-widget">
									<a href="#">(${sizeListDG } Đánh giá)</a> <span>|</span> 
								</div>
							</div>
							<article class="product-details-article">
								<h4 class="sr-only">Product Summery</h4>
								<p>${spDetails.moTa }.</p>
							</article>
							<div class="add-to-cart-row">
								<div class="count-input-block">
									<span class="widget-label">Qty</span> <input type="number"
										class="form-control text-center" name="slSach" value="1">
								</div>
								<div class="add-cart-btn">
									<a href="#" class="btn btn-outlined--primary"><span
										class="plus-icon">+</span>Thêm vào giỏ hàng</a>
								</div>
							</div>
							<div class="compare-wishlist-row">
								<a href="#" class="add-link"><i class="fas fa-heart"></i>Thêm
									vào danh sach yêu thích</a>
							</div>
						</div>
					</div>
				</div>
				<div class="sb-custom-tab review-tab section-padding">
					<ul class="nav nav-tabs nav-style-2" id="myTab2" role="tablist">
						<li class="nav-item"><a class="nav-link active" id="tab1"
							data-bs-toggle="tab" href="#tab-1" role="tab"
							aria-controls="tab-1" aria-selected="true"> Mô tả </a></li>
						<li class="nav-item"><a class="nav-link" id="tab2"
							data-bs-toggle="tab" href="#tab-2" role="tab"
							aria-controls="tab-2" aria-selected="true"> Đánh giá (${sizeListDG }) </a></li>
					</ul>
					<div class="tab-content space-db--20" id="myTabContent">
						<div class="tab-pane fade show active" id="tab-1" role="tabpanel"
							aria-labelledby="tab1">
							<article class="review-article">
								<h1 class="sr-only">Tab Article</h1>
								<p>${spDetails.moTaCT }</p>
							</article>
						</div>
						<div class="tab-pane fade" id="tab-2" role="tabpanel"
							aria-labelledby="tab2">
							<div class="review-wrapper">
								<h2 class="title-lg mb--20">${sizeListDG } đánh giá</h2>

								<c:forEach var="dg" items="${listDG}">
									<div class="review-comment mb--20">
										<div class="avatar">
											<img src="image/icon/author-logo.png" alt="">
										</div>
										<div class="text">
											<div class="rating-block mb--15">
												<c:forEach begin="1" end="${dg.sao}">
													<span class="ion-android-star-outline star_on"></span>
												</c:forEach>
										

											</div>
											<h6 class="author">
												${dg.ten } – <span class="font-weight-400">${dg.ngayDanhGia }</span>
											</h6>
											<p>${dg.noiDung }.</p>
										</div>
									</div>
								</c:forEach>
								<h2 class="title-lg mb--20 pt--15">Thêm đánh giá</h2>
								
								<form action="ReviewControl?masach=${spDetails.maSach}"
									method="post">
									<p class="d-block">Đánh giá</p>
									<span class="rating-widget-block"> <input type="radio"
										name="star" id="star1" value="1"> <label for="star1"></label>
										<input type="radio" name="star" id="star2" value="2">
										<label for="star2"></label> <input type="radio" name="star"
										id="star3" value="3"> <label for="star3"></label> <input
										type="radio" name="star" id="star4" value="4"> <label
										for="star4"></label> <input type="radio" name="star"
										id="star5" value="5"> <label for="star5"></label>
									</span>
									<div class="row">
										<div class="col-12">
											<div class="form-group">
												<label for="message">Nội Dung</label>
												<textarea name="message" id="message" name="message"
													cols="30" rows="10" class="form-control"></textarea>
											</div>
										</div>
										<div class="col-lg-6">
											<div class="form-group">
												<label for="name">Tên *</label> <input type="text"
													name="name" id="name" class="form-control">
											</div>
										</div>
										<div class="col-lg-6">
											<div class="form-group">
												<label for="email">Email *</label> <input type="text"
													name="email" id="email" class="form-control">
											</div>
										</div>

										<div class="col-lg-4">
											<div class="submit-btn">
												<button class="btn btn-black" style="">Post Comment</button>

											</div>
										</div>
									</div>

								</form>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			<!--=================================
    RELATED PRODUCTS BOOKS
===================================== -->
			<section class="">
				<div class="container">
					<div class="section-title section-title--bordered">
						<h2>Cùng thể loại</h2>
					</div>
					<div
						class="product-slider sb-slick-slider slider-border-single-row"
						data-slick-setting='{
                "autoplay": true,
                "autoplaySpeed": 8000,
                "slidesToShow": 4,
                "dots":true
            }'
						data-slick-responsive='[
                {"breakpoint":1200, "settings": {"slidesToShow": 4} },
                {"breakpoint":992, "settings": {"slidesToShow": 3} },
                {"breakpoint":768, "settings": {"slidesToShow": 2} },
                {"breakpoint":480, "settings": {"slidesToShow": 1} }
            ]'>

						<c:forEach var="spham" items="${listByCate }">
							<div class="single-slide">
								<div class="product-card">
									<div class="product-header">
										<a href="#" class="author"> ${spham.tacGia } </a>
										<h3>
											<a href="ProductDetailsControl?masach=${spham.maSach}">${spham.tenSach }</a>
										</h3>
									</div>
									<div class="product-card--body">
										<div class="card-image">
											<img src="${spham.image }" alt="">
											<div class="hover-contents">
												<a href="ProductDetailsControl?masach=${spham.maSach}"
													class="hover-image"> <img src="${spham.image }" alt="">
												</a>
												<div class="hover-btns">
													<a href="CardControl?masach=${spham.maSach}&txt=add&page=product-details.jsp" class="single-btn"> <i
														class="fas fa-shopping-basket"></i>
													</a> <a href="WishlistControl?masach=${spham.maSach}&txt=add&page=product-details.jsp" class="single-btn"> <i
														class="fas fa-heart"></i>
													</a> <a href="#" class="single-btn"> <i
														class="fas fa-random"></i>
													</a> <a href="ProductDetailsControl?masach=${spham.maSach}""  class="single-btn"> <i
														class="fas fa-eye"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="price-block">
											<span class="price-new">${(spham.gia)-((spham.gia)/(spham.giamGia)) }vnđ</span>
											<del class="price-old">${spham.gia}vnđ</del>
											<span class="price-discount">${spham.giamGia }%</span>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>






					</div>
				</div>
			</section>

		</main>
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


<!-- Mirrored from htmldemo.net/pustok/pustok/product-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:15 GMT -->
</html>