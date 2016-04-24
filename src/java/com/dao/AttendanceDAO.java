
package com.dao;

import com.entity.Attendance;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class AttendanceDAO {
    
   @Autowired
   private SessionFactory sessionFactory;
    
   public Attendance getByID(int id){
       return (Attendance) sessionFactory.getCurrentSession().get(Attendance.class, id);
   }
   
   public int save(Attendance attendance){
       return (Integer) sessionFactory.getCurrentSession().save(attendance);
   }
    
}
