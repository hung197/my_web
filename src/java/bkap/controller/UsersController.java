/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.controller;

import bkap.entity.Users;
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
@RequestMapping(value = "/userController")
public class UsersController {
    private UserModel usModel;

    public UsersController() {
        usModel = new UserModel();
    }
    @RequestMapping(value = "/getAllUser")
    public ModelAndView getAllUser(){
        ModelAndView mav = new ModelAndView("User");
      List<Users> listUs = usModel.getAllUsers();
      mav.addObject("listUs", listUs);
      return mav;
    }
    @RequestMapping(value = "/initInsertUser", method = RequestMethod.GET)
    public ModelAndView initInsertUser(){
        ModelAndView mav = new ModelAndView("NewUser");
        Users usNew = new Users();
        mav.addObject("usNew", usNew);
        return mav;
    }
    @RequestMapping(value = "/insertUser", method = RequestMethod.POST)
    public String insertUser(Users usNew){
        boolean check = usModel.insertUsers(usNew);
        if (check) {
            return "redirect:getAllUser.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value= "/initUpdateUsers", method = RequestMethod.GET)
    public ModelAndView initUpdateUser(int userId){
        ModelAndView mav = new ModelAndView("UpdateUser");
        Users usUpdate = usModel.getUsersById(userId);
        mav.addObject("usUpdate",usUpdate);
        return mav;
    }
    @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
    public String UpdateUser(Users usUpdate){
     boolean check = usModel.UpdateUsers(usUpdate);
        if (check) {
           return "redirect:getAllUser.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value = "/deleteUser")
    public String deleteUser(int userId){
        boolean check = usModel.deleteUser(userId);
        if (check) {
             return "redirect:getAllUser.htm";
        }else{
            return "error";
        }
    }
}
