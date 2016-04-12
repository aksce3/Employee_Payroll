
package com.controller;

import com.dao.LoginDAO;
import com.dao.UserValidator;

import com.entity.Employee;
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

public class EmpLoginController {

    @Autowired
    private LoginDAO logindao;
    
    @RequestMapping(value = "EmploginAdmin", method = RequestMethod.GET)
      public String loginSuccess(@ModelAttribute("adminLogin") Employee emplogin, ModelMap model) {
        //System.out.println("Enter into Login Controller" +emplogin.getUname());
        
        int s=0;// = logindao.findByUname(emplogin);
     
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
