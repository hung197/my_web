/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.controller;

import bkap.entity.Category;
import bkap.entity.Images;
import bkap.entity.Product;
import bkap.entity.ProductDetail;
import bkap.model.CategoryModel;
import bkap.model.ImagesModel;
import bkap.model.ProductDetailModel;
import bkap.model.ProductModel;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Windows 10
 */
@Controller
@RequestMapping(value = "/indexController")
public class IndexController {
    private CategoryModel cateModel;
    private ProductDetailModel proDeModel;
    private ProductModel proMdel;
    private ImagesModel igModel;
   
     public IndexController() {
        cateModel= new CategoryModel();
       proDeModel = new ProductDetailModel();
       proMdel = new ProductModel();
       igModel = new ImagesModel();
    }
        @RequestMapping(value= "/getAll")
    public ModelAndView getAllCategory(){
        ModelAndView mav = new ModelAndView("index");
        List<Category> listCa = cateModel.getAllCategory();
        mav.addObject("listCa", listCa);
         
        List<ProductDetail> listProDeNew = proDeModel.ProDeNew();
        mav.addObject("listProDeNew",listProDeNew);
        
        List<Product> listPr = proMdel.getAllProduct();
        mav.addObject("listPr", listPr);
        
        List<ProductDetail> listProDe = proDeModel.getAllProductDetail();
        mav.addObject("listProDe", listProDe);
        
        List<ProductDetail> listProDeBestSell = proDeModel.ProDeBestSell();
        mav.addObject("listProDeBestSell",listProDeBestSell);
        
        List<Images> listImages = igModel.getAllImmages();
        mav.addObject("listImages",listImages);
        
       
        return mav;
    }
    @RequestMapping(value = "/DetailProduct")
   public ModelAndView getProductDetail(@RequestParam("productDetailId") int proDeId, Model model){
       ModelAndView mav = new ModelAndView("detailProduct");
       ProductDetail prod = proDeModel.getProductDetailById(proDeId);
       model.addAttribute("prod", prod);
       
       List<Images> listIm =igModel.getAllImmages();
       mav.addObject("listIm", listIm);
       return mav;
   }
   
    
   
}
