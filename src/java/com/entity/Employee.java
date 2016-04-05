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
import org.hibernate.validator.constraints.*;
import javax.validation.constraints.*;
@Entity
@Table(name = "addemp")

public class Employee implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    
    @Column @NotEmpty private String fname;
    @Column @NotEmpty private String mname;
    @Column @NotEmpty private String lname; 
    
    @Column @Email private String email;
    @Column @NotNull @Size(min = 10, max = 10) private int cno;  
    @Column @NotNull private String gender;
    
    @Column @NotNull private int pincode;
    @Column @NotEmpty private String address;
    
    @Column private String country;
    @Column private String state;
    @Column private String city;
    
    @Column private String mstatus;
    @Column private String bdate;
    @Column private String bgroup;
    @Column private String doj;
    
    @Column private String designation;
    @Column private String department;
    @Column private String emptype; 
    
    @Column private String panno;
    @Column private String pf;
    @Column private String esic;
    
    @Column private String bname;
    @Column private int acno;
    @Column private String salaryslab;
    @Column private int salary;
    @Column private String ptype;
    
    

    public Employee() {
    }
    
    
    
    public Employee(int id, int cno,int pincode,int acno,int salary,
                    String fname, String mname, String lname,
                    String email,String gender,String address,
                    String country,String state,String city,
                    String mstatus,String bdate,String bgroup,String doj,
                    String designation,String department,String emptype,
                    String panno,String pf,String esic,
                    String bname,String salaryslab,String ptype){
        super();
        this.id=id;
        this.cno=cno;
        this.pincode=pincode;
        this.acno=acno;
        this.salary=salary;
        this.fname=fname;
        this.mname=mname;
        this.lname=lname;
        this.email=email;
        this.gender=gender;
        this.address=address;
        this.country=country;
        this.state=state;
        this.city=city;
        this.mstatus=mstatus;
        this.bdate=bdate;
        this.bgroup=bgroup;
        this.doj=doj;
        this.designation=designation;
        this.department=department;
        this.emptype=emptype;
        this.panno=panno;
        this.pf=pf;
        this.esic=esic;
        this.bname=bname;
        this.salaryslab=salaryslab;
        this.ptype=ptype;
        
        
        
        
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

    

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getCno() {
        return cno;
    }

    public void setCno(int cno) {
        this.cno = cno;
    }

    public int getPincode() {
        return pincode;
    }

    public void setPincode(int pincode) {
        this.pincode = pincode;
    }

    public int getAcno() {
        return acno;
    }

    public void setAcno(int acno) {
        this.acno = acno;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getMstatus() {
        return mstatus;
    }

    public void setMstatus(String mstatus) {
        this.mstatus = mstatus;
    }

    public String getBdate() {
        return bdate;
    }

    public void setBdate(String bdate) {
        this.bdate = bdate;
    }

    public String getBgroup() {
        return bgroup;
    }

    public void setBgroup(String bgroup) {
        this.bgroup = bgroup;
    }

    public String getDoj() {
        return doj;
    }

    public void setDoj(String doj) {
        this.doj = doj;
    }

   
    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getEmptype() {
        return emptype;
    }

    public void setEmptype(String emptype) {
        this.emptype = emptype;
    }

    public String getPanno() {
        return panno;
    }

    public void setPanno(String panno) {
        this.panno = panno;
    }

    public String getPf() {
        return pf;
    }

    public void setPf(String pf) {
        this.pf = pf;
    }

    public String getEsic() {
        return esic;
    }
    
    public void setEsic(String esic) {
        this.esic = esic;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public String getSalaryslab() {
        return salaryslab;
    }

    public void setSalaryslab(String salaryslab) {
        this.salaryslab = salaryslab;
    }

    public String getPtype() {
        return ptype;
    }

    public void setPtype(String ptype) {
        this.ptype = ptype;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
}
