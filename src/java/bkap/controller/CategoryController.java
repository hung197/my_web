/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.controller;

import bkap.entity.Category;
import bkap.model.CategoryModel;
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
@RequestMapping(value= "/categoryController")
public class CategoryController {
    private CategoryModel cateModel;
    public CategoryController(){
        cateModel = new CategoryModel();
    }
    @RequestMapping(value= "/getAllCategory")
    public ModelAndView getAllCategory(){
        ModelAndView mav = new ModelAndView("category");
        List<Category> listCa = cateModel.getAllCategory();
        mav.addObject("listCa", listCa);
        return mav;
    }
    @RequestMapping(value="/initInsertCategory")
    public ModelAndView  initInsert(){
        ModelAndView mav = new  ModelAndView("NewCategory");
        // khoi tao doi tuong Product chua du lieu can them moi
        Category caNew = new Category();
        // add proNew vao mav
        mav.addObject("caNew", caNew);
        return mav;
    }
    @RequestMapping(value=" /insert")
    public String insertProduct(Category caNew){
        // thuc hien goi sang model product
        boolean check = cateModel.insertCategory(caNew);
        if (check) {
            return "redirect:getAllCategory.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/initUpdateCategory", method = RequestMethod.GET)
    public ModelAndView initUpdate(int categoryId){
        ModelAndView mav = new ModelAndView("UpdateCategory");
        Category caUpdate = cateModel.getCategoryById(categoryId);
        mav.addObject("caUpdate", caUpdate);
        return mav;
    }
    @RequestMapping(value="/updateCategory", method = RequestMethod.POST)
    public String updateCategory(Category categoryUpdate){
        // thuc hien update
        boolean  check = cateModel.updateCategory(categoryUpdate);
        if (check) {
            return "redirect:getAllCategory.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/deleteCategory.htm")
    public String deleteProduct(int categoryId){
        boolean check = cateModel.deleteCategory(categoryId);
        if (check) {
            return "redirect:getAllCategory.htm";
        }else{
            return "error";
        }
    }
    
}
