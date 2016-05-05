
package com.dao;
import java.util.List;
import com.entity.Employee;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class EmployeeDAO {
    
    @Autowired
    private SessionFactory sessionFactory;
    
    public Employee getById(int id){ 
       
        System.out.println("Select by id : " +(Employee) sessionFactory.getCurrentSession().get(Employee.class, id));
        return (Employee) sessionFactory.getCurrentSession().get(Employee.class, id);
        
    }
    
    public int save(Employee employee){
        System.out.println("Data coming" + employee);
       return (Integer) sessionFactory.getCurrentSession().save(employee);
    }
    
    public void update(Employee employee){
        System.out.println("Have Update......"); 
       sessionFactory.getCurrentSession().update(employee);
    }
    
    public void delete(int id){
       Employee e = getById(id);
       sessionFactory.getCurrentSession().delete(e);
    }
    
    @SuppressWarnings("unchecked")
    public List<Employee> getEmployees(){
        System.out.println("Data fetch");
       Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Employee.class);
        System.out.println("Criterai view is : " + criteria.list());
       return criteria.list();
    }
    
    @SuppressWarnings("unchecked")
	public List<Employee> searchEmployees(String fname)
	{       
                System.out.println("Search Data");
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Employee.class);
                criteria.add(Restrictions.like("fname", fname+"%"));
		System.out.println("List view is" + criteria.list());
                return criteria.list();
	}
}
