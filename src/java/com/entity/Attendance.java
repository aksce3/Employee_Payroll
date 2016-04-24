
package com.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "attendance", schema = "public")
public class Attendance implements Serializable {
    
 @Id
 @GeneratedValue(strategy = GenerationType.AUTO)
 private int id;   
 
 @Column private String fileName;
 
 @Column private byte[] data;
 
 public Attendance(){
 }
 
 public Attendance(int id, String fileName,byte[] data){
     
     super();
     this.id=id;
     this.fileName=fileName;
     this.data=data;
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
    
    
    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
    
    public byte[] getData() {
        return data;
    }

    public void setData(byte[] data) {
        this.data = data;
    }

   
}
