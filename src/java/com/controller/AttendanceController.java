
package com.controller;

import com.dao.AttendanceDAO;
import com.entity.Attendance;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class AttendanceController {
    
    @Autowired
    private AttendanceDAO attendanceDAO;
    
    @RequestMapping(value = "/upload_attendance")
    public String upload_attendance(Attendance attendance){
        return "upload_attendance";
    }
    
   
}
