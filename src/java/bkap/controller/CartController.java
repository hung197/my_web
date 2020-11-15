/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.controller;

import bkap.entity.Cart;
import bkap.entity.ProductDetail;
import bkap.model.ProductDetailModel;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



/**
 *
 * @author Windows 10
 */
@Controller
@RequestMapping(value = "/cartController")
public class CartController {

    private ProductDetailModel prodeModel;

    public CartController() {
        prodeModel = new ProductDetailModel();
    }
    @RequestMapping(value = "/getCart")
    public ModelAndView getCart(){
        ModelAndView mv = new ModelAndView("ShoppingCart");
        return mv;
    }

    @RequestMapping(value = "/addCart")
    public ModelAndView addCart(HttpSession session, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("ShoppingCart");
        // lay listCart o trong session
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        // lay ma san pham ma khach hang muon mua o request
     
        int productDetailId = Integer.parseInt(request.getParameter("productDetailId"));
        // kiem tra list cart da ton tai trong session
        ProductDetail proDe = prodeModel.getProductDetailById(productDetailId);
        if (listCart == null) {
            // nguoi  dung chua mua hang
            // khoi tao list cart
            listCart = new ArrayList<>();
            // lay thong tin san pham ma khach hang muon mua 

            // khoi tao hoa don chi tiet cho khach hang
            Cart cart = new Cart(proDe, 1);
            // add hoa don chi tiest vao listCart
            listCart.add(cart);
        } else {
            // nguoi dung da mua hang 
            // kiem tra san pham do da co trong hoa don chua?
            boolean checkExits = false;
            for (Cart cart : listCart) {
                if(cart.getProductDetail().getProductDetailId()== productDetailId) {
                    checkExits = true;
                    break;
                }
            }
            if (checkExits) {
                // san pham muon mua da ton tai  trong don hang
                for (int i = 0; i < listCart.size(); i++) {
                    if (listCart.get(i).getProductDetail().getProductDetailId()==productDetailId) {
                        // cong so luong len 1
                        listCart.get(i).setQuantity(listCart.get(i).getQuantity() + 1);
                        break;
                    }
                }
            } else {
                // san pham chua ton tai
                Cart cart = new Cart(proDe, 1);
                listCart.add(cart);

            }
        }
        // add listCart vao session
        session.setAttribute("listCart", listCart);
        // tinh ton tien cua hoa don va add va session
        session.setAttribute("tongTien", sumAmout(listCart));
        return mav;
    }

    public int sumAmout(List<Cart> listCart) {
        int sum = 0;
        for (Cart cart : listCart) {
            sum += cart.getQuantity() * (cart.getProductDetail().getPrice()-cart.getProductDetail().getPrice()*cart.getProductDetail().getDiscount()/100);
        }
        return sum;
    }

    @RequestMapping(value = "/updateQuantity", method = RequestMethod.POST)
    public String updateQuantity(HttpSession session, HttpServletRequest request) {
        // lay list cart tu session
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        // lay mang so luong cua tung hoa don chi tiet trong request
        String[] arrQuantity = request.getParameterValues("quantity");
        // cap nhap so luong cua cac don hang chi tiet
        for (int i = 0; i < listCart.size(); i++) {
            listCart.get(i).setQuantity(Integer.parseInt(arrQuantity[i]));
        }
        // add listCart vao session
        session.setAttribute("listCart", listCart);
        // tinh lai tong tien rooi add vao session
        session.setAttribute("tongTien", sumAmout(listCart));
        return "ShoppingCart";
    }

    @RequestMapping(value = "/deleteCart")
   public ModelAndView DeleteCart(HttpSession session,HttpServletRequest request)
    {
        ModelAndView mav = new ModelAndView("ShoppingCart");
         //lay ma sp can xoa khoi hoa don
        String productDetailId = request.getParameter("productDetailId");
        //lay listcart tu session
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        //xoa productId ra khoi listcart
        for (int i = 0; i < listCart.size(); i++) {
            if (listCart.get(i).getProductDetail().getProductDetailId()== Integer.parseInt(productDetailId)) {
                listCart.remove(i).getProductDetail().getProductDetailId();
                break;
            }
        }
        // add listCart vao session
        session.setAttribute("listCart", listCart);
        // tinh tong tien cua hoa don ca add session
        session.setAttribute("tongTien", sumAmout(listCart));
        return mav;
    }
}
