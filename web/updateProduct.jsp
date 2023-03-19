<%-- 
    Document   : addProduct
    Created on : Oct 24, 2022, 11:08:47 PM
    Author     : BaHung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <<link rel="stylesheet" href="assets/css/addProduct.css"/>
        <script src="assets/js/cart.js" type="text/javascript"></script>

        <script type="text/javascript">
        </script>  
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container">
            <h1>Update Product</h1>
            <c:forEach items="${requestScope.Product}" var="p">
                <form action="update" class="formAdd" method="post">
                    <div class="itemAdd" >
                        <label>Car ID</label>
                        <input class="inputItemAdd" type="text" name="productId" value="${requestScope.Product.productId}" readonly="true"/><br/>
                    </div>
                    <div class="itemAdd">
                        <label>Enter  Car Name:</label>
                        <input class="inputItemAdd" type="text" name="productName" value="${requestScope.Product.productName}" /><br/>
                    </div>
                    <div class="itemAdd">
                        <label>Enter Color</label>
                        <input class="inputItemAdd" type="text" name="productColor" value="${requestScope.Product.productColor}"/><br/>
                    </div>
                    <div class="itemAdd">
                        <label> Enter Description:</label>
                        <input class="inputItemAdd" type="text" name="productDescription" value="${requestScope.Product.productDescription}"/><br/>
                    </div>
                    <div class="itemAdd">
                        <label>Enter Price:</label>
                        <input class="inputItemAdd" type="number" name="productPrice" value="${requestScope.Product.productPrice}"/><br/>
                    </div>
                    <div class="itemAdd">
                        <label> Enter CategoryId:</label>
                        <select name="categoryId" class="inputItemAdd">
                            <option value="1"> Hatchback</option>
                            <option value="2"> Sedan</option>
                            <option value="3"> CUV-Crossover Utility Vehicle</option>
                            <option value="4"> SUV-Sport Utility Vehicle</option>
                            <option value="5"> Limousine</option>
                        </select><br/>
                    </div>
                    <div class="itemAdd">
                        <label>Enter Image Link:</label>
                        <input class="inputItemAdd" type="text" name="image" value="${requestScope.Product.image}"/><br/>
                    </div>
                    <input type="submit" value="Save" style="grid-column-end: span 2; margin: 1rem 40rem"/>
                </form> 
            </c:forEach>
        </div>

        <jsp:include page="footer.jsp" />
    </body>
</html>
