package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "addemp")

public class Employee {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    
    private int emp_id;
    @Column private String fname,mname,lname;
    
    
    
    public Employee(int emp_id, String fname, String mname, String lname){
        super();
        this.emp_id=emp_id;
        this.fname=fname;
        this.mname=mname;
        this.lname=lname;
    }
    
    @Override
    public String toString(){
      return ToStringBuilder.reflectionToString(this);
    }
    

    
    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public int getEmp_id() {
        return emp_id;
    }

    public void setEmp_id(int emp_id) {
        this.emp_id = emp_id;
    }

    
}
