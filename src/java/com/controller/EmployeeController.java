
package com.controller;

import com.dao.EmployeeDAO;
import com.entity.Employee;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;

@Controller
public class EmployeeController {
    
    @Autowired
    private EmployeeDAO employeeDAO;
    
    int id;
    @RequestMapping("/searchEmployee")
    public ModelAndView searchEmployee(@RequestParam(required= false, defaultValue="") String fname)
	{
		ModelAndView mav = new ModelAndView("view_employee");
		List<Employee> employee = employeeDAO.searchEmployees(fname.trim());
		mav.addObject("SEARCH_EMPLOYEES_RESULTS_KEY", employee);
                System.out.println("Employee fetch-----");
		return mav;
	}
   
    @RequestMapping("/viewAllEmployees")
    public ModelAndView getAllEmployees(){
       ModelAndView mav = new ModelAndView("view_employee");
       List<Employee> employees = employeeDAO.getEmployees();
       mav.addObject("SEARCH_EMPLOYEES_RESULTS_KEY", employees);
        System.out.println("---Data");
       return mav;
    }
    
    @RequestMapping(value = "/add_employee")
    public String add_employee1(Employee employee){
        return "add_employee";
    }
    
    @RequestMapping(value = "/saveEmployee", method = RequestMethod.POST)
    public String create(@Valid Employee employee,BindingResult result , ModelMap model ){
       
       if (result.hasErrors()) {
                System.out.println("Error in saving " +result.getAllErrors());
                return "add_employee";
            } else {
                
           int i = employeeDAO.save(employee);
           System.out.println("Data Updated :"  + i) ;
                return "redirect:viewAllEmployees.do";
            }
       }
    
   @RequestMapping(value = "/updateEmployee",method = RequestMethod.GET)
    public ModelAndView edit(@RequestParam("id")Integer id, HttpSession session){
        this.id = id;
       ModelAndView mav = new ModelAndView("edit_employee");
       Employee employee = employeeDAO.getById(id);
       //session = null ;
       //session.setAttribute("date",employee.getDoj());
       mav.addObject("edit_employee",employee);
       return mav;
    } 
    
    @RequestMapping(value = "/updateEmployee",method = RequestMethod.POST)
    public String update(@ModelAttribute("edit_employee") Employee employee, SessionStatus status){
      // = employee.getId();
        System.out.println("Id is : " + id);
    /*if (result.hasErrors()) {
                System.out.println("Have Errrors");
                System.out.println("Errors are: "+ result.getAllErrors());
                return "redirect:updateEmployee.do?id="+id;
            }  */ 
                
                employeeDAO.update(employee);
                status.setComplete();
                System.out.println("Employee controler updated");
               // status.setComplete();
                return "redirect:viewAllEmployees.do";
            
        
    }
    
    @RequestMapping("delete_employee")
    public ModelAndView delete(@RequestParam("id")Integer id){
        ModelAndView mav = new ModelAndView("redirect:viewAllEmployees.do");
        employeeDAO.delete(id);
        return mav;
    }
    
   
   
}
