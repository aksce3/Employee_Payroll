
package com.controller;

import com.dao.AttendanceDAO;
import com.entity.Attendance;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AttendanceController {
    
    @Autowired
    private AttendanceDAO attendanceDAO;
    
    @RequestMapping(value = "/upload_attendance")
    public String upload_attendance(Attendance attendance){
        return "upload_attendance";
    }
    
    @RequestMapping(value = "/UploadServlet")
    public String uploadAttendance(@ModelAttribute("upload_attendance") Attendance attendance){
       return "redirect:view_attendance.do";
    }
    
   // @RequestMapping(value = "/view_attendance")
}
