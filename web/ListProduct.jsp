<%-- 
    Document   : ListProduct
    Created on : Oct 20, 2022, 11:09:11 PM
    Author     : BaHung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">


    <!-- molla/index-2.html  22 Nov 2019 09:55:32 GMT -->
    <head>
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
        <div class="page-wrapper">

            <jsp:include page="header.jsp" />

            <main class="main">
                <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg01.jpg')">
                    <div class="container">
                        <h1 class="page-title">Car<span>List</span></h1>
                    </div><!-- End .container -->
                </div><!-- End .page-header -->
                <nav aria-label="breadcrumb" class="breadcrumb-nav mb-2">
                    <div class="container">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Car</li>
                        </ol>
                    </div><!-- End .container -->
                </nav><!-- End .breadcrumb-nav -->

                <div class="page-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-9">
                                <div class="toolbox">
                                    <div class="toolbox-left">
                                        <div class="toolbox-info">
                                            <span>Total: ${requestScope.countP} Car</span>
                                        </div><!-- End .toolbox-info -->
                                    </div><!-- End .toolbox-left -->

                                    <c:if test="${sessionScope.roleAccount==1}">
                                        <a href="addProduct.jsp" class="btn-product-icon btn-compare btn-expandable" title="Add Info"><span>Add Car</span></a>
                                    </c:if>
                                    <div class="toolbox-right">
                                        <div class="toolbox-sort">
                                            <label for="sortby">Sort by:</label>
                                            <div class="select-custom">
                                                <form name="sortBy" action="search" method="get">
                                                    <select name="sortby" id="sortby" onchange="javascript:document.sortBy.submit()" class="form-control">
                                                        <option value="500000000" selected="selected">0-500M</option>
                                                        <option value="1000000000" >500M-1B</option>
                                                        <option value="1500000000" >1B-1,5B</option>
                                                        <option value="2000000000" >1,5B-2B</option>
                                                    </select>
                                                </form>
                                            </div>
                                        </div> 
                                    </div> 
                                </div><!-- End .toolbox -->

                                <div class="products mb-3">
                                    <div class="row justify-content-center">
                                        <c:forEach items="${requestScope.listProduct}" var="p">
                                            <div class="col-6 col-md-4 col-lg-4">
                                                <div class="product product-7 text-center">
                                                    <figure class="product-media">
                                                        <span class="product-label label-new">New</span>
                                                        <a href="Detail?cid=${p.productId}">
                                                            <img src=${p.image} alt="Product image" class="product-image">
                                                        </a>
                                                        <c:if test="${sessionScope.roleAccount != null}">
                                                            <c:if test="${sessionScope.roleAccount!=3}">
                                                                <div class="product-action-vertical">
                                                                    <a href="deleteProduct?productId=${p.productId}"onclick="return confirm('bạn có muốn xóa sản phẩm không?');" class="btn-product-icon btn-expandable"><span>Delete</span></a>
                                                                    <a href="update?productId=${p.productId}" class="btn-product-icon btn-compare btn-expandable" title="Add Info"><span>Update</span></a>

                                                                </div><!-- End .product-action-vertical -->
                                                            </c:if>
                                                        </c:if>
                                                            <c:if test="${sessionScope.roleAccount==3}">
                                                                <div class="product-action">
                                                            <a href="#" onclick="addToCart(${p.productId});" class="btn-product btn-cart"><span>add to List</span></a>
                                                        </div><!-- End .product-action -->
                                                            </c:if>
                                                        
                                                    </figure><!-- End .product-media -->

                                                    <div class="product-body">
                                                        <div class="product-cat">
                                                            <a href="#">${p.productColor}</a>
                                                        </div><!-- End .product-cat -->
                                                        <h3 class="product-title"><a href="product.html">${p.productName}</a></h3><!-- End .product-title -->
                                                        <div class="ratings">
                                                            <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                                        </div><!-- End .ratings -->
                                                        <div class="product-price">
                                                            <fmt:formatNumber type = "number"  maxFractionDigits = "3" value = "${p.productPrice}" /> VND

                                                        </div><!-- End .product-price -->

                                                    </div><!-- End .product-body -->
                                                </div><!-- End .product -->
                                            </div><!-- End .col-sm-6 col-lg-4 -->
                                        </c:forEach>

                                    </div><!-- End .row -->
                                </div><!-- End .products -->
                            </div><!-- End .col-lg-9 -->
                            <aside class="col-lg-3 order-lg-first">
                                <div class="sidebar sidebar-shop">
                                    <div class="widget widget-clean">
                                        <label>Filters:</label>
                                        <a href="#" class="sidebar-filter-clear">Clean All</a>
                                    </div><!-- End .widget widget-clean -->



                                    <div class="widget widget-collapsible">
                                        <h3 class="widget-title">
                                            <a data-toggle="collapse" href="#widget-2" role="button" aria-expanded="true" aria-controls="widget-2">
                                                Size
                                            </a>
                                        </h3><!-- End .widget-title -->

                                        <div class="collapse show" id="widget-2">
                                            <div class="widget-body">
                                                <div class="filter-items">
                                                    <div class="filter-item">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="size-1">
                                                            <label class="custom-control-label" for="size-1">Hatchback</label>
                                                        </div><!-- End .custom-checkbox -->
                                                    </div><!-- End .filter-item -->

                                                    <div class="filter-item">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="size-2">
                                                            <label class="custom-control-label" for="size-2">Sedan</label>
                                                        </div><!-- End .custom-checkbox -->
                                                    </div><!-- End .filter-item -->

                                                    <div class="filter-item">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" checked id="size-3">
                                                            <label class="custom-control-label" for="size-3">CUV-Crossover Utility Vehicle</label>
                                                        </div><!-- End .custom-checkbox -->
                                                    </div><!-- End .filter-item -->

                                                    <div class="filter-item">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" checked id="size-4">
                                                            <label class="custom-control-label" for="size-4">SUV-Sport Utility Vehicle</label>
                                                        </div><!-- End .custom-checkbox -->
                                                    </div><!-- End .filter-item -->

                                                    <div class="filter-item">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="size-5">
                                                            <label class="custom-control-label" for="size-5">Limousine</label>
                                                        </div><!-- End .custom-checkbox -->
                                                    </div><!-- End .filter-item -->
                                                </div><!-- End .filter-items -->
                                            </div><!-- End .widget-body -->
                                        </div><!-- End .collapse -->
                                    </div><!-- End .widget -->

