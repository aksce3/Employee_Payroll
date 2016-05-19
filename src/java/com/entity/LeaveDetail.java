
package com.entity;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
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
@Table(name = "addleaveDetail", schema = "public")

public class LeaveDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    
    @Column @NotEmpty(message = "Please Enter Leave Type") private String ltype;
    
}
