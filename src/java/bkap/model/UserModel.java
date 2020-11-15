/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.model;

import bkap.entity.Users;
import bkap.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;


/**
 *
 * @author Windows 10
 */
public class UserModel {
    public List<Users> getAllUsers(){
        // khoi tao doi tuong session lam viec voi db
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        // thuc hien 1 truy van lay tat ca Users
        Query  query = session.createQuery("from Users");
        List<Users> listU = query.list();
        session.getTransaction().commit();
        session.close();
        return listU;
    }
    public boolean insertUsers(Users us){
        Session session = null;
        Transaction trans = null;
        try {
            session= HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(us);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false;
    }
    public boolean UpdateUsers(Users UsUpdate){
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.merge(UsUpdate);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false;
    }
    public Users getUsersById(int userId){
       Session session= null;
       Transaction trans= null;
       Users us = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            // lay thong tin users
            Query query = session.createQuery("from Users where userId=:usId");
            query.setInteger("usId", userId);
             us =(Users)query.uniqueResult();
             session.getTransaction().commit();
             session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return us;
    }
    public boolean deleteUser(int userId){
        Session session = null;
        Transaction trans= null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            Users us = getUsersById(userId);
            if (us !=null) {
                session.delete(us);
            }
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false;
    }
    public List<Users> getUserOnline() {

        Session session =HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<Users>  kh = null;
        try {
            Query query = session.createQuery("from Users where userStatus=1");
            kh =  query.list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.close();
        return kh;
    }
    public Users getUserOnlineO() {

        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Users  us = null;
        try {
            Users u = (Users) session.createQuery("from Users where userStatus=1").uniqueResult();
            session.getTransaction().commit();
            session.close();
            return u;
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.close();
        return us;
    }
    public List<Users> checkAccountUser(String userName,String passUser) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<Users>  us = null;
        try {
            Query query = session.createQuery("from Users where userName=:uname and passUser=:pass");
            query.setString("uname", userName);
            query.setString("pass", passUser);
            us =  query.list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        session.close();
        return us;
    }
    public boolean setStatusUsertrue(String userName,String passUser){
        Session session = HibernateUtil.getSessionFactory().openSession();
        boolean check = false;
        try {
            session.beginTransaction();
            Query query = session.createQuery("Update Users set userStatus=1 where userName='"+userName+"' and passUser='"+passUser+"'");
                    query.executeUpdate();
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return check;
    }
    public boolean setStatusUserfalse(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        boolean check = false;
        try {
            session.beginTransaction();
            int i = session.createQuery("update Users set UserStatus=0")
                    .executeUpdate();
            session.getTransaction().commit();
            session.close();
            if(i>0)
                return true;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return check;
    }
}
