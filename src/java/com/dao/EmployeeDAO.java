
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
       
        return (Employee) sessionFactory.getCurrentSession().get(Employee.class, id);
    }
    
    public int save(Employee employee){
        System.out.println("Data coming" + employee);
       return (Integer) sessionFactory.getCurrentSession().save(employee);
    }
    
    public void update(Employee employee){
       sessionFactory.getCurrentSession().merge(employee);
    }
    
    public void delete(int id){
       Employee e = getById(id);
       sessionFactory.getCurrentSession().delete(e);
    }
    
    @SuppressWarnings("unchecked")
    public List<Employee> getEmployees(){
       Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Employee.class);
       return criteria.list();
    }
    
    @SuppressWarnings("unchecked")
	public List<Employee> searchEmployees(String fname)
	{
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Employee.class);
		criteria.add(Restrictions.ilike("fname", fname+"%"));
		return criteria.list();
	}
}
