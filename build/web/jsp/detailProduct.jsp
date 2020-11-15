<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">


<!-- Mirrored from demo.hasthemes.com/jobaria-preview-v2/jobaria/single-product.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Aug 2020 11:38:08 GMT -->
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Single Product || Jobaria - Digital Products Store eCommerce Bootstrap 4 Template</title>
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
                        <li class="active">Single Product</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- JB's Breadcrumb Area End Here -->

        <!-- Begin JB's Single Product Area -->
        <div class="sp-area">
            <div class="container">
                <div class="sp-nav">
                    <div class="row">
                        <div class="col-lg-5 col-md-5">
                            <div class="sp-images">
                                <div class="sp-largeimages sp-imagezoom">
                                  
                                    <div class="sp-singleimage" data-src="/WebApplication1/jsp/image/${prod.imagesLink}">
                                        <img src="/WebApplication1/jsp/image/${prod.imagesLink}" alt="JB's Product Image">
                                    </div>
                                </div>
                                <div class="sp-thumbs">
                                    <div class="sp-singlethumb" if id="prod.productDetailId">
                                        <c:forEach items="${listIm}" var="im">
                                            <c:if test="${im.productDetail.productDetailId.equals(prod.productDetailId)}">
                                                <img src="/WebApplication1/jsp/image/<c:out value="${im.imagesLink}"></c:out>" alt="product thumb">
                                            </c:if>
                                            
                                        </c:forEach>
                                        
                                    </div>
                                   
                                </div>
                                   
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-7">
                            <div class="sp-content">
                                <div class="sp-heading">
                                    <h5><a href="#">${prod.product.productName}</a></h5>
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
                                <div class="price-box">
                                    <span class="new-price">${prod.price}</span>
                                   
                                </div>
                                <div class="short-desc">
                                    <p>${prod.viewPro}</p>
                                </div>
                             
                                <div class="">
                                    
                                    <ul>
                                        <li class="active"><a href="#"></a></li>
                                        <span>  <li><a href=""></a></li>Color: ${prod.color.colorName}</span>
                                        
                                    </ul>
                                </div>
                                <div class="quantity">
                                    <label>Quantity</label>
                                    <div class="cart-plus-minus">
                                        <input class="cart-plus-minus-box" value="${prod.quantity}" type="text">
                                        <div class="dec qtybutton"><i class="fa fa-angle-down"></i></div>
                                        <div class="inc qtybutton"><i class="fa fa-angle-up"></i></div>
                                    </div>
                                    <div class="jb-quantity-btn_area">
                                        <a class="jb-quantity_btn" href="cart.html">Add To Cart</a>
                                    </div>
                                </div>
                                <div class="jb-social_link jb-link_share">
                                    <span>Share</span>
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
                                    <div class="wishlist-link_share"><a href="wishlist.html"><i class="fa fa-heart"></i> Add to
                                            wishlist</a>
                                    </div>
                                </div>
                                <div class="block-reassurance">
                                    <ul>
                                        <li><i class="fas fa-check-square"></i>Security policy (edit with Customer reassurance
                                            module)</li>
                                        <li><i class="fa fa-truck"></i>Delivery policy (edit with Customer reassurance module)
                                        </li>
                                        <li><i class="fas fa-sync-alt"></i>Return policy (edit with Customer reassurance module)
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- JB's Single Product Area End Here -->

        <!-- Begin JB's Product Tab Area -->
        <div class="jb-product-tab_area sp-product-tab_area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product-tab">
                            <ul class="nav product-menu">
                                <li><a class="active" data-toggle="tab" href="#description"><span>Description</span></a></li>
                                <li><a data-toggle="tab" href="#product-details"><span>Product Details</span></a></li>
                                <li><a data-toggle="tab" href="#reviews"><span>Reviews</span></a></li>
                            </ul>
                        </div>
                        <div class="tab-content jb-tab_content">
                            <div id="description" class="tab-pane active show" role="tabpanel">
                                <div class="product-description">
                                    <p class="short-desc">${prod.product.descriptions}</p>
                                    <div class="product-desc_list">
                                        <ul>
                                            <li><strong>Product Highlights:</strong></li>
                                            <li>${prod.product.productName}</li>
                                            <li>${prod.product.title}</li>
                                            <li>${prod.color.colorName}</li>
                                             <li>${prod.viewPro}</li>
                                            
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div id="product-details" class="tab-pane" role="tabpanel">
                                <div class="product-related_stuff">
                                    <div class="product-manufacturer">
                                        <a href="#">
                                            <img src="image/single-product/1.jpg" alt="JB's Manufacturer Image">
                                        </a>
                                    </div>
                                    <div class="product-reference">
                                        <span><strong>Reference</strong>demo_1</span>
                                    </div>
                                    <div class="product-quantities">
                                        <span><strong>In stock</strong>299 Items</span>
                                    </div>
                                </div>
                            </div>
                            <div id="reviews" class="tab-pane" role="tabpanel">
                                <div class="product_comments_block">
                                    <div class="rating-box">
                                        <span>Grade</span>
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="comment_author_info same-stuff">
                                        <span>Jobaria</span>
                                        <em>25/03/2019</em>
                                    </div>
                                    <div class="comment_details same-stuff">
                                        <span class="user-id">User</span>
                                        <em class="user-comment">that's ok !</em>
                                    </div>
                                    <div class="review-btn_area">
                                        <a class="review-btn" href="#" data-toggle="modal" data-target="#mymodal">Write Your
                                            Review!</a>
                                    </div>
                                    <!-- Begin Quick View Feedback Form -->
                                    <div class="modal fade modal-wrapper quickview-feedback_form" id="mymodal">
                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                                <div class="modal-body">
                                                    <h3 class="review-page-title">Write Your Review</h3>
                                                    <div class="modal-inner-area row">
                                                        <div class="col-lg-6">
                                                            <div class="jb-review-product">
                                                                <img src="image/product/large-size/1.jpg" alt="JB's Product">
                                                                <div class="jb-review-product-desc">
                                                                    <p class="jb-product-name"> <strong>Janon vista fhd 4k
                                                                            camcorder 2214c002</strong></p>
                                                                    <p>
                                                                        <span>Janon's first 4K UHD Camcorder, the GX10 has a
                                                                            compact and portable design that delivers
                                                                            outstanding video quality with remarkable detail.
                                                                            With a combination of incredible features and ...
                                                                        </span>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="jb-review-content">
                                                                <!-- Begin Feedback Area -->
                                                                <div class="feedback-area">
                                                                    <div class="feedback">
                                                                        <h3 class="feedback-title">Our Feedback</h3>
                                                                        <form action="#">
                                                                            <p class="your-opinion">
                                                                                <label>Your Rating</label>
                                                                                <span>
                                                                                    <select class="star-rating">
                                                                                        <option value="1">1</option>
                                                                                        <option value="2">2</option>
                                                                                        <option value="3">3</option>
                                                                                        <option value="4">4</option>
                                                                                        <option value="5">5</option>
                                                                                    </select>
                                                                                </span>
                                                                            </p>
                                                                            <p class="feedback-form">
                                                                                <label for="feedback">Your Review</label>
                                                                                <textarea id="feedback" name="comment" cols="45" rows="8" aria-required="true"></textarea>
                                                                            </p>
                                                                            <div class="feedback-input">
                                                                                <p class="feedback-form-author">
                                                                                    <label for="author">Name<span
                                                                                            class="required">*</span>
                                                                                    </label>
                                                                                    <input id="author" name="author" value="" size="30" aria-required="true" type="text">
                                                                                </p>
                                                                                <p class="feedback-form-author feedback-form-email">
                                                                                    <label for="email">Email<span
                                                                                            class="required">*</span>
                                                                                    </label>
                                                                                    <input id="email" name="email" value="" size="30" aria-required="true" type="text">
                                                                                    <span class="required-fields"><sub>*</sub> Required
                                                                                        fields</span>
                                                                                </p>
                                                                                <div class="feedback-inner_btn">
                                                                                    <a href="#" class="close" data-dismiss="modal" aria-label="Close">Close</a>
                                                                                    <a href="#">Submit</a>
                                                                                </div>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                                <!-- Feedback Area End Here -->
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Quick View Feedback Form Area End Here -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- JB's Product Tab Area End Here -->

        <!-- Begin Single Product Slider Area -->
        <div class="jb-product-slider_area sp-product-slider_area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section_title-2">
                            <h4>12 other products in the same category:</h4>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="jb-product_slider">
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
                                    <div class="jb-product_content">
                                        <div class="product-desc_info">
                                            <div class="manufacturer">
                                                <a href="shop-left-sidebar.html">Studio Design</a>
                                            </div>
                                            <h6><a class="product-name" href="single-product.html">720 Degree Panoramic
                                                    HD 360...</a></h6>
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
                                                <span class="new-price">$29.51</span>
                                            </div>
                                        </div>
                                        <div class="add-actions">
                                            <ul>
                                                <li><a class="jb-wishlist_link" href="wishlist.html"><i
                                                            class="fa fa-heart"></i></a></li>
                                                <li><a class="jb-add_cart" href="cart.html"><i class="icon_cart_alt"></i>Add to
                                                        cart</a></li>
                                                <li><a class="jb-sp_link" href="single-product.html"><i
                                                            class="fa fa-copy"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- JB's Slide Item Area End Here -->
                            <!-- Begin JB's Slide Item Area -->
                            <div class="jb-slide-item">
                                <div class="jb-single_product">
                                    <div class="product-img">
                                        <a href="single-product.html">
                                            <img src="image/product/medium-size/1-6.jpg" alt="JB's Product Image">
                                        </a>
                                        <span class="sticker">New</span>
                                        <div><a href="#" title="Quick View" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-search"></i></a></div>
                                    </div>
                                    <div class="jb-product_content">
                                        <div class="product-desc_info">
                                            <div class="manufacturer">
                                                <a href="shop-left-sidebar.html">Studio Design</a>
                                            </div>
                                            <h6><a class="product-name" href="single-product.html">Xail 9.7" 128GB iPad
                                                    -...</a></h6>
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
                                                <span class="new-price">$29.00</span>
                                            </div>
                                        </div>
                                        <div class="add-actions">
                                            <ul>
                                                <li><a class="jb-wishlist_link" href="wishlist.html"><i
                                                            class="fa fa-heart"></i></a></li>
                                                <li><a class="jb-add_cart" href="cart.html"><i class="icon_cart_alt"></i>Add to
                                                        cart</a></li>
                                                <li><a class="jb-sp_link" href="single-product.html"><i
                                                            class="fa fa-copy"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- JB's Slide Item Area End Here -->
                            <!-- Begin JB's Slide Item Area -->
                            <div class="jb-slide-item">
                                <div class="jb-single_product">
                                    <div class="product-img">
                                        <a href="single-product.html">
                                            <img src="image/product/medium-size/1-1.jpg" alt="JB's Product Image">
                                        </a>
                                        <span class="sticker">New</span>
                                        <span class="sticker-2">-10%</span>
                                        <div><a href="#" title="Quick View" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-search"></i></a></div>
                                    </div>
                                    <div class="jb-product_content">
                                        <div class="product-desc_info">
                                            <div class="manufacturer">
                                                <a href="shop-left-sidebar.html">Studio Design</a>
                                            </div>
                                            <h6><a class="product-name" href="single-product.html">Janon vista fhd
                                                    4k...</a></h6>
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
                                                <span class="old-price">$23.90</span>
                                                <span class="new-price">$21.51</span>
                                            </div>
                                        </div>
                                        <div class="add-actions">
                                            <ul>
                                                <li><a class="jb-wishlist_link" href="wishlist.html"><i
                                                            class="fa fa-heart"></i></a></li>
                                                <li><a class="jb-add_cart" href="cart.html"><i class="icon_cart_alt"></i>Add to
                                                        cart</a></li>
                                                <li><a class="jb-sp_link" href="single-product.html"><i
                                                            class="fa fa-copy"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- JB's Slide Item Area End Here -->
                            <!-- Begin JB's Slide Item Area -->
                            <div class="jb-slide-item">
                                <div class="jb-single_product">
                                    <div class="product-img">
                                        <a href="single-product.html">
                                            <img src="image/product/medium-size/1-7.jpg" alt="JB's Product Image">
                                        </a>
                                        <span class="sticker">New</span>
                                        <div><a href="#" title="Quick View" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-search"></i></a></div>
                                    </div>
                                    <div class="jb-product_content">
                                        <div class="product-desc_info">
                                            <div class="manufacturer">
                                                <a href="shop-left-sidebar.html">Studio Design</a>
                                            </div>
                                            <h6><a class="product-name" href="single-product.html">Sanai Smartphone</a>
                                            </h6>
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
                                                <span class="new-price">$18.90</span>
                                            </div>
                                        </div>
                                        <div class="add-actions">
                                            <ul>
                                                <li><a class="jb-wishlist_link" href="wishlist.html"><i
                                                            class="fa fa-heart"></i></a></li>
                                                <li><a class="jb-add_cart" href="cart.html"><i class="icon_cart_alt"></i>Add to
                                                        cart</a></li>
                                                <li><a class="jb-sp_link" href="single-product.html"><i
                                                            class="fa fa-copy"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- JB's Slide Item Area End Here -->
                            <!-- Begin JB's Slide Item Area -->
                            <div class="jb-slide-item">
                                <div class="jb-single_product">
                                    <div class="product-img">
                                        <a href="single-product.html">
                                            <img src="image/product/medium-size/1-8.jpg" alt="JB's Product Image">
                                        </a>
                                        <span class="sticker">New</span>
                                        <div><a href="#" title="Quick View" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-search"></i></a></div>
                                    </div>
                                    <div class="jb-product_content">
                                        <div class="product-desc_info">
                                            <div class="manufacturer">
                                                <a href="shop-left-sidebar.html">Studio Design</a>
                                            </div>
                                            <h6><a class="product-name" href="single-product.html">Meito 12.2" Pentium,
                                                    4GB,...</a></h6>
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
                                                <span class="new-price">$81.90</span>
                                            </div>
                                        </div>
                                        <div class="add-actions">
                                            <ul>
                                                <li><a class="jb-wishlist_link" href="wishlist.html"><i
                                                            class="fa fa-heart"></i></a></li>
                                                <li><a class="jb-add_cart" href="cart.html"><i class="icon_cart_alt"></i>Add to
                                                        cart</a></li>
                                                <li><a class="jb-sp_link" href="single-product.html"><i
                                                            class="fa fa-copy"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- JB's Slide Item Area End Here -->
                            <!-- Begin JB's Slide Item Area -->
                            <div class="jb-slide-item">
                                <div class="jb-single_product">
                                    <div class="product-img">
                                        <a href="single-product.html">
                                            <img src="image/product/medium-size/1-9.jpg" alt="JB's Product Image">
                                        </a>
                                        <span class="sticker">New</span>
                                        <div><a href="#" title="Quick View" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-search"></i></a></div>
                                    </div>
                                    <div class="jb-product_content">
                                        <div class="product-desc_info">
                                            <div class="manufacturer">
                                                <a href="shop-left-sidebar.html">Studio Design</a>
                                            </div>
                                            <h6><a class="product-name" href="single-product.html">Xailbox 4 Pro 1TB
                                                    Star...</a></h6>
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
                                                <span class="new-price">$65.00</span>
                                            </div>
                                        </div>
                                        <div class="add-actions">
                                            <ul>
                                                <li><a class="jb-wishlist_link" href="wishlist.html"><i
                                                            class="fa fa-heart"></i></a></li>
                                                <li><a class="jb-add_cart" href="cart.html"><i class="icon_cart_alt"></i>Add to
                                                        cart</a></li>
                                                <li><a class="jb-sp_link" href="single-product.html"><i
                                                            class="fa fa-copy"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- JB's Slide Item Area End Here -->
                            <!-- Begin JB's Slide Item Area -->
                            <div class="jb-slide-item">
                                <div class="jb-single_product">
                                    <div class="product-img">
                                        <a href="single-product.html">
                                            <img src="image/product/medium-size/1-2.jpg" alt="JB's Product Image">
                                        </a>
                                        <span class="sticker">New</span>
                                        <div><a href="#" title="Quick View" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-search"></i></a></div>
                                    </div>
                                    <div class="jb-product_content">
                                        <div class="product-desc_info">
                                            <div class="manufacturer">
                                                <a href="shop-left-sidebar.html">Studio Design</a>
                                            </div>
                                            <h6><a class="product-name" href="single-product.html">Xail G120 32GB IOS
                                                    10...</a></h6>
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
                                                <span class="new-price">$999.00</span>
                                            </div>
                                        </div>
                                        <div class="add-actions">
                                            <ul>
                                                <li><a class="jb-wishlist_link" href="wishlist.html"><i
                                                            class="fa fa-heart"></i></a></li>
                                                <li><a class="jb-add_cart" href="cart.html"><i class="icon_cart_alt"></i>Add to
                                                        cart</a></li>
                                                <li><a class="jb-sp_link" href="single-product.html"><i
                                                            class="fa fa-copy"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- JB's Slide Item Area End Here -->
                            <!-- Begin JB's Slide Item Area -->
                            <div class="jb-slide-item">
                                <div class="jb-single_product">
                                    <div class="product-img">
                                        <a href="single-product.html">
                                            <img src="image/product/medium-size/1-3.jpg" alt="JB's Product Image">
                                        </a>
                                        <span class="sticker">New</span>
                                        <div><a href="#" title="Quick View" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-search"></i></a></div>
                                    </div>
                                    <div class="jb-product_content">
                                        <div class="product-desc_info">
                                            <div class="manufacturer">
                                                <a href="shop-left-sidebar.html">Studio Design</a>
                                            </div>
                                            <h6><a class="product-name" href="single-product.html">Full HD 8GB Flash
                                                    Memory...</a></h6>
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
                                                <span class="new-price">$11.90</span>
                                            </div>
                                        </div>
                                        <div class="add-actions">
                                            <ul>
                                                <li><a class="jb-wishlist_link" href="wishlist.html"><i
                                                            class="fa fa-heart"></i></a></li>
                                                <li><a class="jb-add_cart" href="cart.html"><i class="icon_cart_alt"></i>Add to
                                                        cart</a></li>
                                                <li><a class="jb-sp_link" href="single-product.html"><i
                                                            class="fa fa-copy"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- JB's Slide Item Area End Here -->
                            <!-- Begin JB's Slide Item Area -->
                            <div class="jb-slide-item">
                                <div class="jb-single_product">
                                    <div class="product-img">
                                        <a href="single-product.html">
                                            <img src="image/product/medium-size/1-4.jpg" alt="JB's Product Image">
                                        </a>
                                        <span class="sticker">New</span>
                                        <span class="sticker-2">-10%</span>
                                        <div><a href="#" title="Quick View" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-search"></i></a></div>
                                    </div>
                                    <div class="jb-product_content">
                                        <div class="product-desc_info">
                                            <div class="manufacturer">
                                                <a href="shop-left-sidebar.html">Studio Design</a>
                                            </div>
                                            <h6><a class="product-name" href="single-product.html">HD Video Recording
                                                    PJ...</a></h6>
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
                                                <span class="old-price">$18.90</span>
                                                <span class="new-price">$17.01</span>
                                            </div>
                                        </div>
                                        <div class="add-actions">
                                            <ul>
                                                <li><a class="jb-wishlist_link" href="wishlist.html"><i
                                                            class="fa fa-heart"></i></a></li>
                                                <li><a class="jb-add_cart" href="cart.html"><i class="icon_cart_alt"></i>Add to
                                                        cart</a></li>
                                                <li><a class="jb-sp_link" href="single-product.html"><i
                                                            class="fa fa-copy"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- JB's Slide Item Area End Here -->
                            <!-- Begin JB's Slide Item Area -->
                            <div class="jb-slide-item">
                                <div class="jb-single_product">
                                    <div class="product-img">
                                        <a href="single-product.html">
                                            <img src="image/product/medium-size/1-10.jpg" alt="JB's Product Image">
                                        </a>
                                        <span class="sticker">New</span>
                                        <div><a href="#" title="Quick View" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-search"></i></a></div>
                                    </div>
                                    <div class="jb-product_content">
                                        <div class="product-desc_info">
                                            <div class="manufacturer">
                                                <a href="shop-left-sidebar.html">Studio Design</a>
                                            </div>
                                            <h6><a class="product-name" href="single-product.html">16 GB Grade A
                                                    Unlocked...</a></h6>
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
                                                <span class="new-price">$35.00</span>
                                            </div>
                                        </div>
                                        <div class="add-actions">
                                            <ul>
                                                <li><a class="jb-wishlist_link" href="wishlist.html"><i
                                                            class="fa fa-heart"></i></a></li>
                                                <li><a class="jb-add_cart" href="cart.html"><i class="icon_cart_alt"></i>Add to
                                                        cart</a></li>
                                                <li><a class="jb-sp_link" href="single-product.html"><i
                                                            class="fa fa-copy"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- JB's Slide Item Area End Here -->
                            <!-- Begin JB's Slide Item Area -->
                            <div class="jb-slide-item">
                                <div class="jb-single_product">
                                    <div class="product-img">
                                        <a href="single-product.html">
                                            <img src="image/product/medium-size/1-11.jpg" alt="JB's Product Image">
                                        </a>
                                        <span class="sticker">New</span>
                                        <div><a href="#" title="Quick View" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-search"></i></a></div>
                                    </div>
                                    <div class="jb-product_content">
                                        <div class="product-desc_info">
                                            <div class="manufacturer">
                                                <a href="shop-left-sidebar.html">Studio Design</a>
                                            </div>
                                            <h6><a class="product-name" href="single-product.html">SanaFuel Wireless
                                                    Over-Ear...</a></h6>
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
                                                <span class="new-price">$31.21</span>
                                            </div>
                                        </div>
                                        <div class="add-actions">
                                            <ul>
                                                <li><a class="jb-wishlist_link" href="wishlist.html"><i
                                                            class="fa fa-heart"></i></a></li>
                                                <li><a class="jb-add_cart" href="cart.html"><i class="icon_cart_alt"></i>Add to
                                                        cart</a></li>
                                                <li><a class="jb-sp_link" href="single-product.html"><i
                                                            class="fa fa-copy"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- JB's Slide Item Area End Here -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Single Product Slider Area End Here -->

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

        <!-- Begin JB's Modal Area -->
        <div class="modal fade modal-wrapper" id="exampleModalCenter">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <div class="modal-inner-area sp-area row">
                            <div class="col-lg-5 col-md-6 col-sm-6">
                                <div class="sp-images">
                                    <div class="sp-largeimages">
                                        <div class="sp-singleimage">
                                            <img src="image/product/large-size/1.jpg" alt="JB's Product Image">
                                        </div>
                                        <div class="sp-singleimage">
                                            <img src="image/product/large-size/2.jpg" alt="JB's Product Image">
                                        </div>
                                        <div class="sp-singleimage">
                                            <img src="image/product/large-size/3.jpg" alt="JB's Product Image">
                                        </div>
                                        <div class="sp-singleimage">
                                            <img src="image/product/large-size/4.jpg" alt="JB's Product Image">
                                        </div>
                                        <div class="sp-singleimage">
                                            <img src="image/product/large-size/5.jpg" alt="JB's Product Image">
                                        </div>
                                    </div>
                                    <div class="sp-thumbs">
                                        <div class="sp-singlethumb">
                                            <img src="image/product/small-size/1.jpg" alt="product thumb">
                                        </div>
                                        <div class="sp-singlethumb">
                                            <img src="image/product/small-size/2.jpg" alt="product thumb">
                                        </div>
                                        <div class="sp-singlethumb">
                                            <img src="image/product/small-size/3.jpg" alt="product thumb">
                                        </div>
                                        <div class="sp-singlethumb">
                                            <img src="image/product/small-size/4.jpg" alt="product thumb">
                                        </div>
                                        <div class="sp-singlethumb">
                                            <img src="image/product/small-size/5.jpg" alt="product thumb">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-7 col-md-6 col-sm-6">
                                <div class="sp-content">
                                    <div class="sp-heading">
                                        <h5><a href="#">Janon vista fhd 4k</a></h5>
                                    </div>
                                    <span class="reference">Reference: demo_1</span>
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
                                        <span class="new-price">$23.90</span>
                                        <span class="old-price">$21.51</span>
                                    </div>
                                    <div class="short-desc">
                                        <p>Janon's first 4K UHD Camcorder, the GX10 has a compact and portable design that delivers outstanding video
                                            quality with remarkable detail. With a combination of incredible features and functionality, the GX10 is the
                                            ideal camcorder for aspiring filmmakers.</p>
                                    </div>
                                    <div class="quantity">
                                        <label>Quantity</label>
                                        <div class="cart-plus-minus">
                                            <input class="cart-plus-minus-box" value="1" type="text">
                                            <div class="dec qtybutton"><i class="fa fa-angle-down"></i></div>
                                            <div class="inc qtybutton"><i class="fa fa-angle-up"></i></div>
                                        </div>
                                        <div class="jb-quantity-btn_area">
                                            <a class="jb-quantity_btn" href="cart.html">Add To Cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="jb-social_link jb-link_share">
                        <span>Share</span>
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
                        <div class="wishlist-link_share"><a href="wishlist.html"><i class="fa fa-heart"></i> Add to wishlist</a></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- JB's Modal Area End Here -->

    </div>
    <!-- JB's Body Wrapper Area End Here -->
    <script src="${contextPath}/WebApplication1/js/plugins.min.js"></script>
    <script src="${contextPath}/WebApplication1/js/ajax-mail.js"></script>
    <script src="${contextPath}/WebApplication1/js/main.js"></script>
</body>


<!-- Mirrored from demo.hasthemes.com/jobaria-preview-v2/jobaria/single-product.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Aug 2020 11:38:08 GMT -->
</html>