/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.controller;

import bkap.entity.Banner;
import bkap.entity.Images;
import bkap.model.BannerModel;
import bkap.model.ImagesModel;
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
@RequestMapping(value = "/bannerController")
public class BannerController {
    private BannerModel banModel;
    private ImagesModel imModel;
    public BannerController() {
        banModel = new BannerModel();
        imModel = new ImagesModel();
        
    }
    @RequestMapping(value = "/getAllBanner")
     public ModelAndView getAllBanner(){
        ModelAndView mav = new ModelAndView("Banner");
        List<Banner> listBan = banModel.getAllBanner();
        mav.addObject("listBan", listBan);
        return mav;
    }
    @RequestMapping(value="/initInsertBanner", method = RequestMethod.GET)
    public ModelAndView initInsert(){
        ModelAndView mav = new ModelAndView("NewBanner");
        Banner banNew = new Banner();
        mav.addObject("banNew", banNew);
        //get danh sach danh muc san pham --> set mav
        List<Images> listImag = imModel.getAllImmages();
        mav.addObject("listImag", listImag);
        return mav;
    }
    @RequestMapping(value="/insertBanner", method = RequestMethod.POST)
    public String insertBanner(Banner banNew){
        boolean check =banModel.insertBanner(banNew);
        if (check) {
            return "redirect:getAllBanner.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/initUpdateBanner", method = RequestMethod.GET)
    public ModelAndView initUpdateImages(int bannerId){
        ModelAndView mav = new ModelAndView("UpdateBannner");
        Banner banUpdate =banModel.getBannerById(bannerId);
        mav.addObject("banUpdate",banUpdate);
        return mav;
    }
    @RequestMapping(value = "/updateBanner", method = RequestMethod.POST)
    public String UpdateBanner(Banner banUpdate){
     boolean check = banModel.updateBanner(banUpdate);
        if (check) {
                return "redirect:getAllBanner.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value = "/deleteBanner")
    public String deleteProduct(int bannerId){
        boolean check =banModel.deleteBanner(bannerId);
        if (check) {
              return "redirect:getAllBanner.htm";
        }else{
            return "error";
        }
    }
}
