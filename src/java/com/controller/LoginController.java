package com.controller;

import com.dao.LoginDAO;
import com.dao.UserValidator;
import com.entity.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author akshay
 */

@Controller
//@RequestMapping("/")
public class LoginController {
    
    @Autowired
    private LoginDAO logindao;
    
    @RequestMapping(value = "displayForm",method = RequestMethod.GET)
       public String hellloWorld(Login ud){
       return "index";
       }


    @RequestMapping(value = "loginAdmin", method = RequestMethod.GET)
    //public String loginSuccess(@ModelAttribute("index") Login loginObj, BindingResult result, ModelMap model) {
        public String loginSuccess(@ModelAttribute("adminLogin") Login login, ModelMap model) {
        //Long count = this.logindao.validateLogin(loginObj);
        System.out.println("Enter into Login Controller" +login.getUname());
        //model.addAttribute("message1", loginObj.getUname());
        //System.out.println("result error"+result.getAllErrors());
        //System.out.println("result error count"+result.getErrorCount());
       // LoginDAO lDAO = new LoginDAO();
        int s = logindao.findByUname(login);
       if(s!=0)
       {
        return "admin";
       }
       else
       {
           return "index";
       }
        /*if (result.hasErrors()) {
            return "index";
        } else {
            return "admin";
        }*/
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.setValidator(new UserValidator());
    }

 }
    
  
