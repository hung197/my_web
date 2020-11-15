/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.controller;

import bkap.entity.ShipType;
import bkap.model.ShipTypeModel;
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
@RequestMapping(value = "/shiptypeController")
public class ShipTypeController {
    private ShipTypeModel shipModel;

    public ShipTypeController() {
        shipModel = new ShipTypeModel();
    }
    @RequestMapping(value = "/getAllShipType")
    public ModelAndView getAllShipType(){
        ModelAndView mav = new ModelAndView("ShipType");
        List<ShipType> listShip = shipModel.getAllShipType();
        mav.addObject("listShip", listShip);
        return mav;
    }
     @RequestMapping(value = "/initInsertShiptype", method = RequestMethod.GET)
    public ModelAndView initInsertShipType(){
        ModelAndView mav = new ModelAndView("NewShipType");
        ShipType shipNew = new ShipType();
            mav.addObject("shipNew", shipNew);
        return mav;
    }
    @RequestMapping(value = "/insertShipType", method = RequestMethod.POST)
    public String insertUser(ShipType shipNew){
        boolean check = shipModel.insertShipType(shipNew);
        if (check) {
            return "redirect:getAllShipType.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value= "/initUpdateShipType", method = RequestMethod.GET)
    public ModelAndView initUpdateShipType(int shipId){
        ModelAndView mav = new ModelAndView("UpdateShipType");
        ShipType shipUpdate = shipModel.getShipTypeById(shipId);
        mav.addObject("shipUpdate",shipUpdate);
        return mav;
    }
    @RequestMapping(value = "/updateShipType", method = RequestMethod.POST)
    public String UpdateShipType(ShipType shipUpdate){
     boolean check = shipModel.UpdateShipType(shipUpdate);
        if (check) {
             return "redirect:getAllShipType.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value = "/deleteShipType")
    public String deleteShipType(int shipId){
        boolean check = shipModel.deleteShipType(shipId);
        if (check) {
             return "redirect:getAllShipType.htm";
        }else{
            return "error";
        }
    }
}
