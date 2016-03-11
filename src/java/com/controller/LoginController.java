package com.controller;

import com.dao.LoginDAO;
import com.entity.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author akshay
 */

@Controller
@RequestMapping("/")
public class LoginController {
    
    @Autowired
    private LoginDAO logindao;


    @RequestMapping(method = RequestMethod.GET)
    public String printWelcome(ModelMap model) {
        model.addAttribute("message", "Hello world!");
        return "appstore";
    }@RequestMapping(value = "/signin", method = RequestMethod.GET)
    public String loginPage(ModelMap model) {
        Login loginForm = new Login();
        model.addAttribute("loginForm", loginForm);
        return "signin";
    }


    
    }
    
  
