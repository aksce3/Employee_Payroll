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
    @GeneratedValue(strategy = GenerationType.AUTO)

    private int id;
    @Column
    private String uname;

    @Column
    private String pass;

    @Column
    private String user;

    private Long user_count;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPass() {
        return pass;
    }

     public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    } 
    /**
     * @param pass the pass to set
     */
    public void setPass(String pass) {
        this.pass = pass;
    }

    public Long getUser_count() {
        return user_count;
    }

    public void setUser_count(Long user_count) {
        this.user_count = user_count;
    }

}
