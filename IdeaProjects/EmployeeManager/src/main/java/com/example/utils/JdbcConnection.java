package com.example.utils;

import org.hibernate.Session;
import org.hibernate.Transaction;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcConnection {
    public static void main(String[] args) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

//            String hql = "SELECT 1";
//            session.createQuery(hql).uniqueResult();

            System.out.println("Connection is successful!");

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
            System.out.println("Connection failed!");
        }
    }
}