<!--                                    <div class="widget widget-collapsible">
                                        <h3 class="widget-title">
                                            <a data-toggle="collapse" href="#widget-3" role="button" aria-expanded="true" aria-controls="widget-3">
                                                Color
                                            </a>
                                        </h3> End .widget-title 

                                        <div class="collapse show" id="widget-3">
                                            <div class="widget-body">
                                                <div class="filter-colors">
                                                    <a href="#" style="background: #b87145;"><span class="sr-only">Color Name</span></a>
                                                    <a href="#" style="background: #f0c04a;"><span class="sr-only">Color Name</span></a>
                                                    <a href="#" style="background: #333333;"><span class="sr-only">Color Name</span></a>
                                                    <a href="#" class="selected" style="background: #cc3333;"><span class="sr-only">Color Name</span></a>
                                                    <a href="#" style="background: #3399cc;"><span class="sr-only">Color Name</span></a>
                                                    <a href="#" style="background: #669933;"><span class="sr-only">Color Name</span></a>
                                                    <a href="#" style="background: #f2719c;"><span class="sr-only">Color Name</span></a>
                                                    <a href="#" style="background: #ebebeb;"><span class="sr-only">Color Name</span></a>
                                                </div> End .filter-colors 
                                            </div> End .widget-body 
                                        </div> End .collapse 
                                    </div> End .widget -->



<!--                                    <div class="widget widget-collapsible">
                                        <h3 class="widget-title">
                                            <a data-toggle="collapse" href="#widget-5" role="button" aria-expanded="true" aria-controls="widget-5">
                                                Price
                                            </a>
                                        </h3> End .widget-title 

                                        <div class="collapse show" id="widget-5">
                                            <div class="widget-body">
                                                <div class="filter-price">
                                                    <div class="filter-price-text">
                                                        Price Range:
                                                        <span id="filter-price-range"></span>
                                                    </div> End .filter-price-text 

                                                    <div id="price-slider"></div> End #price-slider 
                                                </div> End .filter-price 
                                            </div> End .widget-body 
                                        </div> End .collapse 
                                    </div> End .widget -->
                                </div><!-- End .sidebar sidebar-shop -->
                            </aside><!-- End .col-lg-3 -->
                        </div><!-- End .row -->
                    </div><!-- End .container -->
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


    <!-- molla/index-2.html  22 Nov 2019 09:55:42 GMT -->
</html>
