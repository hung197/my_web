package bkap.entity;
// Generated Oct 26, 2020 8:40:34 PM by Hibernate Tools 4.3.1


import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

import java.util.HashSet;
import java.util.Set;

/**
 * ProductDetail generated by hbm2java
 */
public class ProductDetail  implements java.io.Serializable {


     private int productDetailId;
     private Color color;
     private Product product;
     private Rom rom;
     private String imagesLink;
     
     private Date created;
     private Integer discount;
     private String viewPro;
     private Float price;
     private Boolean productStatus;
     private Integer quantity;
     private Set orderDetails = new HashSet(0);
     private Set imageses = new HashSet(0);

    public ProductDetail() {
    }

	
    public ProductDetail(int productDetailId) {
        this.productDetailId = productDetailId;
    }
    public ProductDetail(int productDetailId, Color color, Product product, Rom rom, String imagesLink, Date created, Integer discount, String viewPro, Float price, Boolean productStatus, Integer quantity, Set orderDetails, Set imageses) {
       this.productDetailId = productDetailId;
       this.color = color;
       this.product = product;
       this.rom = rom;
       this.imagesLink = imagesLink;
       this.created = created;
       this.discount = discount;
       this.viewPro = viewPro;
       this.price = price;
       this.productStatus = productStatus;
       this.quantity = quantity;
       this.orderDetails = orderDetails;
       this.imageses = imageses;
    }
   
    public int getProductDetailId() {
        return this.productDetailId;
    }
    
    public void setProductDetailId(int productDetailId) {
        this.productDetailId = productDetailId;
    }
    public Color getColor() {
        return this.color;
    }
    
    public void setColor(Color color) {
        this.color = color;
    }
    public Product getProduct() {
        return this.product;
    }
    
    public void setProduct(Product product) {
        this.product = product;
    }
    public Rom getRom() {
        return this.rom;
    }
    
    public void setRom(Rom rom) {
        this.rom = rom;
    }
    public String getImagesLink() {
        return this.imagesLink;
    }
    
    public void setImagesLink(String imagesLink) {
        this.imagesLink = imagesLink;
    }
    public Date getCreated() {
        return this.created;
    }
    
    public void setCreated(Date created) {
        this.created = created;
    }
    public Integer getDiscount() {
        return this.discount;
    }
    
    public void setDiscount(Integer discount) {
        this.discount = discount;
    }
    public String getViewPro() {
        return this.viewPro;
    }
    
    public void setViewPro(String viewPro) {
        this.viewPro = viewPro;
    }
    public Float getPrice() {
        return this.price;
    }
    
    public void setPrice(Float price) {
        this.price = price;
    }
    public Boolean getProductStatus() {
        return this.productStatus;
    }
    
    public void setProductStatus(Boolean productStatus) {
        this.productStatus = productStatus;
    }
    public Integer getQuantity() {
        return this.quantity;
    }
    
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
    public Set getOrderDetails() {
        return this.orderDetails;
    }
    
    public void setOrderDetails(Set orderDetails) {
        this.orderDetails = orderDetails;
    }
    public Set getImageses() {
        return this.imageses;
    }
    
    public void setImageses(Set imageses) {
        this.imageses = imageses;
    }




}


