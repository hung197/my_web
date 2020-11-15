<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">


    <!-- Mirrored from demo.hasthemes.com/jobaria-preview-v2/jobaria/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Aug 2020 11:38:09 GMT -->
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Cart || Jobaria - Digital Products Store eCommerce Bootstrap 4 Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/WebApplication1/css/plugins.min.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/WebApplication1/css/main.css" />
        <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/WebApplication1/image/favicon.ico">
    </head>

    <body>
        <!-- Begin JB's Body Wrapper Area -->
        <div class="wrapper">
            <!-- Begin Loading Area -->
            <div class="loading">
                <div class="text-center middle">
                    <div class="lds-ellipsis">
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                </div>
            </div>
            <!-- Loading Area End Here -->

            <!-- Begin JB's Header Area -->
            <jsp:include page="header1.jsp"/>
            <!-- JB's Header Area End Here -->

            <!-- Begin JB's Breadcrumb Area -->
            <div class="breadcrumb-area">
                <div class="container">
                    <div class="breadcrumb-content">
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li class="active">cart</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- JB's Breadcrumb Area End Here -->

            <!-- Begin JB's Cart Area -->
            <div class="jb-cart-area">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <form action="updateQuantity.htm" method="POST">
                                <div class="table-content table-responsive">                                    
                                    <table class="table">
                                        <thead>
                                            <tr>

                                                <th class="plantmore-product-thumbnail">Images</th>
                                                <th class="cart-product-name">Product</th>
                                                <th class="plantmore-product-price">Price</th>
                                                <th class="plantmore-product-quantity">Quantity</th>
                                                <th class="plantmore-product-subtotal">Total</th>
                                                <th class="plantmore-product-remove">Remove</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listCart}" var="cart">
                                               
                                                <tr>
                                                 

                                                    <td class="plantmore-product-thumbnail"><a href="#"><img src="/WebApplication1/jsp/image/${cart.productDetail.imagesLink}" height="150px" width="150px"></a></td>
                                                    <td class="plantmore-product-name"><a href="#">${cart.productDetail.product.productName}</a></td>
                                                    <td class="plantmore-product-price"><span class="amount">${cart.productDetail.price-(cart.productDetail.price*cart.productDetail.discount/100)}</span></td>

                                                    <td class="plantmore-product-quantity">
                                                <input value="${cart.quantity}" type="number" name="quantity"/>
                                            </td>
                                                    <td class="product-subtotal"><span class="amount">${cart.quantity*cart.productDetail.price-(cart.productDetail.price*cart.productDetail.discount/100)}</span></td>
                                                    <td class="plantmore-product-remove"><a href="deleteCart.htm?productDetailId=${cart.productDetail.productDetailId}"><i class="fa fa-times"></i></a></td>


                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>

                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="coupon-all">
                                            
                                            <div class="coupon2">
                                                <input class="submit" name="update_cart" value="Update cart" type="submit">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5 ml-auto">
                                        <div class="cart-page-total">
                                            <h2>Cart totals</h2>
                                            <ul>

                                                <li>Total <span>${tongTien}</span></li>
                                            </ul>
                                            <a href="${contexPath}/WebApplication1/LoginRegisterController/initOrderProduct.htm">Proceed to checkout</a>
                                        </div>
                                    </div>
                                </div>
                                            <a  class="btn btn-success" href="${contexPath}/WebApplication1/indexController/getAll.htm">Continue Shopping...</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- JB's Cart Area End Here -->

            <!-- Begin JB's Footer Area -->
            <jsp:include page="footer1.jsp"/>
                <!-- JB's Footer Bottom Area End Here -->
            </div>
            <!-- JB's Footer Area End Here -->

        </div>
        <!-- JB's Body Wrapper Area End Here -->
        <script src="${contextPath}/WebApplication1/js/plugins.min.js"></script>
        <script src="${contextPath}/WebApplication1/js/ajax-mail.js"></script>
        <script src="${contextPath}/WebApplication1/js/main.js"></script>
    </body>


    <!-- Mirrored from demo.hasthemes.com/jobaria-preview-v2/jobaria/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Aug 2020 11:38:09 GMT -->
</html>