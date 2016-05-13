
package com.entity;

import java.io.File;
import java.io.Serializable;
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
 @GeneratedValue(strategy = GenerationType.AUTO)
 private int id;   
 
 @Transient
  private MultipartFile fileName;
 
 
 
 public Attendance(){
 }
 
 public Attendance(int id, MultipartFile fileName){
     
     super();
     this.id=id;
     this.fileName=fileName;
    
 } 
 
  @Override
    public String toString(){
      return ToStringBuilder.reflectionToString(this);
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    public MultipartFile getFileName() {
        return fileName;
    }

    public void setFileName(MultipartFile fileName) {
        this.fileName = fileName;
    }
   
}
