/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.controller;

import bkap.entity.OrderDetail;
import bkap.entity.OrderPro;
import bkap.entity.Product;
import bkap.entity.ProductDetail;
import bkap.model.OrderDetailModel;
import bkap.model.OrderProModel;
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
@RequestMapping(value = "/orderDetailController")
public class OrderDetailController {
    private OrderDetailModel orDeModel;
    private ProductDetailModel proModel;
    private OrderProModel orModel;
    public OrderDetailController() {
        orDeModel = new OrderDetailModel();
        proModel = new ProductDetailModel();
        orModel = new OrderProModel();
    }
      @RequestMapping(value= "/getAllOrderDetail")
    public ModelAndView getAllOrderOrderDetail(){
        ModelAndView mav = new ModelAndView("OrderDetail");
        List<OrderDetail> listOrDe = orDeModel.getAllOrderDetail();
        mav.addObject("listOrDe", listOrDe);
        return mav; 
    }
    @RequestMapping(value="/initInsertOrderDetail", method = RequestMethod.GET)
    public ModelAndView initInsertOrderPro(){
        ModelAndView mav = new ModelAndView("NewOrderDetail");
        OrderDetail orDeNew = new OrderDetail();
        mav.addObject("orDeNew", orDeNew);
        //get danh sach danh muc san pham --> set mav
        List<ProductDetail> listProDe = proModel.getAllProductDetail();
        mav.addObject("listProDe", listProDe);
        //
        List<OrderPro> listOrPro = orModel.getAllOrder();
        mav.addObject("listOrPro", listOrPro);
        return mav;
    }
    @RequestMapping(value="/insertOrderDetail", method = RequestMethod.POST)
    public String insertOrderDetail(OrderDetail orDeNew){
        boolean check = orDeModel.insertOrderDetail(orDeNew);
        if (check) {
            return "redirect:getAllOrderDetail.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/initUpdateOrderDetail", method = RequestMethod.GET)
    public ModelAndView initUpdateOrderPro(int orderId){
        ModelAndView mav = new ModelAndView("UpdateOrderDetail");
        OrderDetail orDeUpdate = orDeModel.getOrderDetailProById(orderId);
        mav.addObject("orDeUpdate",orDeUpdate);
        return mav;
    }
    @RequestMapping(value = "/updateOrderDetail", method = RequestMethod.POST)
    public String UpdateOrderDetail(OrderDetail orDeUpdate){
     boolean check = orDeModel.updateOrderDetail(orDeUpdate);
        if (check) {
            return "redirect:getAllOrderDetail.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value = "/deleteOrderDetail")
    public String deleteOrderPro (int id){
        boolean check = orDeModel.deleteOrderDetail(id);
        if (check) {
           return "redirect:getAllOrderDetail.htm";
        }else{
            return "error";
        }
    }
}
