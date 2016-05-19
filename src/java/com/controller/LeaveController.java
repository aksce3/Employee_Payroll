
package com.controller;
import com.dao.LeaveDAO;
import com.entity.Leave;
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
public class LeaveController {
    
@Autowired
private LeaveDAO leaveDAO;

int id;
@RequestMapping(value = "/add_leave")
    public String add_leave(Leave leave){
        return "add_leave";
    }

@RequestMapping(value = "/saveLeave", method = RequestMethod.POST)
    public String create(@Valid Leave leave,BindingResult result , ModelMap model ){
       
       if (result.hasErrors()) {
                System.out.println("Error in saving " +result.getAllErrors());
                return "add_leave";
            } else {
                
           int i = leaveDAO.save(leave);
           System.out.println("Data Updated :"  + i) ;
                return "redirect:viewAllLeaves.do";
            }
       }
    
@RequestMapping("/searchLeave")
    public ModelAndView searchLeave(@RequestParam(required= false, defaultValue="") String ltype)
	{
		ModelAndView mav = new ModelAndView("view_leave");
		List<Leave> leave = leaveDAO.searchLeaves(ltype.trim());
		mav.addObject("SEARCH_LEAVES_RESULTS_KEY", leave);
                System.out.println("Employee fetch-----");
		return mav;
	}
   
    @RequestMapping("/viewAllLeaves")
    public ModelAndView getAllLeaves(){
       ModelAndView mav = new ModelAndView("view_leave");
       List<Leave> leaves = leaveDAO.getLeaves();
       mav.addObject("SEARCH_LEAVES_RESULTS_KEY", leaves);
        System.out.println("---Data");
       return mav;
    }    
    
    @RequestMapping("delete_leave")
    public ModelAndView delete(@RequestParam("id")Integer id){
        ModelAndView mav = new ModelAndView("redirect:viewAllLeaves.do");
        leaveDAO.delete(id);
        return mav;
    }
    
    @RequestMapping(value = "/updateLeave",method = RequestMethod.GET)
    public ModelAndView edit(@RequestParam("id")Integer id, HttpSession session){
       this.id = id;
       ModelAndView mav = new ModelAndView("edit_leave");
       Leave leave = leaveDAO.getById(id);
       mav.addObject("edit_leave",leave);
       return mav;
    } 
    
    @RequestMapping(value = "/updateLeave",method = RequestMethod.POST)
    public String update(@ModelAttribute("edit_leave") Leave leave, SessionStatus status){
     
        System.out.println("Id is : " + id);
        leaveDAO.update(leave);
        status.setComplete();
        System.out.println("Employee controler updated");
        return "redirect:viewAllLeaves.do";
            
        
    }
}
