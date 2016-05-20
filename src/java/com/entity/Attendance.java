
package com.entity;

import java.io.File;
import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "attendance", schema = "public")
public class Attendance implements Serializable {
    
 @Id
 //@GeneratedValue(strategy = GenerationType.AUTO)
 private int Emp_id;   
 
 @Column private String Emp_name;
 @Column private String Emp_email;
 @Column private String In_time;
 @Column private String Out_time;
 @Column private String P_date;
 
 @Transient
  private MultipartFile fileName;
 
 
 
 public Attendance(){
 }
 
 public Attendance(int Emp_id, MultipartFile fileName, String Emp_name,String Emp_email, String In_time, String Out_time, String P_date){
     
     super();
     this.Emp_id=Emp_id;
     this.fileName=fileName;
     this.Emp_name=Emp_name;
     this.Emp_email=Emp_email;
     this.In_time=In_time;
     this.Out_time=Out_time;
     this.P_date=P_date;
    
 } 
 
  @Override
    public String toString(){
      return ToStringBuilder.reflectionToString(this);
    }
   
    public MultipartFile getFileName() {
        return fileName;
    }

    public void setFileName(MultipartFile fileName) {
        this.fileName = fileName;
    }

    public int getEmp_id() {
        return Emp_id;
    }

    public void setEmp_id(int Emp_id) {
        this.Emp_id = Emp_id;
    }

    public String getEmp_name() {
        return Emp_name;
    }

    public void setEmp_name(String Emp_name) {
        this.Emp_name = Emp_name;
    }
    
    public String getEmp_email() {
        return Emp_email;
    }

    public void setEmp_email(String Emp_email) {
        this.Emp_email = Emp_email;
    }

    
    public String getIn_time() {
        return In_time;
    }

    public void setIn_time(String In_time) {
        this.In_time = In_time;
    }

    public String getOut_time() {
        return Out_time;
    }

    public void setOut_time(String Out_time) {
        this.Out_time = Out_time;
    }

    public String getP_date() {
        return P_date;
    }

    public void setP_date(String P_date) {
        this.P_date = P_date;
    }

   
      
}
