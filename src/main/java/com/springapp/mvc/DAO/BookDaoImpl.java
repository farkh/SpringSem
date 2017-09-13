package com.springapp.mvc.DAO;

import com.springapp.mvc.model.Book;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookDaoImpl implements BookDao {
    //logging
    private static final org.slf4j.Logger logger = LoggerFactory.getLogger(BookDaoImpl.class);

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addBook (Book book) {
        Session session = getSession();

        Transaction transaction = session.beginTransaction();
        session.save(book);
        transaction.commit();
    }

    @Override
    public void updateBook(Book book) {
        Session session = getSession();
        session.getTransaction().begin();
        Query query = session.createSQLQuery("update books set book_title = :book_title, book_author = :book_author, book_price = :book_price where id = :id");
        query.setParameter("book_title", book.getBookTitle());
        query.setParameter("book_author", book.getBookAuthor());
        query.setParameter("book_price", book.getPrice());
        query.setParameter("id", book.getId());
        int result = query.executeUpdate();
        session.getTransaction().commit();

    }

    @Override
    public void removeBook(int id) {
        Session session = getSession();
        session.beginTransaction();
        String deleteQ = "delete Book where id = :id";
        org.hibernate.Query query = session.createQuery(deleteQ).setParameter("id", id);
        query.executeUpdate();
        session.getTransaction().commit();
    }

    @Override
    public Book getBookById(int id) {
        Session session = getSession();
        Query query = session.createQuery("from Book where id = :id ");
        query.setParameter("id", id);
        return (Book) query.getSingleResult();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Book> listBooks(){
        Session session = getSession();
        List<Book> bookList = session.createQuery("from Book").list();

        for(Book book: bookList){
            logger.info("Book list: " +book);
        }
        return bookList;
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
