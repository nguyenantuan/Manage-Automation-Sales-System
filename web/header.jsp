<%-- 
    Document   : header
    Created on : Oct 22, 2022, 3:31:56 PM
    Author     : BaHung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<header class="header">

    <c:if test="${sessionScope.account == null}">
        <div class="header-top">
            <div class="container">
                <div class="header-right">
                    <ul class="top-menu">
                        <li>
                            <!--                        <a href="#">Links</a>-->
                            <ul>
                                <li><a href="tel:#"><i class="icon-phone"></i>Call: 0383376171</a></li>
                                <li><a href="home">Contact Us</a></li>
                                <li><a href="#signin-modal" data-toggle="modal"><i class="icon-user"></i>Login-Register</a></li>
                            </ul>
                        </li>
                    </ul><!-- End .top-menu -->
                </div><!-- End .header-right -->
            </div><!-- End .container -->
        </div> 
    </c:if>

    <c:if test="${sessionScope.account != null && sessionScope.roleAccount == 1}">
        <div class="header-top">
            <div class="container">
                <div class="header-right">
                    <ul class="top-menu">
                        <li>
                            <!--                        <a href="#">Links</a>-->
                            <ul>
                                <li><a href="tel:#"><i class="icon-phone"></i>Call: 0383376171</a></li>
                                <li><a href="home">Contact Us</a></li>
                                <li><a href="<c:url value="/listcustomer"/>" class="icon-user"></i>List Customer</a>
                                <li><a href="changepass.jsp" >Change Password</a></li>
                                <li><a href="logout">Logout</a></li>
                            </ul>
                        </li>
                    </ul><!-- End .top-menu -->
                </div><!-- End .header-right -->
            </div><!-- End .container -->
        </div> 
    </c:if>

    <c:if test="${sessionScope.account != null && sessionScope.roleAccount == 3}">
        <div class="header-top">
            <div class="container">
                <div class="header-right">
                    <ul class="top-menu">
                        <li>
                            <!--                        <a href="#">Links</a>-->
                            <ul>
                                <li><a href="tel:#"><i class="icon-phone"></i>Call: 0383376171</a></li>
                                <li><a href="home">Contact Us</a></li>

                                <li><a href="changepass.jsp" >Change Password</a></li>
                                <li><a href="logout">Logout</a></li>
                            </ul>
                        </li>
                    </ul><!-- End .top-menu -->
                </div><!-- End .header-right -->
            </div><!-- End .container -->
        </div> 
    </c:if>

    <div class="header-middle sticky-header">
        <div class="container">
            <div class="header-left">
                <button class="mobile-menu-toggler">
                    <span class="sr-only">Toggle mobile menu</span>
                    <i class="icon-bars"></i>
                </button>

                <a href="Home.jsp" class="logo">
                    <img src="assets/images/logoKIA.png" alt="KIA logo" width="105" height="25">
                </a>

                <nav class="main-nav">
                    <ul class="menu sf-arrows">
                        <li class="megamenu-container active">
                            <a href="listproduct" class="sf-with-ul">Car</a>

                            <div class="megamenu demo">
                                <div class="menu-col">
                                    <div class="menu-title">Choose your car</div><!-- End .menu-title -->

                                    <div class="demo-list">
                                        <div class="demo-item">
                                            <a href="index-1.html">
                                                <span class="demo-bg" style="background-image: url(assets/images/menu/demos/1.jpg);"></span>
                                                <span class="demo-title">New KIA Morning X-Line</span>
                                            </a>
                                        </div><!-- End .demo-item -->

                                        <div class="demo-item">
                                            <a href="index-2.html">
                                                <span class="demo-bg" style="background-image: url(assets/images/menu/demos/2.jpg);"></span>
                                                <span class="demo-title">KIA K3 1.6 Turbo GT</span>
                                            </a>
                                        </div><!-- End .demo-item -->

                                        <div class="demo-item">
                                            <a href="index-3.html">
                                                <span class="demo-bg" style="background-image: url(assets/images/menu/demos/3.jpg);"></span>
                                                <span class="demo-title">KIA K5 2.5 GT-Line</span>
                                            </a>
                                        </div><!-- End .demo-item -->

                                        <div class="demo-item">
                                            <a href="index-4.html">
                                                <span class="demo-bg" style="background-image: url(assets/images/menu/demos/4.jpg);"></span>
                                                <span class="demo-title">KIA Sportage 1.6T Signature AWD</span>
                                            </a>
                                        </div><!-- End .demo-item -->

                                        <div class="demo-item">
                                            <a href="index-5.html">
                                                <span class="demo-bg" style="background-image: url(assets/images/menu/demos/5.jpg);"></span>
                                                <span class="demo-title">KIA Carnival 3.5G Signature 7 slot</span>
                                            </a>
                                        </div><!-- End .demo-item -->



                                    </div><!-- End .demo-list -->

                                    <div class="megamenu-action text-center">
                                        <a href="listproduct" class="btn btn-outline-primary-2 view-all-demos"><span>View All Demos</span><i class="icon-long-arrow-right"></i></a>
                                    </div><!-- End .text-center -->
                                </div><!-- End .menu-col -->
                            </div><!-- End .megamenu -->
                        </li>                               

                        <li>
                            <a href="home" class="sf-with-ul">news</a>

                        </li>
                        <li>
                            <a href="home" class="sf-with-ul">installment</a>
                        </li>
                        <li>
                            <a href="home" class="sf-with-ul">Promotion</a>
                        </li>
                    </ul><!-- End .menu -->
                </nav><!-- End .main-nav -->
            </div><!-- End .header-left -->

            <div class="header-right">
                <div class="header-search">
                    <a href="#" class="search-toggle" role="button" title="Search"><i class="icon-search"></i></a>
                    <form action="search" method="get">
                        <div class="header-search-wrapper">
                            <label for="q" class="sr-only">Search</label>
                            <input type="search" class="form-control" name="nameCar" id="q" placeholder="Search in..." required>
                        </div><!-- End .header-search-wrapper -->
                    </form>
                </div><!-- End .header-search -->
                <c:if test="${sessionScope.roleAccount == 3}">
                    <div class="dropdown cart-dropdown">
                    <a href="/viewcart.jsp" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">
                        <i class="icon-shopping-cart"></i>
                        <span class="cart-count">${sessionScope.countCar}</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <div class="dropdown-cart-products">
                            <c:forEach items="${sessionScope.cart}" var="p">
                                <div class="product">
                                    <div class="product-cart-details">
                                        <h4 class="product-title">
                                            <a href="product.html">${p.productName}</a>
                                        </h4>

                                        <span class="cart-product-info">
                                            <span class="cart-product-qty">${p.quality}</span>
                                            x <fmt:formatNumber type = "number"  maxFractionDigits = "3" value = "${p.productPrice}" /> VND
                                        </span>
                                    </div><!-- End .product-cart-details -->

                                    <figure class="product-image-container">
                                        <a href="product.html" class="product-image">
                                            <img src="${p.image}" alt="product">
                                        </a>
                                    </figure>
                                    <a href="#" onclick="removeProductCart(${p.productId})" class="btn-remove" title="Remove Product"><i class="icon-close"></i></a>
                                </div><!-- End .product -->
                            </c:forEach>

                        </div><!-- End .cart-product -->

                        <div class="dropdown-cart-total">
                            <span>Total</span>
                            <span class="cart-total-price">
                                <fmt:formatNumber type = "number"  maxFractionDigits = "3" value = "${sessionScope.total}" /> VND
                            </span>
                        </div><!-- End .dropdown-cart-total -->

                        <div class="dropdown-cart-action">
                            <a href="viewcart" class="btn btn-primary">List</a>
                            <a href="checkout.html" class="btn btn-outline-primary-2"><span>Receive</span><i class="icon-long-arrow-right"></i></a>
                        </div><!-- End .dropdown-cart-total -->
                    </div><!-- End .dropdown-menu -->
                </div><!-- End .cart-dropdown -->
                </c:if>
                
            </div><!-- End .header-right -->
        </div><!-- End .container -->
    </div><!-- End .header-middle -->
</header><!-- End .header -->
