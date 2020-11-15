/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.controller;

import bkap.entity.Images;
import bkap.entity.ProductDetail;
import bkap.model.ImagesModel;
import bkap.model.ProductDetailModel;
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
@RequestMapping(value = "/imagesComntroller")
public class ImagesController {
    private ImagesModel imModel;
    private ProductDetailModel ProDetailModel;

    public ImagesController() {
        imModel= new ImagesModel();
        ProDetailModel = new ProductDetailModel();
    }
    @RequestMapping(value = "/getAllImages")
     public ModelAndView getAllImages(){
        ModelAndView mav = new ModelAndView("Images");
        List<Images> listImag = imModel.getAllImmages();
        mav.addObject("listImag", listImag);
        return mav;
    }
    @RequestMapping(value="/initInsertImages", method = RequestMethod.GET)
    public ModelAndView initInsert(){
        ModelAndView mav = new ModelAndView("NewImages");
        Images ImNew = new Images();
        mav.addObject("ImNew", ImNew);
        //get danh sach danh muc san pham --> set mav
        List<ProductDetail> listProDe = ProDetailModel.getAllProductDetail();
        mav.addObject("listProDe", listProDe);
        return mav;
    }
    @RequestMapping(value="/insertImages", method = RequestMethod.POST)
    public String insertProduct(Images ImNew){
        boolean check =imModel.insertImages(ImNew);
        if (check) {
            return "redirect:getAllImages.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/initUpdateImages", method = RequestMethod.GET)
    public ModelAndView initUpdateImages(int imagesId){
        ModelAndView mav = new ModelAndView("UpdateImages");
        Images imUpdate = imModel.getImagesById(imagesId);
        mav.addObject("imUpdate",imUpdate);
         List<ProductDetail> listProDe = ProDetailModel.getAllProductDetail();
        mav.addObject("listProDe", listProDe);
        return mav;
    }
    @RequestMapping(value = "/updateImages", method = RequestMethod.POST)
    public String UpdateImages(Images ImUpdate){
     boolean check = imModel.updateImages(ImUpdate);
        if (check) {
             return "redirect:getAllImages.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value = "/deleteImages")
    public String deleteProduct(int imagesId){
        boolean check = imModel.deleteImages(imagesId);
        if (check) {
            return "redirect:getAllImages.htm";
        }else{
            return "error";
        }
    }
}
