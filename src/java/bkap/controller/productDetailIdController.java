/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.controller;


import bkap.entity.Color;
import bkap.entity.Images;
import bkap.entity.Product;
import bkap.entity.ProductDetail;
import bkap.entity.Rom;
import bkap.model.ColorModel;
import bkap.model.ImagesModel;
import bkap.model.ProductDetailModel;
import bkap.model.ProductModel;
import bkap.model.RomModel;
import bkap.util.UpLoadFile;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Windows 10
 */
@Controller
@RequestMapping(value = "/productDetailController")
public class productDetailIdController {
    private ProductDetailModel proDeModel;
    private ProductModel proModel;
    private RomModel romModel;
    private ColorModel clModel;
    public productDetailIdController() {
        proDeModel = new ProductDetailModel();
        proModel = new ProductModel();
        romModel = new RomModel();
        clModel = new ColorModel();
    }
     @RequestMapping(value= "/getAllProductDetail")
    public ModelAndView getAllProductDetail(){
        ModelAndView mav = new ModelAndView("ProductDetail");
        List<ProductDetail> listProDe = proDeModel.getAllProductDetail();
        mav.addObject("listProDe", listProDe);
        return mav;
    }
    @RequestMapping(value = "/productDeNew")
    public ModelAndView getAllProDeNew(){
        ModelAndView mav = new ModelAndView("index");
        List<ProductDetail> listProDeNew = proDeModel.ProDeNew();
        mav.addObject("listProDeNew", listProDeNew);
        return mav;
    }
    @RequestMapping(value = "/productDeBestSell")
    public ModelAndView getAllProDeBestSell(){
        ModelAndView mav = new ModelAndView("index");
        List<ProductDetail> listProDeBestSell = proDeModel.ProDeBestSell();
            mav.addObject("listProDeBestSell", listProDeBestSell);
        return mav;
    }
    @RequestMapping(value="/initInsertProductDetail", method = RequestMethod.GET)
    public ModelAndView initInsertProductDetail(){
        ModelAndView mav = new ModelAndView("NewProductDetail");
        ProductDetail proDeNew = new ProductDetail();
        mav.addObject("proDeNew", proDeNew);
        List<Product> listPro = proModel.getAllProduct();
        mav.addObject("listPro",listPro);
        List<Rom> listRom = romModel.getAllRom();
        mav.addObject("listRom",listRom);
         List<Color> listCl = clModel.getAllColor();
        mav.addObject("listCl",listCl);
        return mav;
    }
    @RequestMapping(value="/insertProductDetail", method = RequestMethod.POST)
    public String insertProductDetail(ProductDetail proDeNew,HttpServletRequest request, @RequestParam(value = "imageMain") MultipartFile imageMain, @RequestParam(value = "imageOther") MultipartFile[] imageOther) throws IOException {
        
        proDeNew.setImagesLink(new UpLoadFile().saveImageToFolder(request, imageMain));
        String imgMain = proDeNew.getImagesLink();
        int lastIndexOfMain = imgMain.lastIndexOf("/");
        String fileMainName = imgMain.substring(lastIndexOfMain+1);
        proDeNew.setImagesLink(fileMainName);
        
        //Luu cac anh phu cua san pham vao thu muc va add duong dan anh phu vao danh sach anh phu cua san pham 
        List<Images> listImageOther = new ArrayList<>();
        for (MultipartFile other : imageOther) {
            //Khoi tao doi tuong ProductImages trong danh sach anh phu cua product
            Images proImg = new Images();
            proImg.setProductDetail(new ProductDetail(proDeNew.getProductDetailId()));
            proImg.setImagesLink(new UpLoadFile().saveImageToFolder(request, other)); 
            
            String imgUrl = proImg.getImagesLink();
            int lastIndexOf = imgUrl.lastIndexOf("/jsp/image");
            String fileName = imgUrl.substring(lastIndexOf+1);
            proImg.setImagesLink(fileName);
            
            listImageOther.add(proImg);
        }
        //Convert listImageOther to Set
        Set<Images> setImage = new HashSet(listImageOther);
        boolean check = proDeModel.insertProductDetail(proDeNew);
        if (check) {
            return "redirect:getAllProductDetail.htm";
        }else{
            return "error";
        }
    }
    @InitBinder
public void initBinder(WebDataBinder binder) {
    SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
    sdf.setLenient(true);
    binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
}
    @RequestMapping(value="/initUpdateProductDetail", method = RequestMethod.GET)
    public ModelAndView initUpdatePro(int productDetailId){
        ModelAndView mav = new ModelAndView("UpdateProductDetail");
        ProductDetail proDeUpdate = proDeModel.getProductDetailById(productDetailId);
        mav.addObject("proDeUpdate",proDeUpdate);
         List<Product> listPro = proModel.getAllProduct();
        mav.addObject("listPro",listPro);
        List<Rom> listRom = romModel.getAllRom();
        mav.addObject("listRom",listRom);
         List<Color> listCl = clModel.getAllColor();
        mav.addObject("listCl",listCl);
        return mav;
    }
     @RequestMapping(value = "/updateProductDetail", method = RequestMethod.POST)
    public String UpdateProductDetail(ProductDetail proDeUpdate){
     boolean check = proDeModel.updateProductDetail(proDeUpdate);
        if (check) {
             return "redirect:getAllProductDetail.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value = "/deleteProductDetail")
    public String deleteProduct(int productDetailId){
        boolean check = proDeModel.deleteProductDetail(productDetailId);
        if (check) {
             return "redirect:getAllProductDetail.htm";
        }else{
            return "error";
        }
    }
    
}
