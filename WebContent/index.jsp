<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">


<!-- Mirrored from htmldemo.net/pustok/pustok/index-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:00 GMT -->
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
		<!--=================================
        Hero Area
    ===================================== -->
		<section class="hero-area hero-slider-3">
			<div class="sb-slick-slider"
				data-slick-setting='{
                                                        "autoplay": true,
                                                        "autoplaySpeed": 8000,
                                                        "slidesToShow": 1,
                                                        "dots":true
                                                        }'>
				<div class="single-slide bg-image  bg-overlay--dark"
					data-bg="image/bg-images/home-3-slider-1.jpg">
					<div class="container">
						<div class="home-content text-center">
							<div class="row justify-content-end">
								<div class="col-lg-6">
									<h1>Thiết kế đẹp</h1>
									<h2>
										Cập nhật sách mới liên tục và <br>giá tốt
									</h2>
									<a href="ShopListControl?page=1" class="btn btn--yellow"> Shop Ngay
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="single-slide bg-image  bg-overlay--dark"
					data-bg="image/bg-images/home-3-slider-2.jpg">
					<div class="container">
						<div class="home-content pl--30">
							<div class="row">
								<div class="col-lg-6">
									<h1>Thiết kế đẹp</h1>
									<h2>
										Cập nhật sách mới liên tục <br>và giá tốt
									</h2>
									<a href="ShopListControl?page=1" class="btn btn--yellow"> Shop Ngay
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--=================================
        Home Category Gallery
    ===================================== -->
		<section class="pt--30 section-margin">
			<h2 class="sr-only">Category Gallery Section</h2>
			<div class="container">
				<div class="category-gallery-block">
					<a href="#" class="single-block hr-large"> <img
						src="image/others/cat-gal-large.png" alt="">
					</a>
					<div class="single-block inner-block-wrapper">
						<a href="#" class="single-image mid-image"> <img
							src="image/others/cat-gal-mid.png" alt="">
						</a> <a href="#" class="single-image small-image"> <img
							src="image/others/cat-gal-small.png" alt="">
						</a> <a href="#" class="single-image small-image"> <img
							src="image/others/cat-gal-small-2.jpg" alt="">
						</a> <a href="#" class="single-image mid-image"> <img
							src="image/others/cat-gal-mid-2.png" alt="">
						</a>
					</div>
				</div>
			</div>
		</section>
		<!--=================================
   Sach khoa hoc
===================================== -->
		<section class="section-margin">
			<div class="container">
				<div class="section-title section-title--bordered">
					<h2>Sách Khoa Học</h2>
				</div>
				<div class="product-slider sb-slick-slider slider-border-single-row"
					data-slick-setting='{
                        "autoplay": true,
                        "autoplaySpeed": 8000,
                        "slidesToShow": 5,
                        "dots":true
                    }'
					data-slick-responsive='[
                        {"breakpoint":1200, "settings": {"slidesToShow": 4} },
                        {"breakpoint":992, "settings": {"slidesToShow": 3} },
                        {"breakpoint":768, "settings": {"slidesToShow": 2} },
                        {"breakpoint":480, "settings": {"slidesToShow": 1} },
                        {"breakpoint":320, "settings": {"slidesToShow": 1} }
                    ]'>

					<c:forEach var="sp" items="${spDAO.getAllKH()}">
						<div class="single-slide">
							<div class="product-card">
								<div class="product-header">
									<a href="#" class="author"> ${sp.tacGia} </a>
									<h3>
										<a href="ProductDetailsControl?masach=${sp.maSach}">${sp.tenSach }</a>
									</h3>
								</div>
								<div class="product-card--body">
									<div class="card-image">
										<img src="${sp.image}" alt="">
										<div class="hover-contents">
											<a href="ProductDetailsControl?masach=${sp.maSach}" class="hover-image"> <img
												src="${sp.image}" alt="">
											</a>
											<div class="hover-btns">
												<a href="CardControl?masach=${sp.maSach}&txt=add&page=index.jsp" class="single-btn"> <i
													class="fas fa-shopping-basket"></i>
												</a> <a href="WishlistControl?masach=${sp.maSach}&txt=add&page=index.jsp" class="single-btn"> <i
													class="fas fa-heart"></i>
												</a> <a href="#" class="single-btn"> <i
													class="fas fa-random"></i>
												</a> <a href="ProductDetailsControl?masach=${sp.maSach}"  class="single-btn"> <i
													class="fas fa-eye"></i>
												</a>
											</div>
										</div>
									</div>
									<div class="price-block">
										<span class="price">${(sp.gia)-((sp.gia)/(sp.giamGia)) }vnđ</span>
										<del class="price-old">${sp.gia}vnđ</del>
										<span class="price-discount">${sp.giamGia}%</span>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
			</div>
		</section>
		<!--=================================
    Truyện
