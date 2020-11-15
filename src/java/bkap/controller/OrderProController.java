/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.controller;

import bkap.entity.OrderPro;
import bkap.entity.ProductDetail;
import bkap.entity.ShipType;
import bkap.entity.Users;
import bkap.model.OrderProModel;
import bkap.model.ProductDetailModel;
import bkap.model.ShipTypeModel;
import bkap.model.UserModel;
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
@RequestMapping(value = "/orderController")
public class OrderProController {
    private OrderProModel orModel;
    private UserModel usModel;
    private ShipTypeModel shipModel;
    private ProductDetailModel ProDeModel;
    public OrderProController() {
        orModel = new OrderProModel();
        usModel = new UserModel();
        shipModel = new ShipTypeModel();
        ProDeModel = new ProductDetailModel();
        
    }
     @RequestMapping(value= "/getAllOrderPro")
    public ModelAndView getAllOrderPro(){
        ModelAndView mav = new ModelAndView("OrderPro");
        List<OrderPro> listOr = orModel.getAllOrder();
        mav.addObject("listOr", listOr);
        //
        List<ProductDetail> listProDe = ProDeModel.getAllProductDetail();
        mav.addObject("listProDe", listProDe);
        return mav; 
    }
    @RequestMapping(value="/initInsertOrder", method = RequestMethod.GET)
    public ModelAndView initInsertOrderPro(){
        ModelAndView mav = new ModelAndView("NewOrderPro");
        OrderPro orNew = new OrderPro();
        mav.addObject("orNew", orNew);
        //get danh sach danh muc san pham --> set mav
        List<Users> listUser = usModel.getAllUsers();
        mav.addObject("listUser", listUser);
        //
        List<ShipType> listShip = shipModel.getAllShipType();
        mav.addObject("listShip", listShip);
        //
        
        return mav;
    }
    @RequestMapping(value="/insertOrderPro", method = RequestMethod.POST)
    public String insertOrderPro(OrderPro orNew){
        boolean check = orModel.insertOrderPro(orNew);
        if (check) {
            return "redirect:getAllOrderPro.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/initUpdateOrderPro", method = RequestMethod.GET)
    public ModelAndView initUpdateOrderPro(int orderId){
        ModelAndView mav = new ModelAndView("UpdateOrderPro");
        OrderPro orUpdate = orModel.getOrderProById(orderId);
        mav.addObject("orUpdate",orUpdate);
        return mav;
    }
    @RequestMapping(value = "/updateOrderPro", method = RequestMethod.POST)
    public String UpdateOrderPro(OrderPro orUpdate){
     boolean check = orModel.updateOrderPro(orUpdate);
        if (check) {
            return "redirect:getAllOrderPro.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value = "/deleteOrderPro")
    public String deleteOrderPro (int orderId){
        boolean check = orModel.deleteOrderPro(orderId);
        if (check) {
           return "redirect:getAllOrderPro.htm";
        }else{
            return "error";
        }
    }
}
