package com.controller;

import com.entity.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author akshay
 */
@Controller
public class commonController {
    
    @RequestMapping(value = "index")
    public String index() {
        return "index";
    }
    
    @RequestMapping(value = "services")
    public String services() {
        return "services";
    }
    
    @RequestMapping(value = "careers")
    public String careers() {
        return "careers";
    }
    
    @RequestMapping(value = "contact")
    public String contact() {
        return "contact";
    }
    
    @RequestMapping(value = "about")
    public String about() {
        return "about";
    }
    
    @RequestMapping(value = "employee")
    public String employee() {
        return "employee";
    }
    
    // page opening
    @RequestMapping(value = "add_employee")
    public String add_employee1(Employee emp){
        return "add_employee";
    }
    
    // for form redirectin
    
    
}    

    
