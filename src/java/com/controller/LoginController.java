        package com.controller;

import com.dao.LoginDAO;
import com.dao.UserValidator;
import com.entity.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
//@RequestMapping("/")
public class LoginController {
    
    @Autowired
    private LoginDAO logindao;
    
    @RequestMapping(value = "hr",method = RequestMethod.GET)
       public String hellloWorld(Login ud){
       return "hr";
       }


    @RequestMapping(value = "loginAdmin", method = RequestMethod.GET)
      public String loginSuccess(@ModelAttribute("adminLogin") Login login, ModelMap model) {
        System.out.println("Enter into Login Controller" +login.getUname());
        
        int s = logindao.findByUname(login);
     
        if(s!=0)
        {
         return "admin";
        }
         else
        {
           return "hr";
        }
    }
      
    

    
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.setValidator(new UserValidator());
    }

 }
    
  
