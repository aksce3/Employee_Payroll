
package com.controller;

import com.dao.AttendanceDAO;
import com.entity.Attendance;
import java.io.File;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class AttendanceController {
    
    @Autowired
    private AttendanceDAO attendanceDAO;
    
    static File savedFile;
    @RequestMapping(value = "/upload_attendance")
    public String upload_attendance(Attendance attendance){
        return "upload_attendance";
    }
    
    @RequestMapping(value = "/UploadServlet")
    public String uploadAttendance(@ModelAttribute("upload_attendance") Attendance attendance, 
            javax.servlet.http.HttpServletRequest request, @RequestParam("fileName") MultipartFile filenName){
        
       
           
       // if (fileName != null && fileName.length > 0) {
            //for (CommonsMultipartFile aFile : file){
                  
               // System.out.println("Saving file: " + aFile.getOriginalFilename());
        savedFile = new File(request.getContextPath()+"/excel_upload/"+filenName.toString());
        System.out.println("Path is:"+savedFile);
           // }
      //  }
       return "redirect:view_attendance.do";
    }
    
    @RequestMapping(value = "/view_attendance")
    public String view_attendance(Attendance attendance){
        return "view_attendance";
    }
    
   // @RequestMapping(value = "/view_attendance")
}
