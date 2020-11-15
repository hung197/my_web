/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.controller;

import bkap.entity.Rom;
import bkap.model.RomModel;
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
@RequestMapping(value = "/romController")
public class RomController {
    private RomModel rModel;

    public RomController() {
        rModel = new RomModel();
    }
    @RequestMapping(value= "/getAllRom")
    public ModelAndView getAllColor(){
        ModelAndView mav = new ModelAndView("Rom");
        List<Rom> listR = rModel.getAllRom();
        mav.addObject("listR", listR);
        return mav;
    }
    @RequestMapping(value="/initInsertRom", method = RequestMethod.GET)
    public ModelAndView initInsertRom(){
        ModelAndView mav = new ModelAndView("NewRom");
        Rom romNew = new Rom();
        mav.addObject("romNew", romNew);
        return mav;
    }
    @RequestMapping(value="/insertRom", method = RequestMethod.POST)
    public String insertRom(Rom romNew){
        boolean check = rModel.insertRom(romNew);
        if (check) {
            return "redirect:getAllRom.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/initUpdateRom", method = RequestMethod.GET)
    public ModelAndView initUpdateColor(int romId){
        ModelAndView mav = new ModelAndView("UpdateRom");
        Rom romUpdate = rModel.getRomById(romId);
        mav.addObject("romUpdate",romUpdate);
        return mav;
    }
    @RequestMapping(value = "/updateRom", method = RequestMethod.POST)
    public String UpdateRom(Rom romUpdate){
     boolean check = rModel.UpdateRom(romUpdate);
        if (check) {
           return "redirect:getAllRom.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value = "/deleteRom")
    public String deleteRom(int romId){
            boolean check = rModel.deleteRom(romId);
            if (check) {
            return "redirect:getAllRom.htm";
        }else{
                return "error";
            }
    }
}
