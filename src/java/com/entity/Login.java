package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/* @author akshay
 */

@Entity
@Table(name = "employee")

public class Login {

    @Id
    private String uname;

    @Column
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
