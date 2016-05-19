
package com.dao;

//import com.entity.Attendance;
import com.controller.ExcelRead;
import com.entity.Attendance;
import java.sql.Date;
import java.sql.Time;
import java.util.Vector;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class AttendanceDAO {
    
   @Autowired
   private SessionFactory sessionFactory;
    
   public Attendance getByAll(int Emp_id, String Emp_name, Time In_time, Time Out_time, Date P_date){
       return (Attendance) sessionFactory.getCurrentSession().get(Attendance.class, Emp_id); 
       
   }
 
   
   public int save(String fileName)
   {
       System.out.println("Data is in attendance dao: " +fileName );
       Vector v = ExcelRead.read(fileName);
       String emp_id = null;
       String Emp_name = null;
       String In_time = null;
       String Out_time = null;
       String P_date = null;
       
       for(int i=1;i<v.size();i++){
          //Vector cellStoreVector = (Vector)v.elementAt(i);
           Vector cellStoreVector = (Vector)v.get(i);
           System.out.println("Attendace dao cell " +cellStoreVector);
           Attendance atd = atd = new Attendance();
     /*     for(int j=0; j<cellStoreVector.size();j++){
             
              HSSFCell myCell = (HSSFCell)cellStoreVector.elementAt(j);
              String st = myCell.toString();
   
              System.out.println("Attendace dao string is : " + st);
              System.out.println("Id is : " + st.substring(0,1));
              emp_id = st.substring(0,1);
          System.out.println("Id is : " + st.substring(0));
              Emp_name=st.substring(0);
              
              In_time = st.substring(2);
              Out_time = st.substring(3);
              P_date = st.substring(4);    
            
          }*/
           emp_id= cellStoreVector.get(0).toString();
           Emp_name= cellStoreVector.get(1).toString();
           
           In_time = cellStoreVector.get(2).toString();
           Out_time = cellStoreVector.get(3).toString();
           P_date = cellStoreVector.get(4).toString();
           
          atd.setEmp_id((int)(Float.parseFloat(emp_id)));
          atd.setEmp_name(Emp_name);
          atd.setIn_time(In_time);
          atd.setOut_time(Out_time);
          atd.setP_date(P_date);
           sessionFactory.getCurrentSession().save(atd);
           
       }
      return 1;
       
   }
    
}