===================================== -->
		<section class="section-margin">
			<div class="container">
				<div class="section-title section-title--bordered">
					<h2>Truyện</h2>
				</div>
				<div class="product-slider sb-slick-slider slider-border-single-row"
					data-slick-setting='{
                        "autoplay": true,
                        "autoplaySpeed": 8000,
                        "slidesToShow": 5,
                        "dots":true
                    }'
					data-slick-responsive='[
                        {"breakpoint":1200, "settings": {"slidesToShow": 4} },
                        {"breakpoint":992, "settings": {"slidesToShow": 3} },
                        {"breakpoint":768, "settings": {"slidesToShow": 2} },
                        {"breakpoint":480, "settings": {"slidesToShow": 1} },
                        {"breakpoint":320, "settings": {"slidesToShow": 1} }
                    ]'>
					<c:forEach var="sp" items="${spDAO.getAllTruyen()}">
						<div class="single-slide">
							<div class="product-card">
								<div class="product-header">
									<a href="#" class="author"> ${sp.tacGia} </a>
									<h3>
										<a href="ProductDetailsControl?masach=${sp.maSach}">${sp.tenSach }</a>
									</h3>
								</div>
								<div class="product-card--body">
									<div class="card-image">
										<img src="${sp.image}" alt="">
										<div class="hover-contents">
											<a href="product-details.html" class="hover-image"> <img
												src="${sp.image}" alt="">
											</a>
											<div class="hover-btns">
												<a href="CardControl?masach=${sp.maSach}&txt=add&page=index.jsp" class="single-btn"> <i
													class="fas fa-shopping-basket"></i>
												</a> <a href="wishlist.html" class="single-btn"> <i
													class="fas fa-heart"></i>
												</a> <a href="#" class="single-btn"> <i
													class="fas fa-random"></i>
												</a> <a href="ProductDetailsControl?masach=${sp.maSach}"  class="single-btn"> <i
													class="fas fa-eye"></i>
												</a>
											</div>
										</div>
									</div>
									<div class="price-block">
										<span class="price">${(sp.gia)-((sp.gia)/(sp.giamGia)) }vnđ</span>
										<del class="price-old">${sp.gia}vnđ</del>
										<span class="price-discount">${sp.giamGia}%</span>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
		<!--=================================
    Sach tiểu thuyết
