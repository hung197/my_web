<%-- 
    Document   : index
    Created on : Aug 31, 2020, 2:39:10 PM
    Author     : Windows 10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">


    <!-- Mirrored from demo.hasthemes.com/jobaria-preview-v2/jobaria/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Aug 2020 11:36:37 GMT -->
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Home One || Jobaria - Digital Products Store eCommerce Bootstrap 4 Template</title>
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

            <!-- Begin JB's Slider Area -->
            <div class="jb-slider_area">
                <div class="main-slider">
                    <!-- Begin Single Slide Area -->
                    <div class="single-slide animation-style-01 bg-1">
                        <div class="container">
                            <div class="slider-content">
                                <span>Premium eCommerce Html Template</span>
                                <h2>Hurry Up!</h2>
                                <h3>2020 Xail Gear VR</h3>
                                <h5>Starting At $19.00</h5>
                                <div class="jb-btn-ps_center slide-btn">
                                    <a class="jb-btn" href="shop-left-sidebar.html">Shop Now</a>
                                </div>
                            </div>
                            <div class="slider-progress"></div>
                        </div>
                    </div>
                    <!-- Single Slide Area End Here -->
                    <!-- Begin Single Slide Area -->
                    <div class="single-slide animation-style-02 bg-2">
                        <div class="container">
                            <div class="slider-content">
                                <span>Premium eCommerce Html Template</span>
                                <h2>Xail D40</h2>
                                <h3>20% Off Digital Camera</h3>
                                <h5>Starting At $19.00</h5>
                                <div class="jb-btn-ps_center slide-btn">
                                    <a class="jb-btn" href="shop-left-sidebar.html">Shop Now</a>
                                </div>
                            </div>
                            <div class="slider-progress"></div>
                        </div>
                    </div>
                    <!-- Single Slide Area End Here -->
                </div>
            </div>
            <!-- JB's Slider Area End Here -->

            <!-- Begin JB's Banner Four Columns Area -->

            <!-- JB's Banner Four Columns Area End Here -->

            <!-- Begin JB's Shipping Area -->
            <div class="jb-shipping_area">
                <div class="container">
                    <div class="row">
                        <!-- Begin Shipping Information Area -->
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="shipping-info">
                                <div class="shipping-icon">
                                    <i class="fa fa-truck"></i>
                                </div>
                                <div class="shipping-text">
                                    <h5>Free Shipping</h5>
                                    <span>Free shipping on all UK orders</span>
                                </div>
                            </div>
                        </div>
                        <!-- Shipping Information Area End Here -->
                        <!-- Begin Shipping Information Area -->
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="shipping-info">
                                <div class="shipping-icon">
                                    <i class="fa fa-credit-card"></i>
                                </div>
                                <div class="shipping-text">
                                    <h5>Payment On Delivery</h5>
                                    <span>Cash On Delivery Option</span>
                                </div>
                            </div>
                        </div>
                        <!-- Shipping Information Area End Here -->
                        <!-- Begin Shipping Information Area -->
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="shipping-info">
                                <div class="shipping-icon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <div class="shipping-text">
                                    <h5>Free Guarantee</h5>
                                    <span>30 Days Money Back</span>
                                </div>
                            </div>
                        </div>
                        <!-- Shipping Information Area End Here -->
                        <!-- Begin Shipping Information Area -->
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="shipping-info">
                                <div class="shipping-icon">
                                    <i class="fas fa-star-of-life"></i>
                                </div>
                                <div class="shipping-text">
                                    <h5>24/7 Online Suport</h5>
                                    <span>We Have Support 24/7</span>
                                </div>
                            </div>
                        </div>
                        <!-- Shipping Information Area End Here -->
                    </div>
                </div>
            </div>
            <!-- JB's Shipping Area End Here -->

            <!-- Begin JB's Product Tab Area -->
            <div class="jb-product-tab_area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="product-tab">
                                <ul class="nav product-menu">
                                    <li><a class="active" data-toggle="tab" href="#new-arrival"><span>Tất Cả Sản Phẩm</span></a></li>
                                    <li><a data-toggle="tab" href="#bestseller"><span>Sản Phẩm Khuyến Mãi</span></a></li>
                                    
                                </ul>
                            </div>
                            <div class="tab-content jb-tab_content">
                                <div id="new-arrival" class="tab-pane active show" role="tabpanel">
                                    <div class="jb-product-tab_slider">
                                        <!-- Begin JB's Slide Item Area -->
                                        
                                        <c:forEach items="${listProDe}" var="prod">
                                            <div class="jb-slide-item">
                                                <div class="jb-single_product">
                                                    
                                                    <div class="product-img">
                                                        <a href="DetailProduct.htm?productDetailId=${prod.productDetailId}">
                                                            <img src="/WebApplication1/jsp/image/${prod.imagesLink}" alt="JB's Product Image">
                                                        </a>
                                                        <span class="sticker">New</span>

                                                     
                                                    </div>
                                                    <div class="jb-product_content">
                                                        <div class="product-desc_info">

                                                            <h5><a class="product-name" href="single-product.html">${prod.product.productName}</a></h5>
                                                            <h6 class="product-desc_info">${prod.viewPro}</h6>
                                                            <div class="rating-box">
                                                                <ul>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                            <div class="price-box">
                                                                <span class="new-price">${prod.price}</span>
                                                            </div>
                                                        </div>
                                                        <div class="add-actions">
                                                            <ul>
                                                                <li><a class="jb-wishlist_link" href="wishlist.html"><i class="fa fa-heart"></i></a></li>
                                                                <li><a class="jb-add_cart" href="<%=request.getContextPath()%>/cartController/addCart.htm?productDetailId=${prod.productDetailId}"><i class="icon_cart_alt"></i>Add to cart</a></li>
                                                                <li><a class="jb-sp_link" href="single-product.html"><i class="fa fa-copy"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>                                          
                                                </div>
                                            </div>
                                        </c:forEach>                                                                                                                                                                                      
                                        <!-- JB's Slide Item Area End Here -->
                                        <!-- Begin JB's Slide Item Area -->
                                     
                                        <!-- JB's Slide Item Area End Here -->
                                    </div>
                                </div>
                                <div id="bestseller" class="tab-pane" role="tabpanel">
                                    <div class="jb-product-tab_slider">
                                        <!-- Begin JB's Slide Item Area -->
                                        
                                        
                                        
                                         <c:forEach items="${listProDeBestSell}" var="prodsell">
                                            <div class="jb-slide-item">
                                                <div class="jb-single_product">
                                                    
                                                    <div class="product-img">
                                                        <a href="single-product.html">
                                                            <img src="/WebApplication1/jsp/image/${prodsell.imagesLink}" alt="JB's Product Image">
                                                        </a>
                                                        <span class="sticker">New</span>

                                                        <div><a href="#" title="Quick View" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-search"></i></a></div>
                                                    </div>
                                                    <div class="jb-product_content">
                                                        <div class="product-desc_info">

                                                            <h5><a class="product-name" href="single-product.html">${prodsell.product.productName}</a></h5>
                                                            <h6 class="product-desc_info">${prodsell.viewPro}</h6>
                                                            <div class="rating-box">
                                                                <ul>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                            <div class="price-box">
                                                                <span class="new-price">${prodsell.price}</span>
                                                            </div>
                                                        </div>
                                                        <div class="add-actions">
                                                            <ul>
                                                                <li><a class="jb-wishlist_link" href="wishlist.html"><i class="fa fa-heart"></i></a></li>
                                                                <li><a class="jb-add_cart" href="<%=request.getContextPath()%>/cartController/addCart.htm?productDetailId=${prodsell.productDetailId}"><i class="icon_cart_alt"></i>Add to cart</a></li>
                                                                <li><a class="jb-sp_link" href="single-product.html"><i class="fa fa-copy"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>                                          
                                                </div>
                                            </div>
                                        </c:forEach>               
                                                
                                                
                                                
                                            </div>
                                        </div>
                                   
                                        <!-- JB's Slide Item Area End Here -->
                                        <!-- Begin JB's Slide Item Area -->
                                     
                                    </div>
                                </div>
                                <div id="featured-products" class="tab-pane" role="tabpanel">
                                    <div class="jb-product-tab_slider">
                                        <!-- Begin JB's Slide Item Area -->
                                        <div class="jb-slide-item">
                                            <div class="jb-single_product">
                                                <div class="product-img">
                                                    <a href="single-product.html">
                                                        <img src="image/product/medium-size/1-5.jpg" alt="JB's Product Image">
                                                    </a>
                                                    <span class="sticker">New</span>
                                                    <div><a href="#" title="Quick View" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-search"></i></a></div>
                                                </div>
                                              
                                            </div>
                                        </div>
                                        
                                        
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- JB's Product Tab Area End Here -->

            <!-- Begin JB's Special Product Area -->
            <div class="jb-special-product_area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="jb-section_area">
                                <h2 class="section_title">
                                    <span>Jobaria’s Ưu đãi hằng ngày..</span>
                                </h2>
                                <p class="short_desc">Giảm giá trên tất cả các dòng điện thoại tại cửa hàng..</p>
                            </div>
                        </div>
                        <!-- Begin JB's Special Product Slider Area -->
                        <div class="col-lg-12">
                            <div class="jb-special-product_slider">
                                <!-- Begin JB's Slide Item Area -->
                                
                                
                                 <c:forEach items="${listProDeBestSell}" var="prodsell">
                                
                                <div class="jb-slide-item">
                                    <div class="jb-single_product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img src="/WebApplication1/jsp/image/${prodsell.imagesLink}" alt="JB's Product Image">
                                            </a>
                                            <span class="sticker">New</span>
                                        </div>
                                        <div class="jb-product_content">
                                            <div class="product-desc_info">
                                                <div class="inner-desc">
                                                    <p>Nhanh tay, chương trình kết thúc sau:</p>
                                                </div>
                                                <div class="jb-countdown"></div>
                                                <div class="manufacturer">
                                                    <a href="shop-left-sidebar.html">Giảm giá đến 20% duy nhất có tại Jobaria’s</a>
                                                </div>
                                                <div class="product-name">
                                                    <h6>
                                                        <a href="single-product.html">${prodsell.viewPro}</a>
                                                    </h6>
                                                </div>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div>
                                                <div class="product-desc">
                                                    <p></p>
                                                </div>
                                                <div class="price-box">
                                                    <span class="old-price">${prodsell.price}</span>
                                                    <span class="new-price">${prodsell.price*4/5}</span>
                                                </div>
                                            </div>
                                            <div class="add-actions">
                                                <ul>
                                                    <li>
                                                       
                                                             <li><a class="jb-add_cart" href="<%=request.getContextPath()%>/cartController/addCart.htm?productDetailId=${prodsell.productDetailId}"><i class="icon_cart_alt"></i>Add to cart</a></li>
                                                        
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                     
                                    </div>
                                </div>
                                                   </c:forEach> 
                               
                            </div>
                        </div>
                        <!-- JB's Special Product Slider Area End Here -->
                    </div>
                </div>
            </div>
            <!-- JB's Special Product Area End Here -->

            <!-- Begin JB's Banner Various Style Area -->
            <div class="jb-banner_area banner-various_style">
                <div class="container-fluid p-0">
                    <div class="row no-gutters">
                        <div class="col-lg-6">
                            <div class="banner-item">
                                <a href="shop-left-sidebar.html">
                                    <img src="../image/banner/1-5.jpg" alt="JB's Banner">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="row no-gutters">
                                <div class="col-lg-6 col-md-6">
                                    <div class="banner-item">
                                        <a href="shop-left-sidebar.html">
                                            <img src="../image/banner/1-6.jpg" alt="JB's Banner">
                                        </a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="row no-gutters">
                                        <div class="col-lg-12">
                                            <div class="banner-item">
                                                <a href="shop-left-sidebar.html">
                                                    <img src="../image/banner/1-7.jpg" alt="JB's Banner">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="banner-item">
                                                <a href="shop-left-sidebar.html">
                                                    <img src="../image/banner/1-8.jpg" alt="JB's Banner">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- JB's Banner Various Style Area End Here -->

            <!-- Begin JB's Banner With Content Area -->
            <div class="banner-with-content_area @@ith12345
                 em-separation">
                <!-- Begin JB's Banner Content Area -->
                <div class="jb-banner_content">
                    <div class="product-discount">
                        <span>Sale Up To 20% Off</span>
                    </div>
                    <div class="product-facility">
                        <h2>Next Level Of Sounds</h2>
                    </div>
                    <div class="product-desc">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam ex hic ab enim nemo laboriosam nesciunt
                            fuga, possimus labore, ea doloribus quas voluptatum ipsam?</p>
                    </div>
                    <div class="jb-btn-ps_left slide-btn">
                        <a class="jb-btn-bondi_blue" href="shop-left-sidebar.html">Shop Now</a>
                    </div>
                </div>
                <!-- JB's Banner Content Area End Here -->
            </div>
            <!-- JB's Banner With Content Area End Here -->

            <!-- Begin JB's Product Tab Area Two -->
            <div class="jb-product-tab_area jb-product-tab_area-2">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="product-tab product-tab-2">
                                <div class="product-tab_heading">
                                    <h4>2020 Trending</h4>
                                </div>
                                <ul class="nav product-menu">
                                    
                                </ul>
                            </div>
                            <div class="tab-content jb-tab_content">
                                <div id="fashion" class="tab-pane active show" role="tabpanel">
                                    <div class="jb-product-tab_slider-2">
                                          <c:forEach items="${listProDeNew}" var="prode">
                                            <div class="jb-slide-item">
                                                <div class="jb-single_product">
                                                    
                                                    <div class="product-img">
                                                        <a href="single-product.html">
                                                            <img src="/WebApplication1/jsp/image/${prode.imagesLink}" alt="JB's Product Image">
                                                        </a>
                                                        <span class="sticker">New</span>

                                                        <div><a href="#" title="Quick View" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-search"></i></a></div>
                                                    </div>
                                                    <div class="jb-product_content">
                                                        <div class="product-desc_info">

                                                            <h5><a class="product-name" href="single-product.html">${prode.product.productName}</a></h5>
                                                            <h6 class="product-desc_info">${prode.viewPro}</h6>
                                                            <div class="rating-box">
                                                                <ul>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                            <div class="price-box">
                                                                <span class="new-price">${prode.price}</span>
                                                            </div>
                                                        </div>
                                                        <div class="add-actions">
                                                            <ul>
                                                                <li><a class="jb-wishlist_link" href="wishlist.html"><i class="fa fa-heart"></i></a></li>
                                                                <li><a class="jb-add_cart" href="<%=request.getContextPath()%>/cartController/addCart.htm?productDetailId=${prode.productDetailId}"><i class="icon_cart_alt"></i>Add to cart</a></li>
                                                                <li><a class="jb-sp_link" href="single-product.html"><i class="fa fa-copy"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>                                          
                                                </div>
                                            </div>
                                        </c:forEach>                                                            
                                            </div>
                                        </div>                                            
                                    </div>
                                </div>
                                <div id="electronics" class="tab-pane" role="tabpanel">
                                    
                                </div>
                                <div id="toys-hobbies" class="tab-pane" role="tabpanel">
                              
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- JB's Product Tab Area Two End Here -->

            <!-- Begin JB's Banner With Two Columns Area -->
           
            <!-- JB's Banner With Two Columns Area End Here -->

            <!-- Begin JB's List Product Area -->
            <div class="jb-list-product_area @@section-space">
                <div class="container">
                    <div class="row">
                        <!-- Begin JB's List Product Slider Area -->
                        <div class="col-lg-4">
                            <div class="section_title-2">
                                <h4>Tất cả Sản Phẩm</h4>
                            </div>
                            <div class="jb-list-product_slider">
                                <!-- Begin JB's Slide Item Area -->
                                <c:forEach items="${listProDe}" var="prod" >
                                <div class="jb-slide-item">
                                    <div class="jb-single_product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img src="/WebApplication1/jsp/image/${prod.imagesLink}" alt="JB's Product Image">
                                            </a>
                                        </div>
                                        <div class="jb-product_content">
                                            <div class="product-desc_info">
                                                <div class="product-name">
                                                    <h6>
                                                        <a href="single-product.html">${prod.viewPro}</a>
                                                    </h6>
                                                </div>
                                                <div class="price-box">
                                                    <span class="new-price">${prod.price}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                                <!-- JB's Slide Item Area End Here -->
                                <!-- Begin JB's Slide Item Area -->                 
                            </div>
                        </div>
                        <!-- JB's List Product Slider Area End Here -->
                        <!-- Begin JB's List Product Slider Area -->
                        <div class="col-lg-4">
                            <div class="section_title-2">
                                <h4>Sản Phẩm Khuyến Mãi</h4>
                            </div>
                            <div class="jb-list-product_slider">
                                <!-- Begin JB's Slide Item Area -->
                                <c:forEach items="${listProDeBestSell}" var="prodsell">
                                <div class="jb-slide-item">
                                    <div class="jb-single_product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img src="/WebApplication1/jsp/image/${prodsell.imagesLink}" alt="JB's Product Image">
                                            </a>
                                        </div>
                                        <div class="jb-product_content">
                                            <div class="product-desc_info">
                                                <div class="product-name">
                                                    <h6>
                                                        <a href="single-product.html">${prodsell.viewPro}</a>
                                                    </h6>
                                                </div>
                                                <div class="price-box">
                                                    <span class="new-price">${prodsell.price}</span>
                                                    <span class="old-price">${prodsell.price*4/5}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                                <!-- JB's Slide Item Area End Here -->
                                <!-- Begin JB's Slide Item Area --> 
                            </div>
                        </div>
                        <!-- JB's List Product Slider Area End Here -->
                        <!-- Begin JB's List Product Slider Area -->
                        <div class="col-lg-4">
                            <div class="section_title-2">
                                <h4>Sản Phẩm mới</h4>
                            </div>
                            <div class="jb-list-product_slider">
                                <!-- Begin JB's Slide Item Area -->
                                <c:forEach items="${listProDeNew}" var="prode"> 
                                <div class="jb-slide-item">
                                    <div class="jb-single_product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img src="/WebApplication1/jsp/image/${prode.imagesLink}" alt="JB's Product Image">
                                            </a>
                                        </div>
                                        <div class="jb-product_content">
                                            <div class="product-desc_info">
                                                <div class="product-name">
                                                    <h6>
                                                        <a href="single-product.html">${prode.viewPro}</a>
                                                    </h6>
                                                </div>
                                                <div class="price-box">
                                                    <span class="new-price">${prode.price}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>   
                        
                            </div>
                        </div>
                        <!-- JB's List Product Slider Area End Here -->
                    </div>
                </div>
            </div>
            <!-- JB's List Product Area End Here -->
            <!-- Begin JB's Banner With Content Two Area -->
            <div class="banner-with-content_area-2">
                <!-- Begin JB's Banner Content Area -->
                <div class="jb-banner_content">
                    <div class="product-discount">
                        <span>Sale Up To 20% Off</span>
                    </div>
                    <div class="product-facility">
                        <h2><span>20% Off</span> Wireless Fetures</h2>
                    </div>
                    <div class="jb-btn-ps_left slide-btn">
                        <a class="jb-btn-bondi_blue" href="shop-left-sidebar.html">Shop Now</a>
                    </div>
                </div>
                <!-- JB's Banner Content Area End Here -->
            </div>
            <!-- JB's Banner With Content Two Area End Here -->

            <!-- Begin JB's Footer Area -->
            <jsp:include page="footer1.jsp"/>
            <!-- JB's Footer Area End Here -->

            <!-- Begin JB's Modal Area -->
            <div class="modal fade modal-wrapper" id="exampleModalCenter">
                <div class="modal-dialog modal-dialog-centered" role="document">
                   
                </div>
            </div>
            <!-- JB's Modal Area End Here -->

        </div>
        <!-- JB's Body Wrapper Area End Here -->
        <script src="${contextPath}/WebApplication1/js/plugins.min.js"></script>
        <script src="${contextPath}/WebApplication1/js/ajax-mail.js"></script>
        <script src="${contextPath}/WebApplication1/js/main.js"></script>
    </body>


    <!-- Mirrored from demo.hasthemes.com/jobaria-preview-v2/jobaria/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Aug 2020 11:37:27 GMT -->
</html>
