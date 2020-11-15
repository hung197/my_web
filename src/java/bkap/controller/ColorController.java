/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.controller;

import bkap.entity.Color;
import bkap.model.ColorModel;
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
@RequestMapping(value = "/colorController")
public class ColorController {
    private ColorModel clModel;

    public ColorController() {
        clModel= new ColorModel();
    }
    @RequestMapping(value= "/getAllColor")
    public ModelAndView getAllColor(){
        ModelAndView mav = new ModelAndView("Color");
        List<Color> listCl = clModel.getAllColor();
        mav.addObject("listCl", listCl);
        return mav;
    }
    @RequestMapping(value="/initInsertColor", method = RequestMethod.GET)
    public ModelAndView initColor(){
        ModelAndView mav = new ModelAndView("NewColor");
        Color clNew = new Color();
        mav.addObject("clNew", clNew);
        return mav;
    }
    @RequestMapping(value="/insertColor", method = RequestMethod.POST)
    public String insertColor(Color clNew){
        boolean check = clModel.insertColor(clNew);
        if (check) {
            return "redirect:getAllColor.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/initUpdateColor", method = RequestMethod.GET)
    public ModelAndView initUpdateColor(int colorId){
        ModelAndView mav = new ModelAndView("UpdateColor");
        Color clUpdate = clModel.getColorById(colorId);
        mav.addObject("clUpdate",clUpdate);
        return mav;
    }
    @RequestMapping(value = "/updateColor", method = RequestMethod.POST)
    public String UpdateColor(Color clUpdate){
     boolean check = clModel.UpdateColor(clUpdate);
        if (check) {
           return "redirect:getAllColor.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value = "/deleteColor")
    public String deleteColor(int colorId){
        boolean check = clModel.deleteColor(colorId);
        if (check) {
            return "redirect:getAllColor.htm";
        }else{
            return "error";
        }
    }
}
