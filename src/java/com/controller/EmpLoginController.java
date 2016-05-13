
package com.controller;

import com.dao.EmpLoginDAO;
import com.dao.EmpUserValidator;
import com.entity.Employee;
import com.entity.Login;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class EmpLoginController {

    @Autowired
    private EmpLoginDAO empLoginDAO;
    @RequestMapping(value = "employee",method = RequestMethod.GET)
       public String hellloWorld(Employee emp){
       return "employee";
       }
    
    @RequestMapping(value = "EmploginAdmin", method = RequestMethod.GET)
      public String loginSuccess(@ModelAttribute("employeeLogin") Employee employee, ModelMap model,HttpSession session , HttpServletRequest request) {
        System.out.println("Enter into Employee Login Controller" +employee.getEmail());
     
        int s = empLoginDAO.findByEmail(employee);
        
        if(s!=0)
        {
            session = request.getSession(true);
                    session.setAttribute("email", employee.getEmail());
         return "emp_main";
        }
         else
        {
           return "employee";
        }
    }
        
    /*@RequestMapping(value = "/empdetails")
    public String employee_details(Employee employee){
        return "empdetails";
    }  */
    @RequestMapping("/empdetails")
    public ModelAndView searchEmployee(@RequestParam(required= false, defaultValue="") String email)
	{       
            System.out.println("Email in method searchEmployee is : " + email);
                ModelAndView mav = new ModelAndView("empdetails");
		List<Employee> employee = empLoginDAO.findByUserEmail(email);
		mav.addObject("EMP_EMAIL", employee);
                System.out.println("Employee fetch-----");
		return mav;
        }
      
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.setValidator(new EmpUserValidator());
    }
}
