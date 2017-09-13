package com.springapp.mvc.DAO;

import com.springapp.mvc.model.User;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addUser (User user) {
        Session session = getSession();

        Transaction transaction = session.beginTransaction();
        session.save(user);
        transaction.commit();
    }
    @Override
    public User getUser(String login) {
        Session session = getSession();
        Query query = session.createQuery("from Book where login = :login ");
        query.setParameter("login", login);
        return (User) query.getSingleResult();
    }

    private Session getSession(){
        Session session;
        try {
            session = sessionFactory.getCurrentSession();
        } catch (HibernateException e)
        {
            session = sessionFactory.openSession();
        }
        return session;
    }
}
