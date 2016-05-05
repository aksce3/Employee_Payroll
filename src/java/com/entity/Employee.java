package com.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Lob;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.*;
import javax.validation.constraints.*;
@Entity
@Table(name = "addemp", schema = "public")

public class Employee implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    
    @Column @NotEmpty(message = "Please Enter Your First Name") private String fname;
    @Column @NotEmpty(message = "Please Enter Your Middle Name") private String mname;
    @Column @NotEmpty(message = "Please Enter Your Last Name") private String lname; 
    
    @Column @Email @NotEmpty(message = "Please Enter Email Address") private String email;
    
    @Column @NotEmpty(message = "Pleasw Enter Password") @Size(min = 3,max = 8)
    private String password;
    
    @Column //@Size(min = 10, max = 10)
    private Long cno;  
    @Column @NotNull(message = "Gender Should not be Blank") private String gender;
    
    @Column //@Size(min = 6, max=6) 
    private Long pincode;
    @Column @NotEmpty(message = "Address Should not be Blank") @Lob  private String address;
    
    @Column @NotNull(message = "Country Should not be Blank") private String country;
    @Column @NotNull(message = "State Should not be Blank") private String state;
   // @Column private String city;
    
    @Column @NotNull(message = "Marital Status Should not be Blank") private String mstatus;
    @Column @Temporal(TemporalType.DATE ) @NotNull(message = "Birth Date Should not be Blank") 
    private Date bdate;
    @Column @NotNull(message = "Blood Group Should not be Blank") private String bgroup;
    @Column @Temporal(TemporalType.DATE) @NotNull(message = "Date of Joining Should not be Blank")
    private Date doj;
    
    @Column @NotNull(message = "Designation Should not be Blank") private String designation;
    @Column @NotNull(message = "Department Should not be Blank") private String department;
    @Column @NotNull(message = "Employee Type Should not be Blank") private String emptype; 
    
    @Column @NotEmpty(message = "Pan Card Number Should not be Blank") 
    private String panno;
    @Column @NotEmpty(message = "Designation Should not be Blank") private String pf;
     
    @Column(name = "bankName") @NotEmpty(message = "Bank Name Should not be Blank")
    private String bname;
    @Column(name = "AccountNo")  private Long acno;
    @Column @NotEmpty(message = "Salary Slab Should not be Blank")
    private String salaryslab;
    @Column private double salary;
    @Column(name = "PaymentType") @NotNull(message = "Payment Type Should not be Blank")
    private String ptype;
    
    

    public Employee() {
    }
    
    
    
    public Employee(int id,long cno,long pincode,long acno,double salary,
                    String fname, String mname, String lname,
                    String email,String gender,String address,
                    String country,String state,
                    String mstatus,Date bdate,String bgroup,Date doj,
                    String designation,String department,String emptype,
                    String panno,String pf,String esic,
                    String bname,String salaryslab,String ptype , String password){
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
      //  this.city=city;
        this.mstatus=mstatus;
        this.bdate=bdate;
        this.bgroup=bgroup;
        this.doj=doj;
        this.designation=designation;
        this.department=department;
        this.emptype=emptype;
        this.panno=panno;
        this.pf=pf;
        this.bname=bname;
        this.salaryslab=salaryslab;
        this.ptype=ptype;
        this.password = password;
        
        
        
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

    public long getCno() {
        return cno;
    }

    public void setCno(long cno) {
        this.cno = cno;
    }

    public long getPincode() {
        return pincode;
    }

    public void setPincode(long pincode) {
        this.pincode = pincode;
    }

    public long getAcno() {
        return acno;
    }

    public void setAcno(long acno) {
        this.acno = acno;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
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

 /*   public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    } */

    public String getMstatus() {
        return mstatus;
    }

    public void setMstatus(String mstatus) {
        this.mstatus = mstatus;
    }

   

    public String getBgroup() {
        return bgroup;
    }

    public void setBgroup(String bgroup) {
        this.bgroup = bgroup;
    }

    public Date getDoj() {
        return doj;
    }

    public void setDoj(Date doj) {
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

    public Date getBdate() {
        return bdate;
    }

    public void setBdate(Date bdate) {
        this.bdate = bdate;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    
}
