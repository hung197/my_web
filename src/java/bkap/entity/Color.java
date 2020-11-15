package bkap.entity;
// Generated Oct 26, 2020 8:40:34 PM by Hibernate Tools 4.3.1


import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Color generated by hbm2java
 */
public class Color  implements java.io.Serializable {


     private int colorId;
     private String colorName;
     private Boolean colorStatus;
     private Set productDetails = new HashSet(0);

    public Color() {
    }

	
    public Color(int colorId) {
        this.colorId = colorId;
    }
    public Color(int colorId, String colorName, Boolean colorStatus, Set productDetails) {
       this.colorId = colorId;
       this.colorName = colorName;
       this.colorStatus = colorStatus;
       this.productDetails = productDetails;
    }
   
    public int getColorId() {
        return this.colorId;
    }
    
    public void setColorId(int colorId) {
        this.colorId = colorId;
    }
    public String getColorName() {
        return this.colorName;
    }
    
    public void setColorName(String colorName) {
        this.colorName = colorName;
    }
    public Boolean getColorStatus() {
        return this.colorStatus;
    }
    
    public void setColorStatus(Boolean colorStatus) {
        this.colorStatus = colorStatus;
    }
    public Set getProductDetails() {
        return this.productDetails;
    }
    
    public void setProductDetails(Set productDetails) {
        this.productDetails = productDetails;
    }




}


