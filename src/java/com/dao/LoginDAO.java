
package com.dao;

import com.entity.Login;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author akshay
 */
@Repository
@Transactional
public class LoginDAO {
    
    public SessionFactory getMy_sessionfactory() {
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
    }
}
