<%-- 
    Document   : NewAdmin
    Created on : Nov 3, 2020, 10:22:14 PM
    Author     : Windows 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login & Register || Jobaria - Digital Products Store eCommerce Bootstrap 4 Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/WebApplication1/css/plugins.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/WebApplication1/css/main.css" />
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/WebApplication1/image/favicon.ico">
</head>

<body>
    <%
            String error = "";
            if (request.getAttribute("error") != null) {
                error = (String) request.getAttribute("error");
            }
            String UserName = "", passUser = "";
            if (request.getAttribute("UserName") != null) {
                UserName = (String) request.getAttribute("UserName");
            }
            if (request.getAttribute("passUser") != null) {
                passUser = (String) request.getAttribute("passUser");
            }
        %>
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
        <header>
            <!-- Begin Header Top Area -->
            <div class="header-top_area bg--white_smoke">
                <div class="container">
                    <div class="row">
                        <!-- Begin Header Information Area -->
                        <div class="col-lg-3 col-md-6 col-sm-4">
                            <div class="header-info_area">
                                <span>Default welcome msg!</span>
                            </div>
                        </div>
                        <!-- Header Information Area End Here -->
                        <!-- Begin Header Top Right Area -->
                        <div class="col-lg-9 col-md-6 col-sm-8">
                            <div class="ht-right">
                                <div class="ht-menu">
                                    <ul>
                                        <li><a href="my-account.html"><i class="fa fa-user"></i>My Account</a></li>
                                        <!-- Begin Currency Area -->
                                        <li><a href="javascript:void(0)">USD $<i class="fa fa-chevron-down"></i></a>
                                            <ul class="ht-dropdown ht-currency">
                                                <li><a href="javascript:void(0)">EUR €</a></li>
                                                <li class="active"><a href="javascript:void(0)">USD $</a></li>
                                            </ul>
                                        </li>
                                        <!-- Currency Area End Here -->
                                        <!-- Begin Language Area -->
                                        <li><a href="javascript:void(0)"><img src="image/menu/icon/1.jpg" alt="JB's Language Icon">English <i class="fa fa-chevron-down"></i></a>
                                            <ul class="ht-dropdown">
                                                <li class="active"><a href="javascript:void(0)"><img src="image/menu/icon/1.jpg" alt="JB's Language Icon">English</a></li>
                                                <li><a href="javascript:void(0)"><img src="image/menu/icon/2.jpg" alt="JB's Language Icon">Français</a></li>
                                            </ul>
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
                                <a href="index.html">
                                    <img src="image/menu/logo/1.jpg" alt="JB's Header Logo">
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
                                                <li class="@@currentHomePage"><a href="index.html">Home One</a></li>
                                                <li><a href="index-2.html">Home Two</a></li>
                                                <li><a href="index-3.html">Home Three</a></li>
                                                <li><a href="index-4.html">Home Four</a></li>
                                                <li><a href="index-5.html">Home Five</a></li>
                                            </ul>
                                            <!-- Header Middle Dropdwon Area End Here -->
                                        </li>
                                        <li class="megamenu-holder"><a href="shop-left-sidebar.html">Shop<i
                                                    class="fa fa-chevron-down"></i></a>
                                            <ul class="hm-megamenu">
                                                <li><span class="megamenu-title">Shop Page Layout</span>
                                                    <ul>
                                                        <li><a href="shop-3-column.html">Column Three</a></li>
                                                        <li><a href="shop-4-column.html">Column Four</a></li>
                                                        <li><a href="shop-left-sidebar.html">Left Sidebar</a></li>
                                                        <li><a href="shop-right-sidebar.html">Right Sidebar</a></li>
                                                        <li><a href="shop-list-fullwidth.html">List Fullwidth</a></li>
                                                        <li><a href="shop-list-left-sidebar.html">List Left Sidebar</a></li>
                                                        <li><a href="shop-list-right-sidebar.html">List Right Sidebar</a></li>
                                                    </ul>
                                                </li>
                                                <li><span class="megamenu-title">Single Product Style</span>
                                                    <ul>
                                                        <li><a href="single-product-gallery-left.html">Gallery Left</a></li>
                                                        <li><a href="single-product-gallery-right.html">Gallery Right</a></li>
                                                        <li><a href="single-product-tab-style-left.html">Tab Style Left</a></li>
                                                        <li><a href="single-product-tab-style-right.html">Tab Style Right</a>
                                                        </li>
                                                        <li><a href="single-product-sticky-left.html">Sticky Left</a></li>
                                                        <li><a href="single-product-sticky-right.html">Sticky Right</a></li>
                                                    </ul>
                                                </li>
                                                <li><span class="megamenu-title">Single Product Type</span>
                                                    <ul>
                                                        <li><a href="single-product.html">Single Product</a></li>
                                                        <li><a href="single-product-sale.html">Single Product Sale</a></li>
                                                        <li><a href="single-product-group.html">Single Product Group</a></li>
                                                        <li><a href="single-product-normal.html">Single Product Normal</a></li>
                                                        <li><a href="single-product-affiliate.html">Single Product Affiliate</a>
                                                        </li>
                                                        <li><a href="single-product-slider.html">Single Product Slider</a></li>
                                                    </ul>
                                                </li>
                                                <li><span class="megamenu-title">Shop Related Pages</span>
                                                    <ul>
                                                        <li><a href="my-account.html">My Account</a></li>
                                                        <li><a href="login-register.html">Login | Register</a></li>
                                                        <li><a href="wishlist.html">Wishlist</a></li>
                                                        <li><a href="cart.html">Cart</a></li>
                                                        <li><a href="checkout.html">Checkout</a></li>
                                                        <li><a href="compare.html">Compare</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="blog-left-sidebar.html">Blog<i class="fa fa-chevron-down"></i></a>
                                            <!-- Begin Header Middle Dropdwon Area -->
                                            <ul class="hm-dropdown">
                                                <li><a href="blog-left-sidebar.html">Grid View<i
                                                            class="fa fa-chevron-down"></i></a>
                                                    <ul class="hm-dropdown hm-sub_dropdown">
                                                        <li><a href="blog-2-column.html">Column Two</a></li>
                                                        <li><a href="blog-3-column.html">Column Three</a></li>
                                                        <li><a href="blog-left-sidebar.html">Left Sidebar</a></li>
                                                        <li><a href="blog-right-sidebar.html">Right Sidebar</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="blog-list-left-sidebar.html">List View<i
                                                            class="fa fa-chevron-down"></i></a>
                                                    <ul class="hm-dropdown hm-sub_dropdown">
                                                        <li><a href="blog-list-left-sidebar.html">List Left Sidebar</a></li>
                                                        <li><a href="blog-list-right-sidebar.html">List Right Sidebar</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="blog-details-left-sidebar.html">Blog Details<i
                                                            class="fa fa-chevron-down"></i></a>
                                                    <ul class="hm-dropdown hm-sub_dropdown">
                                                        <li><a href="blog-details-left-sidebar.html">Left Sidebar</a></li>
                                                        <li><a href="blog-details-right-sidebar.html">Right Sidebar</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="blog-gallery-format.html">Blog Format<i
                                                            class="fa fa-chevron-down"></i></a>
                                                    <ul class="hm-dropdown hm-sub_dropdown">
                                                        <li><a href="blog-gallery-format.html">Gallery Format</a></li>
                                                        <li><a href="blog-audio-format.html">Audio Format</a></li>
                                                        <li><a href="blog-video-format.html">Video Format</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                            <!-- Header Middle Dropdwon Area End Here -->
                                        </li>
                                        <li><a href="index.html">Pages<i class="fa fa-chevron-down"></i></a>
                                            <!-- Begin Header Middle Dropdwon Area -->
                                            <ul class="hm-dropdown">
                                                <li><a href="contact.html">Contact</a></li>
                                                <li><a href="about-us.html">About Us</a></li>
                                                <li><a href="faq.html">FAQ</a></li>
                                                <li><a href="404.html">404 Error</a></li>
                                            </ul>
                                            <!-- Header Middle Dropdwon Area End Here -->
                                        </li>
                                        <li><a href="contact.html">Contact</a></li>
                                        <li><a href="about-us.html">About Us</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <!-- Header Middle Menu Area End Here -->
                        <!-- Begin JB's Category Menu Area -->
                        <div class="col-lg-3 col-md-5 order-2 order-md-1 order-sm-2 d-lg-none">
                            <div class="category-menu category-menu-hidden">
                                <div class="category-heading">
                                    <h2 class="categories-toggle"><span>Shop by categories</span></h2>
                                </div>
                                <div id="cate-toggle-2" class="category-menu-list">
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
                        <!-- Begin Header Middle Minicart Area -->
                        <div class="col-lg-2 col-md-3 col-sm-6 col-6 order-1 order-lg-3 order-sm-1">
                            <div class="hm-minicart_area">
                                <ul>
                                    <li>
                                        <a href="cart.html">
                                            <div class="minicart-icon">
                                                <i class="fa fa-shopping-cart"></i>
                                                <span class="item-count">2</span>
                                            </div>
                                            <div class="minicart-text"><span>My Cart</span></div>
                                            <div class="item_total"><span>$54.90</span></div>
                                        </a>
                                        <ul class="minicart-body">
                                            <li class="minicart-item_area">
                                                <div class="minicart-single_item">
                                                    <div class="minicart-img">
                                                        <a href="single-product.html">
                                                            <img src="image/product/small-size/1.jpg" alt="JB's Product Image">
                                                        </a>
                                                        <span class="product-quantity">1x</span>
                                                    </div>
                                                    <div class="minicart-content">
                                                        <div class="product-name">
                                                            <h6>
                                                                <a href="single-product.html">
                                                                    Xail 9.7" 128GB iPad - Silver MP2J2LL/A
                                                                </a>
                                                            </h6>
                                                        </div>
                                                        <div class="price-box">
                                                            <span class="new-price">$29.00</span>
                                                        </div>
                                                        <div class="attributes_content">
                                                            <span>Dimension: 40x60cm</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="minicart-item_area">
                                                <div class="minicart-single_item">
                                                    <div class="minicart-img">
                                                        <a href="single-product.html">
                                                            <img src="image/product/small-size/2.jpg" alt="JB's Product Image">
                                                        </a>
                                                        <span class="product-quantity">1x</span>
                                                    </div>
                                                    <div class="minicart-content">
                                                        <div class="product-name">
                                                            <h6>
                                                                <a href="single-product.html">
                                                                    Xail 12.2" Pentium, 4GB, 64GB SSD, W10 Touchscreen
                                                                </a>
                                                            </h6>
                                                        </div>
                                                        <div class="price-box">
                                                            <span class="new-price">$18.90</span>
                                                        </div>
                                                        <div class="attributes_content">
                                                            <span>Color: White</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="price_content">
                                                    <div class="cart-subtotals">
                                                        <div class="products subtotal-list">
                                                            <span class="label">Subtotal</span>
                                                            <span class="value">$47.90</span>
                                                        </div>
                                                        <div class="shipping subtotal-list">
                                                            <span class="label">Shipping</span>
                                                            <span class="value">$7.00</span>
                                                        </div>
                                                        <div class="tax subtotal-list">
                                                            <span class="label">Taxes</span>
                                                            <span class="value">$0.00</span>
                                                        </div>
                                                        <div class="cart-total subtotal-list">
                                                            <span class="label">Total</span>
                                                            <span class="value">$54.90</span>
                                                        </div>
                                                    </div>
                                                    <div class="minicart-button">
                                                        <a class="jb-btn jb-btn_fullwidth" href="checkout.html">Checkout</a>
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
                                <form action="login.htm" class="header-search_box">
                                    <input class="jb-search_input" type="text" placeholder="Enter your search key ...">
                          
                                    <button class="jb-search_btn" type="submit"><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                        </div>
                        <!-- Header Search Area End Herer -->
                        <!-- Begin Header Contact Information Area -->
                        <div class="col-xl-2 col-lg-3 col-md-3">
                            <div class="contact-info">
                                <a href="tel://+123123321345"><i class="fa fa-phone-volume"></i> (080) 123 4567 890</a>
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
        <!-- JB's Header Area End Here -->

        <!-- Begin JB's Breadcrumb Area -->
        <div class="breadcrumb-area">
            <div class="container">
                <div class="breadcrumb-content">
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li class="active">Login & Register</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- JB's Breadcrumb Area End Here -->

        <!-- Begin JB's Login Register Area -->
        <div class="jb-login-register_area">
            <div class="container">
                <div class="row">
                  
                    <div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
                        <form action="insertAdmin.htm" method="POST">
                            <div class="login-form">
                                <h4 class="login-title">Register</h4>
                                <div class="row">
                                    <div class="col-md-6 col-12 mb--20">
                                        <label>User Name</label>
                                        <input type="text" placeholder="userName" name="userName">
                                    </div>
                                    <div class="col-md-6 col-12 mb--20">
                                        <label>Pass Word</label>
                                        <input type="password" placeholder="passUser" name="passUser">
                                    </div>
                                    <div class="col-md-12">
                                        <label>Giới Tính</label>
                                        <input type="text" placeholder="sexAdmin" name="sexAdmin">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Mail</label>
                                        <input type="text" placeholder="mail" name="mail">
                                    </div>
                                     <div class="col-md-6 col-12 mb--20">
                                        <label>Phone</label>
                                        <input type="text" placeholder="phone" name="phone">
                                    </div>
                                     <div class="col-md-6 col-12 mb--20">
                                        <label>Address</label>
                                        <input type="text" placeholder="addresss" name="addresss">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Confirm Password</label>
                                        <input type="" placeholder="userStatus">
                                    </div>
                                    <div class="col-12">
                                        <button class="jb-register_btn" type="submit">Register</button>
                                        
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- JB's Login Register Area  End Here -->

        <!-- Begin JB's Footer Area -->
        <div class="jb-footer_area">
            <!-- Begin JB's Footer Top Area -->
            <div class="footer-top_area jb-separator_border">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="jb-newsletter_area">
                                <div class="newsletter-content">
                                    <h2 class="newsletter-heading">Join Our</h2>
                                    <h3 class="newsletter-sub_heading">Newsletter Now!</h3>
                                    <p class="short-desc">Subscribe to the Jobaria mailing list to receive updates on new
                                        arrivals,
                                        offers and other discount information.</p>
                                    <div class="newsletter-form_wrap">
                                        <form action="http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="newsletters-form validate" target="_blank" novalidate>
                                            <div id="mc_embed_signup_scroll">
                                                <div id="mc-form" class="mc-form subscribe-form pt--15">
                                                    <input id="mc-email" type="email" autocomplete="off" placeholder="Enter your email address" />
                                                    <button class="newsletter-btn" id="mc-submit">
                                                        <i class="fas fa-paper-plane" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- JB's Footer Top Area End Here -->
            <!-- Begin JB's Footer Middle Area -->
            <div class="footer-middle_area bg--nero">
                <div class="container">
                    <div class="row">
                        <!-- Begin Footer Widgets Information Area -->
                        <div class="col-lg-4">
                            <div class="footer-widgets_info">
                                <div class="footer-widgets_logo">
                                    <a href="#">
                                        <img src="image/footer/logo/1.png" alt="JB's Footer Logo">
                                    </a>
                                </div>
                                <div class="short-desc">
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majorited have
                                        suffered alteration.</p>
                                </div>
                                <div class="widgets-essential_stuff">
                                    <ul>
                                        <li class="jb-address"><span>Address:</span> 169-C, Technohub, Dubai Silicon Oasis.</li>
                                        <li class="jb-email"><span>Mail us:</span> <a href="mailto://info@yourdomain.com">info@yourdomain.com</a></li>
                                        <li class="jb-phone"><span>Phone:</span> <a href="tel://+123123321345">+123 321 345</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="jb-social_link">
                                    <ul>
                                        <li class="facebook">
                                            <a href="https://www.facebook.com/" data-toggle="tooltip" target="_blank" title="Facebook">
                                                <i class="fab fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li class="twitter">
                                            <a href="https://twitter.com/" data-toggle="tooltip" target="_blank" title="Twitter">
                                                <i class="fab fa-twitter-square"></i>
                                            </a>
                                        </li>
                                        <li class="youtube">
                                            <a href="https://www.youtube.com/" data-toggle="tooltip" target="_blank" title="Youtube">
                                                <i class="fab fa-youtube"></i>
                                            </a>
                                        </li>
                                        <li class="google-plus">
                                            <a href="https://www.plus.google.com/discover" data-toggle="tooltip" target="_blank" title="Google Plus">
                                                <i class="fab fa-google-plus"></i>
                                            </a>
                                        </li>
                                        <li class="instagram">
                                            <a href="https://rss.com/" data-toggle="tooltip" target="_blank" title="Instagram">
                                                <i class="fab fa-instagram"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Footer Widgets Information Area End Here -->
                        <!-- Begin Footer Widgets With Banner Area -->
                        <div class="col-lg-8">
                            <div class="footer-widgets-with_banner">
                                <div class="widgets-banner">
                                    <a href="#">
                                        <img src="image/footer/widgets-banner.jpg" alt="Widgets Banner">
                                    </a>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <div class="footer-widgets_title">
                                            <h5>Products</h5>
                                        </div>
                                        <div class="footer-widgets">
                                            <ul>
                                                <li><a href="#">Legal Notice</a></li>
                                                <li><a href="#">About Us</a></li>
                                                <li><a href="#">Prices Drop</a></li>
                                                <li><a href="#">New Products</a></li>
                                                <li><a href="#">Best sales</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <div class="footer-widgets_title">
                                            <h5>Our Company</h5>
                                        </div>
                                        <div class="footer-widgets">
                                            <ul>
                                                <li><a href="#">Legal Notice</a></li>
                                                <li><a href="#">About Us</a></li>
                                                <li><a href="#">Contact Us</a></li>
                                                <li><a href="#">Sitemap</a></li>
                                                <li><a href="#">Stores</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <div class="footer-widgets_title">
                                            <h5>Your Account</h5>
                                        </div>
                                        <div class="footer-widgets">
                                            <ul>
                                                <li><a href="#">Personal Info</a></li>
                                                <li><a href="#">Orders</a></li>
                                                <li><a href="#">Credit Slips</a></li>
                                                <li><a href="#">Addresses</a></li>
                                                <li><a href="#">My Wishlists</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Footer Widgets With Banner Area End Here -->
                    </div>
                </div>
            </div>
            <!-- JB's Footer Middle Area End Here -->
            <!-- Begin JB's Footer Bottom Area -->
            <div class="footer-bottom_area bg--night_rider">
                <div class="container">
                    <div class="row">
                        <!-- Begin Copyright Area -->
                        <div class="col-lg-6 col-md-6">
                            <div class="copyright">
                                <span>Copyright &copy; 2019 <a href="#">Jobaria.</a> All rights reserved.</span>
                            </div>
                        </div>
                        <!-- Copyright Area End Here -->
                        <!-- Begin Copyright Area -->
                        <div class="col-lg-6 col-md-6">
                            <div class="payment">
                                <a href="#">
                                    <img src="image/footer/payment.png" alt="JB's Payment Method">
                                </a>
                            </div>
                        </div>
                        <!-- Copyright Area End Here -->
                    </div>
                </div>
            </div>
            <!-- JB's Footer Bottom Area End Here -->
        </div>
        <!-- JB's Footer Area End Here -->

    </div>
    <!-- JB's Body Wrapper Area End Here -->
    <script src="${contextPath}/WebApplication1/js/plugins.min.js"></script>
    <script src="${contextPath}/WebApplication1/js/ajax-mail.js"></script>
    <script src="${contextPath}/WebApplication1/js/main.js"></script>
</body>
</html>