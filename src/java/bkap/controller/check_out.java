/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.controller;

import bkap.entity.Cart;
import bkap.entity.OrderDetail;
import bkap.entity.OrderDetailId;
import bkap.entity.OrderPro;
import bkap.entity.ProductDetail;
import bkap.entity.Users;
import bkap.model.OrderDetailModel;
import bkap.model.OrderProModel;
import bkap.model.ProductDetailModel;
import bkap.model.UserModel;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Windows 10
 */
@Controller
@RequestMapping(value = "/LoginRegisterController")
public class check_out {
private UserModel usModel;
private OrderProModel oProModel;
private OrderDetailModel orModel;
private ProductDetailModel proDeModel;
    public check_out() {
        usModel = new UserModel();
        oProModel = new OrderProModel();
        proDeModel = new ProductDetailModel();
        orModel = new OrderDetailModel();
    }
    @RequestMapping("/initOrderProduct")
    public String orderProduct(Model model, HttpSession session) {
        if (Customer1Online() == true) {
            List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
            boolean a = Customer1Online();
            Users u = usModel.getUserOnlineO();
            model.addAttribute("userod", u);
            session.setAttribute("listCart", listCart);
            session.setAttribute("totalAmount", sumAmount(listCart));
            return "check_out";
        } else {
            return "login";
        }
}

    public int sumAmount(List<Cart> listCart) {
        int totalAmount = 0;
        for (Cart cart : listCart) {
            totalAmount += cart.getQuantity() * cart.getProductDetail().getPrice();

        }
        return totalAmount;
    }

public boolean CustomerOffline() {
        List<Users> usersCheck = (List<Users>) usModel.getUserOnline();
        int c = usersCheck.size();
        if (c == 0) {
            return true;
        } else {
            return false;
        }
    }

    public boolean Customer1Online() {
        try {
            List<Users> usersCheck = (List<Users>) usModel.getUserOnline();
            int c = usersCheck.size();
            if (c == 1) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    @RequestMapping(value = "/orderPrpreOrderProductoduct")
    public String saveCart(@ModelAttribute("userod") Users u, HttpServletRequest request, HttpSession session) throws ParseException {
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");

        SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");//dd/MM/yyyy
        Date now = new Date();
        String strDate = s.format(now);
        Date d = s.parse(strDate);

//        String  [] sl=request.getParameterValues("quantity");
        List<Users> u1 = usModel.getUserOnline();
        Users u2 = u1.get(0);
        OrderPro od = new OrderPro();
        od.setUsers(u2);
        od.setCreated(new Date());
        od.setTotalAmount(sumAmount(listCart));
        od.setOrderStatus(Boolean.TRUE);
       
       
        boolean bl = oProModel.insertOrderPro(od);

        boolean bld = false;
        if (bl) {

            for (Cart oddl : listCart) {
                List<OrderPro> od1 = oProModel.getAllOrder();

                int proid = oddl.getProductDetail().getProductDetailId();
                ProductDetail p = proDeModel.getProductDetailById(proid);

                OrderPro od2 = od1.get(0);
                int sl = oddl.getQuantity();

                OrderDetailId oid = new OrderDetailId(od2.getOrderId(), proid);
                OrderDetail dt = new OrderDetail();
                dt.setId(oid);
                dt.setOrderPro(od2);
                dt.setProductDetail(p);
                dt.setQuantity(sl);

                boolean check = orModel.insertOrderDetail(dt);
                if(check){
                   return "redirect:/indexController/getAll.htm?error=Co loi khong dat hang duoc";
                }else{
                    return "redirect:/indexController/getAll.htm?success=Dat hang thanh cong";
                }          
        }
        }

        if (bl) {
            session.removeAttribute("listCart");
            return "redirect:/indexController/getAll.htm?success=Dat hang thanh cong";
        } else {
            return "redirect:/indexController/getAll.htm?error=Co loi khong dat hang duoc";
        }
    }
}
