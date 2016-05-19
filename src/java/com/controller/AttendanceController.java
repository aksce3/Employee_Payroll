
package com.controller;

import com.dao.AttendanceDAO;
//import com.entity.Attendance;
import java.io.BufferedOutputStream;
import javax.validation.Valid;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;
import java.io.File;
import java.io.FileOutputStream;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

@Controller
public class AttendanceController {
    
    @Autowired
    private AttendanceDAO attendanceDAO;
    
    static File savedFile;
    @RequestMapping(value = "/upload_attendance")
    public String upload_attendance(){
        return "upload_attendance";
    }
    
    @RequestMapping(value = "/UploadServlet")
    public String uploadAttendance(@ModelAttribute("upload_attendance") @RequestParam("name") String name,
            @RequestParam("fileName") MultipartFile fileName,HttpServletRequest request){
        
       
           
      if (!fileName.isEmpty()) {
            try {
                byte[] bytes = fileName.getBytes();
 
               String rootPath = request.getServletContext().getRealPath("/");
                 //config.getServletContext().getRealPath("/");
                File dir = new File(rootPath +"excel_upload");
                if (!dir.exists())
                    dir.mkdirs();
 
                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + name+".xls");
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
                String fileName1;
                fileName1 = dir.getAbsolutePath()+ File.separator + name+".xls";
                attendanceDAO.save(fileName1);
 
                /*logger.info("Server File Location="
                        + serverFile.getAbsolutePath());*/
 
                return "redirect:view_attendance.do";
            } catch (Exception e) {
                e.printStackTrace();
                return "redirect:upload_attendance.do";
            }
        } else {
            return "redirect:upload_attendance.do";
        }
       
    }
    
    @RequestMapping(value = "/view_attendance")
    public String view_attendance(){
        return "view_attendance";
    }
    
   // @RequestMapping(value = "/view_attendance")
}
