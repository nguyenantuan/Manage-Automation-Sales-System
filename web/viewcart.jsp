<%-- 
    Document   : viewcart
    Created on : Oct 31, 2022, 10:36:32 PM
    Author     : BaHung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <!-- molla/index-2.html  22 Nov 2019 09:55:32 GMT -->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>KIA Phạm Văn Đồng Hà Nội</title>
        <meta name="keywords" content="HTML5 Template">
        <meta name="description" content="Molla - Bootstrap eCommerce Template">
        <meta name="author" content="p-themes">
        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="180x180" href="assets/images/icons/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="assets/images/icons/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="assets/images/icons/favicon-16x16.png">
        <link rel="manifest" href="assets/images/icons/site.html">
        <link rel="mask-icon" href="assets/images/icons/safari-pinned-tab.svg" color="#666666">
        <link rel="shortcut icon" href="assets/images/icons/favicon.ico">
        <meta name="apple-mobile-web-app-title" content="Molla">
        <meta name="application-name" content="Molla">
        <meta name="msapplication-TileColor" content="#cc9966">
        <meta name="msapplication-config" content="assets/images/icons/browserconfig.xml">
        <meta name="theme-color" content="#ffffff">
        <!-- Plugins CSS File -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/plugins/owl-carousel/owl.carousel.css">
        <link rel="stylesheet" href="assets/css/plugins/magnific-popup/magnific-popup.css">
        <!-- Main CSS File -->
        <link rel="stylesheet" href="assets/css/style.css">
        <script type="text/javascript" src="assets/js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="assets/js/app-ajax.js"></script>
        <script src="assets/js/cart.js" type="text/javascript"></script>

    </head>

    <body>
        <jsp:include page="header.jsp" />

        <main class="main">
            <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
                <div class="container">
                    <h1 class="page-title">List Favourite<span>List</span></h1>
                </div><!-- End .container -->
            </div><!-- End .page-header -->
            <nav aria-label="breadcrumb" class="breadcrumb-nav">
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item"><a href="ListProduct.jsp">Car</a></li>
                        <li class="breadcrumb-item active" aria-current="page">List Favourite</li>
                    </ol>
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->

            <div class="page-content">
                <div class="cart">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-9">
                                <table class="table table-cart table-mobile">
                                    <thead>
                                        <tr>
                                            <th>Car</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Total</th>
                                            <th></th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <c:forEach items="${sessionScope.cart}" var="p">
                                            <tr>
                                                <td class="product-col">
                                                    <div class="product">
                                                        <figure class="product-media">
                                                            <a href="#">
                                                                <img src="${p.image}" alt="Product image">
<!--                                                                <input type="date" hidden name="dateTime" id="dateTime"  />-->
                                                            </a>
                                                        </figure>

                                                        <h3 class="product-title">
                                                            <a href="#">${p.productName}</a>
                                                        </h3><!-- End .product-title -->
                                                    </div><!-- End .product -->
                                                </td>
                                                <td class="price-col"><fmt:formatNumber type = "number"  maxFractionDigits = "3" value = "${p.productPrice}" /> </td>
                                                <td class="quantity-col">
                                                    <div class="cart-product-quantity">
                                                        <input type="number" id="product${p.productId}" class="form-control" value="${p.quality}" min="1" max="10" step="1" onchange="updateCart(${p.productId})" data-decimals="0" required>
                                                    </div><!-- End .cart-product-quantity -->
                                                </td>
                                                <td class="total-col"><fmt:formatNumber type = "number"  maxFractionDigits = "3" value = "${p.productPrice*p.quality}" /> </td>
                                                <td class="remove-col"><button onclick="removeProductCart(${p.productId})" class="btn-remove"><i class="icon-close"></i></button></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table><!-- End .table table-wishlist -->
                            </div><!-- End .col-lg-9 -->
                            <aside class="col-lg-3">
                                
                                <div class="summary summary-cart">
                                    <h3 class="summary-title">List Total</h3><!-- End .summary-title -->

                                    <table class="table table-summary">
                                        <tbody>

                                            <tr class="summary-total">
                                                <td>Total:</td>
                                                <td><fmt:formatNumber type = "number"  maxFractionDigits = "3" value = "${sessionScope.total}" /></td>
                                            </tr><!-- End .summary-total -->
                                        </tbody>
                                    </table><!-- End .table table-summary -->

                                    <a href="contactInfo.jsp" class="btn btn-outline-primary-2 btn-order btn-block">RECEIVE INFORMATION</a>
                                </div><!-- End .summary -->
                                
                                <a href="listproduct" class="btn btn-outline-dark-2 btn-block mb-3"><span>CONTINUE ADD lIST</span><i class="icon-refresh"></i></a>
                            </aside><!-- End .col-lg-3 -->
                        </div><!-- End .row -->
                    </div><!-- End .container -->
                </div><!-- End .cart -->
            </div><!-- End .page-content -->
        </main><!-- End .main -->
        <jsp:include page="footer.jsp" />
    </div><!-- End .page-wrapper -->
    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>


    <!-- Sign in / Register Modal -->
    <jsp:include page="login-register.jsp" />


    <!-- Plugins JS File -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.hoverIntent.min.js"></script>
    <script src="assets/js/jquery.waypoints.min.js"></script>
    <script src="assets/js/superfish.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>
    <script src="assets/js/list-product.js" type="text/javascript"></script>
</body>
</html>
