/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.controller;

import bkap.entity.Users;
import bkap.model.LoginModel;
import bkap.model.UserModel;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Windows 10
 */
@Controller
@RequestMapping(value = "/AdminController")
public class LoginController {
    private LoginModel logModel;
    private UserModel uModel;
    public LoginController() {
        logModel = new LoginModel();
        uModel = new UserModel();
    }
    
     @RequestMapping(value = "/initlogin", method = RequestMethod.GET)
    public ModelAndView getAllBner(){
       ModelAndView mav = new  ModelAndView("login"); 
       
       return mav;
    }
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public  String Login(HttpServletRequest request,@ModelAttribute(value = "tk")Users tk,ModelMap mm, HttpSession ss)throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		

		String userName = request.getParameter("userName");
                String passUser = request.getParameter("passUser");
                
                String error ="";
                if(userName.equals("")||passUser.equals("")){
                    error = "Vui long nhap day du thong tin";
                }else if(logModel.Login(userName, passUser)==false){
                    error = " Tài Khoản hoặc Mật Khẩu không chính xác !";
                   
                }if (error.length() > 0) {
			request.setAttribute("error", error);
		}
                 System.out.println(error);
                request.setAttribute("userName", userName);
		request.setAttribute("passUser", passUser);
                
          
                 try{
                       if(logModel.Login(userName, passUser)==true){  
				HttpSession session = request.getSession();
				session.setAttribute("userName", passUser);
                                return "redirect:/indexController/getAll.htm";
                       }else{
                           return "login";
                       }
                         }catch(Exception e){
                             e.printStackTrace();
                             
                         }
     return "login";
    
  }
     @RequestMapping(value="/initInsertAdmin", method = RequestMethod.GET)
    public ModelAndView initInsertAdmin(){
        ModelAndView mav = new ModelAndView("NewAdmin");
        Users uNew = new Users();
        mav.addObject("uNew", uNew);
        //get danh sach danh muc san pham --> set mav
        List<Users> listUser = uModel.getAllUsers();
        mav.addObject("listUser", listUser);    
        return mav;
    }
    @RequestMapping(value="/insertAdmin", method = RequestMethod.POST)
    public String insertOrderDetail(Users uNew){
        boolean check = logModel.InsertUser(uNew);
        if (check) {
             return "redirect:/indexController/getAll.htm";
        }else{
            return "error";
        }
    }
}
