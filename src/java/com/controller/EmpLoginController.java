
package com.controller;

import com.dao.EmpLoginDAO;
import com.dao.EmpUserValidator;
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
    private EmpLoginDAO empLoginDAO;
    @RequestMapping(value = "employee",method = RequestMethod.GET)
       public String hellloWorld(Employee emp){
       return "employee";
       }
    
    @RequestMapping(value = "EmploginAdmin", method = RequestMethod.GET)
      public String loginSuccess(@ModelAttribute("employeeLogin") Employee employee, ModelMap model) {
        System.out.println("Enter into Employee Login Controller" +employee.getEmail());
     
        int s = empLoginDAO.findByEmail(employee);
        
        if(s!=0)
        {
         return "emp_main";
        }
         else
        {
           return "employee";
        }
    }
        
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.setValidator(new EmpUserValidator());
    }
}
