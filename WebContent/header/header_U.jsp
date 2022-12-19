<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="site-header header-3  d-none d-lg-block">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <ul class="header-top-list">
                            <li class="dropdown-trigger currency-dropdown"><a href="#">VNĐ </a><i
                                    class="fas fa-chevron-down dropdown-arrow"></i>
                                <ul class="dropdown-box">
                                    <li><a href="#">VNĐ</a></li>
                                    <li><a href="#">USD</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-trigger language-dropdown"><a href="#"><span class="flag-img"><img
                                            src="image/icon/eng-flag.png" alt=""></span>Vietnamese </a><i
                                    class="fas fa-chevron-down dropdown-arrow"></i>
                                <ul class="dropdown-box">
                                    <li> <a href="#"> <span class="flag-img"><img src="image/icon/germany-flag.png"
                                                    alt=""></span>Vietnamese</a></li>
                                    <li> <a href="#"> <span class="flag-img"><img src="image/icon/eng-flag.png"
                                                    alt=""></span>English</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-8 flex-lg-right">
                        <ul class="header-top-list">
                            <li class="dropdown-trigger language-dropdown"><a href="WishlistControl?txt=load"><i
                                        class="icons-left fas fa-heart"></i>
                                    Danh sách yêu thích ( <c:if test="${wishlist!=null }"> ${wishlist.size() }</c:if>
                                                 <c:if test="${wishlist==null }"> 0</c:if>)</a>
                            </li>
                            <li class="dropdown-trigger language-dropdown"><a href="Account?type=load"><i
                                        class="icons-left fas fa-user"></i>
                                    Tài khoản</a>
                                
                            </li>
                            <li><a href="contact.jsp"><i class="icons-left fas fa-phone"></i> Liên hệ</a>
                            </li>
                            <li><a href="checkout.jsp"><i class="icons-left fas fa-share"></i> Thanh toán</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="header-middle pt--10 pb--10">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3">
                            <a href="index.html" class="site-brand">
                                <img src="image/logo.png" alt="">
                            </a>
                        </div>
<!--                         <form action="SearchControl" method="post"> -->
                        <div class="col-lg-5">
                            <div class="header-search-block">
                                <form action="SearchControl" method="post">
                                <input value="${txtS }" name="search"  placeholder="Tìm sách ...">
                                <button type="submit">Tìm kiếm</button>
                                </form>
                            </div>
                        </div>
<!--                         </form> -->
                        <div class="col-lg-4">
                            <div class="main-navigation flex-lg-right">
                                <div class="cart-widget">
                                    <c:if test="${khachhang==null }">
                                    <div class="login-block">
                                        <a href="login-register.jsp" class="font-weight-bold">Đăng nhập</a> <br>
                                        <span>or</span><a href="login-register.jsp">Đăng ký</a>
                                    </div>
                                    </c:if>
                                    <c:if test="${khachhang!=null }">
                                    <div class="login-block">
                                        <a href="Account?type=logout" class="font-weight-bold">Đăng xuất</a> <br>
                                    </div>
                                    </c:if>
                                    <div class="cart-block">
                                        <div class="cart-total">
                                            <a href="CardControl?txt=load">
                                            <span class="text-number">
                                                <c:if test="${card!=null }"> ${card.size() }</c:if>
                                                 <c:if test="${card==null }"> 0</c:if>
                                                 <!-- XỬ LÝ SỰ KIÊN -->
                                            </span>
                                            <span class="text-item">
                                                Giỏ hàng
                                            </span>
                                            <span style=" font-size: 12px;" class="price">
                                            <c:if test="${card!=null }"> ${card.getPrice() }VNĐ</c:if>
                                                 <c:if test="${card==null }"> 0 VNĐ</c:if>
                                                   <!-- XỬ LÝ SỰ KIÊN -->
                                                <i class="fas fa-chevron-down"></i>
                                            </span>
                                            </a>
                                        </div>
                                       <div class="cart-dropdown-block">
                                       	<c:if test="${card!=null }">
                                       	<c:forEach var="sp" items="${card.getCard() }">
                                       	<div class=" single-cart-block ">
												<div class="cart-product">
													<a href="ProductDetailsControl?masach=${sp.getSp().maSach}" class="image">
														<img src="${sp.getSp().image }" alt="">
													</a>
													<div class="content">
														<h3 class="title"><a href="ProductDetailsControl?masach=${sp.getSp().maSach}">${sp.getSp().tenSach }</a></h3>
														<p class="price"><span class="qty">${sp.soluong } ×</span> ${sp.getSp().gia } vnđ</p>
														
													</div>
												</div>
											</div>
                                       	</c:forEach>
                                       	</c:if>
											
											<c:if test="${card!=null }">
											<div class=" single-cart-block ">
												<div class="btn-block">
													<a href="CardControl?txt=load" class="btn">View Cart <i
															class="fas fa-chevron-right"></i></a>
													<a href="checkout.jsp" class="btn btn--primary">Check Out <i
															class="fas fa-chevron-right"></i></a>
												</div>
											</div>
											</c:if>
											
										</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3">
                            <nav class="category-nav   ">
                                <div>
                                    <a href="javascript:void(0)" class="category-trigger"><i
                                            class="fa fa-bars"></i>Danh mục</a>
                                    <ul class="category-menu">
                                        <c:forEach var="cate" items="${spDAO.getAllCategory()}">
                                         <li class="cat-item "><a href="CategoryControl?loai=${cate.loaiSach}">${cate.loaiSach }</a>  
                                        </li>
                                        
                                        </c:forEach>

                                    </ul>
                                </div>
                            </nav>
                        </div>
                        <div class="col-lg-3">
                            <div class="header-phone ">
                                <div class="icon">
                                    <i class="fas fa-headphones-alt"></i>
                                </div>
                                <div class="text">
                                    <p>Hỗ trợ</p>
                                    <p class="font-weight-bold number">+01-202-555-0181</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="main-navigation flex-lg-right">
                                <ul class="main-menu menu-right li-last-0">
                                    <li class="menu-item">
                                        <a href="IndexControl">Trang chủ</a>
                                    </li>
                                    <!-- Shop -->
                                    <li class="menu-item">
                                        <a href="ShopListControl?page=1">Shop</a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="contact.jsp">Liên hệ</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>