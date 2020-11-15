<%-- 
    Document   : header1
    Created on : Nov 8, 2020, 2:29:51 PM
    Author     : Windows 10
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header>
                <!-- Begin Header Top Area -->
                <div class="header-top_area bg--white_smoke">
                    <div class="container">
                        <div class="row">
                            <!-- Begin Header Information Area -->
                            <div class="col-lg-3 col-md-6 col-sm-4">
                                <div class="header-info_area">
                                    <span>Xin chào bạn đến với di động Việt!</span>
                                </div>
                            </div>
                            <!-- Header Information Area End Here -->
                            <!-- Begin Header Top Right Area -->
                            <div class="col-lg-9 col-md-6 col-sm-8">
                                <div class="ht-right">
                                    <div class="ht-menu">
                                        <ul>
                                            <li><a href="${contexPath}/WebApplication1/categoryController/getAllCategory.htm"><i class="fa fa-user"></i>My Account</a></li>
                                            <!-- Begin Currency Area --> 
                                            <li><a href="javascript:void(0)">USD $<i class="fa fa-chevron-down"></i></a>
                                                <ul class="ht-dropdown ht-currency">
                                                    <li><a href="javascript:void(0)">EUR €</a></li>
                                                    <li class="active"><a href="javascript:void(0)">USD $</a></li>
                                                </ul>
                                            </li>
                                            <!-- Currency Area End Here -->
                                            <!-- Begin Language Area -->
                                            <li><a href="javascript:void(0)"><img src="${contextPath}/WebApplication1/image/menu/icon/1.jpg" alt="JB's Language Icon">English <i class="fa fa-chevron-down"></i></a>
                                              
                                            </li>
                                            <!-- Language Area End Here -->
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Header Top Right Area End Here -->
                        </div>
                    </div>
                </div>
                <!-- Header Top Area End Here -->
                <!-- Begin Header Middle Area -->
                <div class="header-middle_area">
                    <div class="container">
                        <div class="row">
                            <!-- Begin Header Middle Logo Area -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-6 order-1 order-lg-1 order-sm-1">
                                <div class="hm-logo">
                                    <a href="${contexPath}/WebApplication1/indexController/getAll.htm">
                                        <img src="../image/menu/logo/1.jpg" alt="JB's Header Logo">
                                    </a>
                                </div>
                            </div>
                            <!-- Header Middle Logo Area End Here -->
                            <!-- Begin Header Middle Menu Area -->
                            <div class="col-lg-6 position-static order-lg-2 d-none d-lg-block">
                                <div class="hm-menu">
                                    <nav>
                                        <ul>
                                            <li class="dropdown-holder"><a href="index.html">Home<i
                                                        class="fa fa-chevron-down"></i></a>
                                                <!-- Begin Header Middle Dropdwon Area -->
                                                <ul class="hm-dropdown">

                                                    <c:forEach items="${listCa}" var="ca">
                                                        <li><a class="category-product-content" href="<%=request.getContextPath()%>/productController/getProCat.htm?categoryId=${ca.categoryId}">${ca.categoryName}</a></li>
                                                        </c:forEach>
                                                </ul>
                                                <!-- Header Middle Dropdwon Area End Here -->
                                            </li>
                                            
                                            
                                            </li>
                                            <li><a href="blog-left-sidebar.html">Blog<i class="fa fa-chevron-down"></i></a>
                                                <!-- Begin Header Middle Dropdwon Area -->
                                               
                                                <!-- Header Middle Dropdwon Area End Here -->
                                            </li>
                                            <li><a href="index.html">Pages<i class="fa fa-chevron-down"></i></a>
                                                <!-- Begin Header Middle Dropdwon Area -->
                                                <ul class="hm-dropdown">
                                                    <li><a href="contact.html">Contact</a></li>
                                                    <li><a href=""></a></li>
                                                    <li><a href="faq.html">FAQ</a></li>
                                                    <li><a href="404.html">404 Error</a></li>
                                                </ul>
                                                <!-- Header Middle Dropdwon Area End Here -->
                                            </li>
                                            <li><a href="contact.html">Contact</a></li>
                                           <li><a href="${contexPath}/WebApplication1/AdminController/initlogin.htm">Đăng kí Tài Khoản</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <!-- Header Middle Menu Area End Here -->
                            <!-- Begin JB's Category Menu Area -->
                            <div class="col-lg-3 col-md-5 order-2 order-md-1 order-sm-2 d-lg-none">
                                
                            </div>
                            <!-- JB's Category Menu Area End Here -->
                            <!-- Begin Header Middle Minicart Area -->
                            <div class="col-lg-2 col-md-3 col-sm-6 col-6 order-1 order-lg-3 order-sm-1">
                                <div class="hm-minicart_area">
                                    <ul>
                                        <li>
                                            <a href="cart.html">
                                                <div class="minicart-icon">
                                                    <i class="fa fa-shopping-cart"></i>
                                                   
                                                    <span class="item-count">${listCart.size()}</span>
                                                </div>
                                                <div href="ShoppingCart" class="minicart-text"><span>My Cart</span></div>             
                                                <div class="item_total"><span>${tongTien}</span></div>    
                                            </a>
                                           
                                             
                                            <ul class="minicart-body">
                                              <c:forEach items="${listCart}" var="cart">
                                                <li class="minicart-item_area">
                                                    <div class="minicart-single_item">
                                                        <div class="minicart-img">
                                                            <a href="single-product.html">
                                                                <img src="/WebApplication1/jsp/image/${cart.productDetail.imagesLink}" alt="JB's Product Image">
                                                            </a>
                                                            <span class="product-quantity">${cart.quantity}</span>
                                                        </div>
                                                        <div class="minicart-content">
                                                            <div class="product-name">
                                                                <h6>
                                                                    <a href="single-product.html">${cart.productDetail.product.productName} </a>
                                                                </h6>
                                                            </div>
                                                            <div class="price-box">
                                                                <span class="new-price">${cart.productDetail.price}</span>
                                                            </div>
                                                            
                                                        </div>
                                                    </div>
                                                </li>                                             
                                                 </c:forEach>                
                                                <li>
                                                    <div class="price_content">
                                                        <div class="cart-subtotals">
                                                            <div class="products subtotal-list">
                                                                <span class="label">Subtotal</span>
                                                                <span class="value">${tongTien}</span>
                                                            </div>
                                                            <div class="shipping subtotal-list">
                                                                <span class="label">Shipping</span>
                                                                <span class="value">Free</span>
                                                            </div>
                                                           
                                                            <div class="cart-total subtotal-list">
                                                                <span class="label">Total</span>
                                                                <span class="value">${tongTien}</span>
                                                            </div>
                                                        </div>
                                                        <div class="minicart-button">
                                                            <a class="jb-btn jb-btn_fullwidth">Checkout</a>
                                                        </div>
                                                    </div>
                                                </li>
                                               
                                               
                                                
                                                
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <!-- Begin JB's Offcanvas Area -->
                                <a href="#" class="menu-btn color--white">
                                    <i class="fa fa-bars"></i>
                                </a>
                                <!-- JB's Offcanvas Area End Here -->
                            </div>
                            <!-- Header Middle Minicart Area End Here -->
                        </div>
                    </div>
                </div>
                <!-- Header Middle Area End Here -->
                <!-- Begin Header Bottom Area -->
                <div class="header-bottom_area d-none d-lg-block">
                    <div class="container">
                        <div class="row">
                            <!-- Begin JB's Category Menu Area -->
                            <div class="col-lg-3 col-md-4">
                                <div class="category-menu category-menu-hidden">
                                    <div class="category-heading">
                                        <h2 class="categories-toggle"><span>Shop by categories</span></h2>
                                    </div>
                                    <div id="cate-toggle" class="category-menu-list">
                                        <ul>
                                            <li class="right-menu"><a href="shop-left-sidebar.html">Fashion</a>
                                                <ul class="cat-mega-menu">
                                                    <li class="right-menu cat-mega-title">
                                                        <a href="shop-left-sidebar.html">Women</a>
                                                        <ul>
                                                            <li><a href="shop-left-sidebar.html">Dresses</a></li>
                                                            <li><a href="shop-left-sidebar.html">Shirts & Blouses</a></li>
                                                            <li><a href="shop-left-sidebar.html">Blazers</a></li>
                                                            <li><a href="shop-left-sidebar.html">Lingerie</a></li>
                                                            <li><a href="shop-left-sidebar.html">Jeans</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="right-menu cat-mega-title">
                                                        <a href="shop-left-sidebar.html">Men</a>
                                                        <ul>
                                                            <li><a href="shop-left-sidebar.html">Shorts</a></li>
                                                            <li><a href="shop-left-sidebar.html">Sportswear</a></li>
                                                            <li><a href="shop-left-sidebar.html">Swimwear</a></li>
                                                            <li><a href="shop-left-sidebar.html">Jackets & Suits</a></li>
                                                            <li><a href="shop-left-sidebar.html">T-shirts & Tank Tops</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="right-menu cat-mega-title">
                                                        <a href="shop-left-sidebar.html">Kids</a>
                                                        <ul>
                                                            <li><a href="shop-left-sidebar.html">Trousers</a></li>
                                                            <li><a href="shop-left-sidebar.html">Shirts & Tops</a></li>
                                                            <li><a href="shop-left-sidebar.html">Knitwear</a></li>
                                                            <li><a href="shop-left-sidebar.html">Jackets</a></li>
                                                            <li><a href="shop-left-sidebar.html">Sandals</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="right-menu"><a href="shop-left-sidebar.html">Electronics</a>
                                                <ul class="cat-mega-menu cat-mega-menu-2">
                                                    <li class="right-menu cat-mega-title">
                                                        <a href="shop-left-sidebar.html">Cameras</a>
                                                        <ul>
                                                            <li><a href="shop-left-sidebar.html">Cords and Cables</a></li>
                                                            <li><a href="shop-left-sidebar.html">gps accessories</a></li>
                                                            <li><a href="shop-left-sidebar.html">Microphones</a></li>
                                                            <li><a href="shop-left-sidebar.html">Wireless Transmitters</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="right-menu cat-mega-title">
                                                        <a href="shop-left-sidebar.html">Audio</a>
                                                        <ul>
                                                            <li><a href="shop-left-sidebar.html">Other Accessories</a></li>
                                                            <li><a href="shop-left-sidebar.html">Portable Audio</a></li>
                                                            <li><a href="shop-left-sidebar.html">Satellite Radio</a></li>
                                                            <li><a href="shop-left-sidebar.html">Visual Accessories</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="right-menu cat-mega-title">
                                                        <a href="shop-left-sidebar.html">Cell Phones</a>
                                                        <ul>
                                                            <li><a href="shop-left-sidebar.html">Xail</a></li>
                                                            <li><a href="shop-left-sidebar.html">Chamcham Galaxy</a></li>
                                                            <li><a href="shop-left-sidebar.html">SIM Cards</a></li>
                                                            <li><a href="shop-left-sidebar.html">Prepaid Cell Phones</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="right-menu cat-mega-title">
                                                        <a href="shop-left-sidebar.html">TV & Video</a>
                                                        <ul>
                                                            <li><a href="shop-left-sidebar.html">4K Ultra HDTVs</a></li>
                                                            <li><a href="shop-left-sidebar.html">All TVs</a></li>
                                                            <li><a href="shop-left-sidebar.html">Refurbished TVs</a></li>
                                                            <li><a href="shop-left-sidebar.html">TV Accessories</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="right-menu"><a href="shop-left-sidebar.html">Toys & Hobbies</a>
                                                <ul class="cat-mega-menu cat-mega-menu-3">
                                                    <li class="right-menu cat-mega-title">
                                                        <a href="shop-left-sidebar.html">Books & Board Games</a>
                                                        <ul>
                                                            <li><a href="shop-left-sidebar.html">Arts & Crafts</a></li>
                                                            <li><a href="shop-left-sidebar.html">Baby & Toddler Toys</a></li>
                                                            <li><a href="shop-left-sidebar.html">Electronics for Kids</a></li>
                                                            <li><a href="shop-left-sidebar.html">Dolls & Accessories</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="right-menu cat-mega-title">
                                                        <a href="shop-left-sidebar.html">Baby Dolls</a>
                                                        <ul>
                                                            <li><a href="shop-left-sidebar.html">Baby Alive Dolls</a></li>
                                                            <li><a href="shop-left-sidebar.html">Barbie</a></li>
                                                            <li><a href="shop-left-sidebar.html">Baby Annabell</a></li>
                                                            <li><a href="shop-left-sidebar.html">Bratz</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a href="shop-left-sidebar.html">Sports & Outdoors</a></li>
                                            <li><a href="shop-left-sidebar.html">Smartphone & Tablets</a></li>
                                            <li><a href="shop-left-sidebar.html">Health & Beauty</a></li>
                                            <li><a href="shop-left-sidebar.html">Computers & Networking</a></li>
                                            <li><a href="shop-left-sidebar.html">Accessories</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- JB's Category Menu Area End Here -->
                            <!-- Begin Header Search Area -->
                            <div class="col-xl-7 col-lg-6 col-md-5">
                                <div class="header-search_area">
                                    <form action="#" class="header-search_box">
                                        <input class="jb-search_input" type="text" placeholder="Enter your search key ...">
                                   
                                        <button class="jb-search_btn" type="submit"><i class="fa fa-search"></i></button>
                                    </form>
                                </div>
                            </div>
                            <!-- Header Search Area End Herer -->
                            <!-- Begin Header Contact Information Area -->
                            <div class="col-xl-2 col-lg-3 col-md-3">
                                <div class="contact-info">
                                    <a href="tel://+123123321345"><i class="fa fa-phone-volume"></i>0356607575</a>
                                </div>
                            </div>
                            <!-- Header Contact Information Area End Here -->
                        </div>
                    </div>
                </div>
                <!-- Header Bottom Area End Here -->
                <!-- Begin JB's Offcanvas Area -->
                <div class="offcanvas-menu-wrapper" id="offcanvasMenu">
                    <div class="offcanvas-menu-inner">
                        <div class="container">
                            <a href="#" class="btn-close"><i class="fa fa-times"></i></a>
                            <!-- Begin Offcanvas Search Area -->
                            <div class="offcanvas-search">
                                <form action="#" class="hm-searchbox">
                                    <input type="text" placeholder="Search for item...">
                                    <button class="search_btn" type="submit"><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                            <!-- Offcanvas Search Area End Here -->
                            <!-- Begin Offcanvas Navigation Area -->
                            <nav class="offcanvas-navigation">
                                <ul class="offcanvas-menu">
                                    <li class="menu-item-has-children active"><a href="index.html"><span
                                                class="mm-text">Home</span></a>
                                        <ul class="sub-menu">
                                            <li>
                                                <a href="index.html">
                                                    <span class="mm-text">Home One</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="index-2.html">
                                                    <span class="mm-text">Home Two</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="index-3.html">
                                                    <span class="mm-text">Home Three</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="index-4.html">
                                                    <span class="mm-text">Home Four</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="index-5.html">
                                                    <span class="mm-text">Home Five</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="shop-left-sidebar.html">
                                            <span class="mm-text">Shop</span>
                                        </a>
                                        <ul class="sub-menu">
                                            <li class="menu-item-has-children">
                                                <a href="shop-left-sidebar.html">
                                                    <span class="mm-text">Grid View</span>
                                                </a>
                                                <ul class="sub-menu">
                                                    <li>
                                                        <a href="shop-3-column.html">
                                                            <span class="mm-text">Column Three</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="shop-4-column.html">
                                                            <span class="mm-text">Column Four</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="shop-left-sidebar.html">
                                                            <span class="mm-text">Left Sidebar</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="shop-right-sidebar.html">
                                                            <span class="mm-text">Right Sidebar</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="menu-item-has-children">
                                                <a href="shop-list-left-sidebar.html">
                                                    <span class="mm-text">Shop List</span>
                                                </a>
                                                <ul class="sub-menu">
                                                    <li>
                                                        <a href="shop-list-fullwidth.html">
                                                            <span class="mm-text">Full Width</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="shop-list-left-sidebar.html">
                                                            <span class="mm-text">Left Sidebar</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="shop-list-right-sidebar.html">
                                                            <span class="mm-text">Right Sidebar</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="menu-item-has-children">
                                                <a href="single-product-gallery-left.html">
                                                    <span class="mm-text">Single Product Style</span>
                                                </a>
                                                <ul class="sub-menu">
                                                    <li>
                                                        <a href="single-product-gallery-left.html">
                                                            <span class="mm-text">Gallery Left</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product-gallery-right.html">
                                                            <span class="mm-text">Gallery Right</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product-tab-style-left.html">
                                                            <span class="mm-text">Tab Style Left</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product-tab-style-right.html">
                                                            <span class="mm-text">Tab Style Right</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product-sticky-left.html">
                                                            <span class="mm-text">Sticky Left</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product-sticky-right.html">
                                                            <span class="mm-text">Sticky Right</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="menu-item-has-children">
                                                <a href="single-product.html">
                                                    <span class="mm-text">Single Product Type</span>
                                                </a>
                                                <ul class="sub-menu">
                                                    <li>
                                                        <a href="single-product.html">
                                                            <span class="mm-text">Single Product</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product-sale.html">
                                                            <span class="mm-text">Single Product Sale</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product-group.html">
                                                            <span class="mm-text">Single Product Group</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product-normal.html">
                                                            <span class="mm-text">Single Product Normal</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product-affiliate.html">
                                                            <span class="mm-text">Single Product Affiliate</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product-slider.html">
                                                            <span class="mm-text">Single Product Slider</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="blog-left-sidebar.html">
                                            <span class="mm-text">Blog</span>
                                        </a>
                                        <ul class="sub-menu">
                                            <li class="menu-item-has-children has-children">
                                                <a href="blog-left-sidebar.html">
                                                    <span class="mm-text">Grid View</span>
                                                </a>
                                                <ul class="sub-menu">
                                                    <li>
                                                        <a href="blog-2-column.html">
                                                            <span class="mm-text">Column Two</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="blog-3-column.html">
                                                            <span class="mm-text">Column Three</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="blog-left-sidebar.html">
                                                            <span class="mm-text">Left Sidebar</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="blog-right-sidebar.html">
                                                            <span class="mm-text">Right Sidebar</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="menu-item-has-children has-children">
                                                <a href="blog-list-left-sidebar.html">
                                                    <span class="mm-text">List View</span>
                                                </a>
                                                <ul class="sub-menu">
                                                    <li>
                                                        <a href="blog-list-left-sidebar.html">
                                                            <span class="mm-text">List Left Sidebar</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="blog-list-right-sidebar.html">
                                                            <span class="mm-text">List Right Sidebar</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="menu-item-has-children has-children">
                                                <a href="blog-details-left-sidebar.html">
                                                    <span class="mm-text">Blog Details</span>
                                                </a>
                                                <ul class="sub-menu">
                                                    <li>
                                                        <a href="blog-details-left-sidebar.html">
                                                            <span class="mm-text">Left Sidebar</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="blog-details-right-sidebar.html">
                                                            <span class="mm-text">Right Sidebar</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="menu-item-has-children has-children">
                                                <a href="blog-gallery-format.html">
                                                    <span class="mm-text">Blog Format</span>
                                                </a>
                                                <ul class="sub-menu">
                                                    <li>
                                                        <a href="blog-gallery-format.html">
                                                            <span class="mm-text">Gallery Format</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="blog-audio-format.html">
                                                            <span class="mm-text">Audio Format</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="blog-video-format.html">
                                                            <span class="mm-text">Video Format</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="index.html">
                                            <span class="mm-text">Pages</span>
                                        </a>
                                        <ul class="sub-menu">
                                            <li>
                                                <a href="my-account.html">
                                                    <span class="mm-text">My Account</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="login-register.html">
                                                    <span class="mm-text">Login | Register</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="wishlist.html">
                                                    <span class="mm-text">Wishlist</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="cart.html">
                                                    <span class="mm-text">Cart</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="checkout.html">
                                                    <span class="mm-text">Checkout</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="compare.html">
                                                    <span class="mm-text">Compare</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="faq.html">
                                                    <span class="mm-text">FAQ</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="404.html">
                                                    <span class="mm-text">Error 404</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </nav>
                            <!-- Offcanvas Navigation Area End Here -->
                            <!-- Begin Header Top Offcanvas Navigation Area -->
                            <nav class="offcanvas-navigation ht-offcanvas_navigation">
                                <ul class="offcanvas-menu">
                                    <li class="menu-item-has-children active"><a href="javascript:void(0)"><span
                                                class="mm-text">User Setting</span></a>
                                        <ul class="sub-menu">
                                            <li>
                                                <a href="my-account.html">
                                                    <span class="mm-text">My Account</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="login-register.html">
                                                    <span class="mm-text">Login | Register</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children"><a href="javascript:void(0)"><span
                                                class="mm-text">Currency</span></a>
                                        <ul class="sub-menu">
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="mm-text">EUR €</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="mm-text">USD $</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children"><a href="javascript:void(0)"><span
                                                class="mm-text">Language</span></a>
                                        <ul class="sub-menu">
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="mm-text">English</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="mm-text">Français</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="mm-text">Romanian</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="mm-text">Japanese</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </nav>
                            <!-- Header Top Offcanvas Navigation Area End Here -->
                        </div>
                    </div>
                </div>
                <!-- JB's Offcanvas Area End Here -->
            </header>