===================================== -->
		<section class="section-margin">
			<div class="container">
				<div class="section-title section-title--bordered">
					<h2>Tiểu Thuyết</h2>
				</div>
				<div class="product-slider sb-slick-slider slider-border-single-row"
					data-slick-setting='{
                        "autoplay": true,
                        "autoplaySpeed": 8000,
                        "slidesToShow": 5,
                        "dots":true
                    }'
					data-slick-responsive='[
                        {"breakpoint":1200, "settings": {"slidesToShow": 4} },
                        {"breakpoint":992, "settings": {"slidesToShow": 3} },
                        {"breakpoint":768, "settings": {"slidesToShow": 2} },
                        {"breakpoint":480, "settings": {"slidesToShow": 1} },
                        {"breakpoint":320, "settings": {"slidesToShow": 1} }
                    ]'>
					<c:forEach var="sp" items="${spDAO.getAllTieuThuyet()}">
						<div class="single-slide">
							<div class="product-card">
								<div class="product-header">
									<a href="#" class="author"> ${sp.tacGia} </a>
									<h3>
										<a href="ProductDetailsControl?masach=${sp.maSach}">${sp.tenSach }</a>
									</h3>
								</div>
								<div class="product-card--body">
									<div class="card-image">
										<img src="${sp.image}" alt="">
										<div class="hover-contents">
											<a href="product-details.html" class="hover-image"> <img
												src="${sp.image}" alt="">
											</a>
											<div class="hover-btns">
												<a href="CardControl?masach=${sp.maSach}&txt=add&page=index.jsp" class="single-btn"> <i
													class="fas fa-shopping-basket"></i>
												</a> <a href="wishlist.html" class="single-btn"> <i
													class="fas fa-heart"></i>
												</a> <a href="#" class="single-btn"> <i
													class="fas fa-random"></i>
												</a> <a href="ProductDetailsControl?masach=${sp.maSach}"  class="single-btn"> <i
													class="fas fa-eye"></i>
												</a>
											</div>
										</div>
									</div>
									<div class="price-block">
										<span class="price">${(sp.gia)-((sp.gia)/(sp.giamGia)) }vnđ</span>
										<del class="price-old">${sp.gia}vnđ</del>
										<span class="price-discount">${sp.giamGia}%</span>									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
		<!--=================================
        Home Features Section
    ===================================== -->
		<section class="mb--30 space-dt--30">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-md-6 mt--30">
						<div class="feature-box h-100">
							<div class="icon">
								<i class="fas fa-shipping-fast"></i>
							</div>
							<div class="text">
								<h5>Miễn phí ship</h5>
								<p>khi mua đơn hàng trị giá 500 vnđ</p>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-6 mt--30">
						<div class="feature-box h-100">
							<div class="icon">
								<i class="fas fa-redo-alt"></i>
							</div>
							<div class="text">
								<h5>Chính sách hoàn tiền</h5>
								<p>100% khi sản phẩm lỗi</p>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-6 mt--30">
						<div class="feature-box h-100">
							<div class="icon">
								<i class="fas fa-piggy-bank"></i>
							</div>
							<div class="text">
								<h5>Thanh toán</h5>
								<p>Thanh toán khi nhận hàng</p>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-6 mt--30">
						<div class="feature-box h-100">
							<div class="icon">
								<i class="fas fa-life-ring"></i>
							</div>
							<div class="text">
								<h5>Hỗ trợ</h5>
								<p>Hotline : + 0123.4567.89</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--=================================
        Promotion Section One
    ===================================== -->
		

		<!--=================================
        CLIENT TESTIMONIALS
    ===================================== -->
		<section class="section-margin">
			<div class="container">
				<div class="section-title section-title--bordered mb-lg--60">
					<h2>Nhân sự quản lí</h2>
				</div>
				<div class="sb-slick-slider testimonial-slider"
					data-slick-setting='{
                "autoplay": true,
                "autoplaySpeed": 8000,
                "slidesToShow":3,
                "dots":true
            }'
					data-slick-responsive='[
                {"breakpoint":1200, "settings": {"slidesToShow": 2} },
                {"breakpoint":992, "settings": {"slidesToShow": 1} },
                {"breakpoint":768, "settings": {"slidesToShow": 1} },
                {"breakpoint":490, "settings": {"slidesToShow": 1} }
            ]'>
					<div class="single-slide">
						<div class="testimonial-card">
							<div class="testimonial-image">
								<img src="image/others/client-1.png" alt="">
							</div>
							<div class="testimonial-body">
								<article>
									<h2 class="sr-only">Testimonial Article</h2>
									<p>version This is Photoshops of Lorem Ipsum. Proin gravida
										nibh vel velit.Lorem ipsum dolor sit amet, consectetur
										adipiscing elit. In molestie augue magna. Pell..</p>
									<span class="d-block client-name">Trần Nhựt Hào</span>
								</article>
							</div>
						</div>
					</div>
					<div class="single-slide">
						<div class="testimonial-card">
							<div class="testimonial-image">
								<img src="image/others/client-2.png" alt="">
							</div>
							<div class="testimonial-body">
								<article>
									<h2 class="sr-only">Testimonial Article</h2>
									<p>In molestie augue magna.This is Photoshops version of
										Lorem Ipsum. Proin gravida nibh vel velit.Lorem ipsum dolor
										sit amet, consectetur adipiscing elit. Pell..</p>
									<span class="d-block client-name">Trần Trung Đông</span>
								</article>
							</div>
						</div>
					</div>
					<div class="single-slide">
						<div class="testimonial-card">
							<div class="testimonial-image">
								<img src="image/others/client-3.png" alt="">
							</div>
							<div class="testimonial-body">
								<article>
									<h2 class="sr-only">Testimonial Article</h2>
									<p>Lorem Ipsum This is Photoshops version of . Proin
										gravida nibh vel velit.Lorem ipsum dolor sit amet, consectetur
										adipiscing elit. In molestie augue magna. Pell..</p>
									<span class="d-block client-name">Rebecka Filson</span>
								</article>
							</div>
						</div>
					</div>
					<div class="single-slide">
						<div class="testimonial-card">
							<div class="testimonial-image">
								<img src="image/others/client-4.png" alt="">
							</div>
							<div class="testimonial-body">
								<article>
									<h2 class="sr-only">Testimonial Article</h2>
									<p>elit. In molestie This is Photoshops version of Lorem
										Ipsum. Proin gravida nibh vel velit.Lorem ipsum dolor sit
										amet, consectetur adipiscing augue magna. Pell..</p>
									<span class="d-block client-name">Rebecka Filson</span>
								</article>
							</div>
						</div>
					</div>
					<div class="single-slide">
						<div class="testimonial-card">
							<div class="testimonial-image">
								<img src="image/others/client-5.png" alt="">
							</div>
							<div class="testimonial-body">
								<article>
									<h2 class="sr-only">Testimonial Article</h2>
									<p>Pell Photoshops version of Lorem Ipsum. Proin gravida
										nibh vel velit.Lorem ipsum dolor sit amet, consectetur
										adipiscing elit. In molestie augue magna. This is..</p>
									<span class="d-block client-name">Rebecka Filson</span>
								</article>
							</div>
						</div>
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


<!-- Mirrored from htmldemo.net/pustok/pustok/index-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Nov 2022 14:20:08 GMT -->
</html>