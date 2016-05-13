
package com.dao;

import com.entity.Employee;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class EmpLoginDAO {
    
    @Autowired
    private SessionFactory sessionFactory;
    
    public int findByEmail(Employee employee){
    
    Session session = this.sessionFactory.getCurrentSession();
    System.out.println("Enter into Employee Dao"+employee.getEmail());
    Criteria c = session.createCriteria(Employee.class);
    c.add(Restrictions.eq("email",employee.getEmail())).add(Restrictions.eq("password",employee.getPassword()));
    List result = c.list();
    int size = result.size();
    return  size;
    
    
    }

    public List<Employee> findByUserEmail(String email) {
       //Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Employee.class);
        Session session = this.sessionFactory.getCurrentSession();
          Criteria c = session.createCriteria(Employee.class);
    c.add(Restrictions.eq("email",email));
   // List result = c.list();
         List<Employee> emp = c.list();
         System.out.println("In method is  dao: " + emp);
         
        //Employee emp =(Employee) sessionFactory.getCurrentSession().get(Employee.class, email);
        return emp;
    }
    
}
