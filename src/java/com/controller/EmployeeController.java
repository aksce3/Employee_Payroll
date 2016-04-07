
package com.controller;

import com.dao.EmployeeDAO;
import com.entity.Employee;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class EmployeeController {
    
    @Autowired
    private EmployeeDAO employeeDAO;
    
   
    @RequestMapping("/viewAllEmployees")
    public ModelAndView getAllEmployees(){
       ModelAndView mav = new ModelAndView("view_employee");
       List<Employee> employees = employeeDAO.getEmployees();
       mav.addObject("employee",employees);
       return mav;
    }
    
    @RequestMapping(value = "add_employee")
    public String add_employee1(Employee emp){
        return "add_employee";
    }
   /* @RequestMapping(value = "/saveEmployee", method = RequestMethod.GET)
    public ModelAndView newuserForm(){
       ModelAndView mav = new ModelAndView("newEmployee");
       Employee employee = new Employee();
       mav.getModelMap().put("newEmployee",employee);
       return mav;
    }*/
    
    @RequestMapping(value = "/saveEmployee", method = RequestMethod.POST)
    public String create(@ModelAttribute("addEmployee")Employee employee,BindingResult result,SessionStatus status){
       
       //status.setComplete();
       
       if (result.hasErrors()) {
                return "add_employee";
            } else {
                //model.addAttribute("lfobj", userDetails);
           int i = employeeDAO.save(employee);
           System.out.println("Data Updated :"  + i) ;
                return "redirect:hr.do";
            }
       
    }
    
   /* @RequestMapping(value = "/updateEmployee",method = RequestMethod.GET)
    public ModelAndView edit(@RequestParam("id")Integer id){
       ModelAndView mav = new ModelAndView("editEmployee");
       Employee employee = employeeDAO.getById(id);
       mav.addObject("editEmployee",employee);
       return mav;
    } */
    
    @RequestMapping(value = "edit_employee")
    public String edit_employee1(Employee emp){
        return "edit_employee";
    }
    
    @RequestMapping(value = "/updateEmployee",method = RequestMethod.POST)
    public String update(Employee employee,BindingResult result,SessionStatus status){
      //  employeeDAO.update(employee);
      //  status.setComplete();
      //  return "redirect:hr.do";
      if (result.hasErrors()) {
                return "edit_employee";
            } else {
                //model.addAttribute("lfobj", userDetails);
                employeeDAO.update(employee);
                return "redirect:iewAllEmployees.do";
            }  
        
    }
    
    @RequestMapping("deleteEmployee")
    public ModelAndView delete(@RequestParam("id")Integer id){
        ModelAndView mav = new ModelAndView("redirect:viewAllEmployees.do");
        employeeDAO.delete(id);
        return mav;
    }
}
