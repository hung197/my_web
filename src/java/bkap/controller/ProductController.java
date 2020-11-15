/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.controller;

import bkap.entity.Category;
import bkap.entity.Product;
import bkap.entity.ProductDetail;
import bkap.model.CategoryModel;
import bkap.model.ProductDetailModel;
import bkap.model.ProductModel;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Windows 10
 */
@Controller
@RequestMapping(value = "/productController")
public class ProductController {

    private ProductModel proModel;
    private CategoryModel catModel;
    private ProductDetailModel proDeModel;

    public ProductController() {
        proModel = new ProductModel();
        catModel = new CategoryModel();
        proDeModel = new ProductDetailModel();
    }

    @RequestMapping(value = "/getAllProduct")
    public ModelAndView getAllProduct() {
        ModelAndView mav = new ModelAndView("Product");
        List<Product> listPro = proModel.getAllProduct();
        mav.addObject("listPro", listPro);
        return mav;
    }

    @RequestMapping(value = "/initInsertPro", method = RequestMethod.GET)
    public ModelAndView initInsert() {
        ModelAndView mav = new ModelAndView("NewProduct");
        Product proNew = new Product();
        mav.addObject("proNew", proNew);
        //get danh sach danh muc san pham --> set mav
        List<Category> listCat = catModel.getAllCategory();
        mav.addObject("listCat", listCat);
        return mav;
    }

    @RequestMapping(value = "/insertProduct", method = RequestMethod.POST)
    public String insertProduct(Product proNew) {
        boolean check = proModel.insertProduct(proNew);
        if (check) {
            return "redirect:getAllProduct.htm";
        } else {
            return "error";
        }
    }

    @RequestMapping(value = "/initUpdateProduct", method = RequestMethod.GET)
    public ModelAndView initUpdatePro(int productId) {
        ModelAndView mav = new ModelAndView("UpdateProduct");
        Product proUpdate = proModel.getProductById(productId);
        mav.addObject("proUpdate", proUpdate);
        List<Category> listCat = catModel.getAllCategory();
        mav.addObject("listCat", listCat);
        return mav;
    }

    @RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
    public String UpdateProduct(Product proUpdate) {
        boolean check = proModel.updateProduct(proUpdate);
        if (check) {
            return "redirect:getAllProduct.htm";
        } else {
            return "error";
        }
    }

    @RequestMapping(value = "/deleteProduct")
    public String deleteProduct(int productId) {
        boolean check = proModel.deleteProduct(productId);
        if (check) {
            return "redirect:getAllProduct.htm";
        } else {
            return "error";
        }
    }

    @RequestMapping(value = "/getProCat")
    public ModelAndView getProbyCatID(int categoryId) {
        ModelAndView mav = new ModelAndView("productByCategory");
        List<Category> listcat = catModel.getAllCategory();
        mav.addObject("listcat", listcat);

        List<ProductDetail> proDetail = proDeModel.getAllProductDetail();
        mav.addObject("proDetail", proDetail);

       List<ProductDetail> proDeSell = proDeModel.ProDeBestSell();
       mav.addObject("proDeSell", proDeSell);
       
       List<ProductDetail> proDeNew = proDeModel.ProDeNew();
       mav.addObject("proDeNew", proDeNew);
        
        List<Product> listProBy = proModel.getSPCatId(categoryId);
        mav.addObject("listProBy", listProBy);
        return mav;
    }
}
