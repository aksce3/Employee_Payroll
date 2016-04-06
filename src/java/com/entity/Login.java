package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.validator.constraints.NotEmpty;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotNull;
/* @author akshay
 */

@Entity
@Table(name = "employee")

public class Login {

    @Id 
    @NotEmpty(message = "Enter User Name")
    private String uname;

    @Column @NotNull @Size(min=3, max=8)
    
    private String pass;

   

   
    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPass() {
        return pass;
    }

     /**
     * @param pass the pass to set
     */
    public void setPass(String pass) {
        this.pass = pass;
    }

   
}
