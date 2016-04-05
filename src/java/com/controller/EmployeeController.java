
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
       ModelAndView mav = new ModelAndView("showEmployees");
       List<Employee> employees = employeeDAO.getEmployees();
       mav.addObject("SEARCH_EMPLOYEES_RESULTS_KEY",employees);
       return mav;
    }
    
    @RequestMapping(value = "/saveEmployee", method = RequestMethod.GET)
    public ModelAndView newuserForm(){
       ModelAndView mav = new ModelAndView("newEmployee");
       Employee employee = new Employee();
       mav.getModelMap().put("newEmployee",employee);
       return mav;
    }
    
    @RequestMapping(value = "/saveEmployee", method = RequestMethod.POST)
    public String create(@ModelAttribute("newEmployee")Employee employee,BindingResult result,SessionStatus status){
       employeeDAO.save(employee);
       status.setComplete();
       return "redirect:viewAllEmployees.do";
    }
    
    @RequestMapping(value = "/updateEmployee",method = RequestMethod.GET)
    public ModelAndView edit(@RequestParam("id")Integer id){
       ModelAndView mav = new ModelAndView("editEmployee");
       Employee employee = employeeDAO.getById(id);
       mav.addObject("editEmployee",employee);
       return mav;
    }
    
    @RequestMapping(value = "/updateEmployee",method = RequestMethod.POST)
    public String update(@ModelAttribute("editEmployee") Employee employee,SessionStatus status){
        employeeDAO.update(employee);
        status.setComplete();
        return "redirect:viewAllEmployees.do";
    }
    
    @RequestMapping("deleteEmployee")
    public ModelAndView delete(@RequestParam("id")Integer id){
        ModelAndView mav = new ModelAndView("redirect:viewAllEmployees.do");
        employeeDAO.delete(id);
        return mav;
    }
}
