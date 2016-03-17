
package com.dao;

import com.entity.Login;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author akshay
 */
@Repository
@Transactional
public class LoginDAO {
    
 /*   public SessionFactory getMy_sessionfactory() {
        return my_sessionfactory;
    }

    @Resource(name = "sessionFactory")
    public void setMy_sessionfactory(SessionFactory my_sessionfactory) {
        this.my_sessionfactory = my_sessionfactory;
    }

    private SessionFactory my_sessionfactory;

    public Long findByUname(Login loginForm) {
        System.out.println("Hi Dao" + loginForm.getUname());
        Session session = my_sessionfactory.getCurrentSession();
        String hql = "select count(u.uname) from Users u where u.uname = ? and u.pass = ?";
        Query query = session.createQuery(hql).setString(0, loginForm.getUname()).setString(1, loginForm.getPass());
        System.out.println("query" + query);
        System.out.println("query ur" + query.uniqueResult());

        Long count = (Long) query.uniqueResult();
        return count;
    }*/
    
    @Autowired
    private SessionFactory sessionFactory;

    public int findByUname(Login log) {
        //System.out.println("Hi Dao" + loginForm.getUname());
        //Session session = sessionFactory.getCurrentSession();
     //   Query query =  session.getNamedQuery("Users.findByUname");
        /*Query query =  session.getNamedQuer; 
        query.setString("uname", loginForm.getUname());
        query.setString("pass", loginForm.getPass());
        
   //     query.setString("user",loginForm.getUser());
        
        Login loginObj = (Login) query.uniqueResult();
        return loginObj;*/
        Session session = this.sessionFactory.getCurrentSession();
        System.out.println("Enter into Login Dao"+log.getUname());
        //Query query = session.createQuery("from Login where uname = ?");
        //query.setParameter("uname", log.getUname());
        //query.setParameter("pass", log.getPass());
        //List user = query.list();
        //return user.size();
        //return (Login) sessionFactory.getCurrentSession().get(Login.class, uname);
        Criteria c = session.createCriteria(Login.class);
        c.add(Restrictions.eq("uname",log.getUname())).add(Restrictions.eq("pass", log.getPass()));
        List result = c.list();
        int size = result.size();
            return  size;
    }  
}
