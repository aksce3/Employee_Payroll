
package com.dao;

import java.util.List;
import com.entity.Employee;
import com.entity.Leave;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class LeaveDAO {
    
    @Autowired
    private SessionFactory sessionFactory;
    
    public Leave getById(int id){ 
       
        System.out.println("Select by id : " +(Leave) sessionFactory.getCurrentSession().get(Leave.class, id));
        return (Leave) sessionFactory.getCurrentSession().get(Leave.class, id);
        
    }
    
    public int save(Leave leave){
      System.out.println("Data coming" + leave);
       return (Integer) sessionFactory.getCurrentSession().save(leave);
    } 
    
    @SuppressWarnings("unchecked")
    public List<Leave> getLeaves(){
        System.out.println("Data fetch");
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Leave.class);
        System.out.println("Criterai view is : " + criteria.list());
        return criteria.list();
    }
    
    @SuppressWarnings("unchecked")
	public List<Leave> searchLeaves(String ltype)
	{       
                System.out.println("Search Data");
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Leave.class);
                criteria.add(Restrictions.like("ltype", ltype+"%"));
		System.out.println("List view is" + criteria.list());
                return criteria.list();
	}
        
    public void delete(int id){
       Leave e = getById(id);
       sessionFactory.getCurrentSession().delete(e);
    }     
    
     public void update(Leave leave ){
        System.out.println("Have Update......"); 
        System.out.println("Id is:"+leave.getId());
        System.out.println("Employee Details is : " + leave);
        sessionFactory.getCurrentSession().merge(leave);
    }
}
