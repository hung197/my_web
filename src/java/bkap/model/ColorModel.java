/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.model;

import bkap.entity.Color;
import bkap.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;



/**
 *
 * @author Windows 10
 */
public class ColorModel {
    public List<Color> getAllColor(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query = session.createQuery("from Color");
        List<Color> listCo = query.list();
        session.getTransaction().commit();
        session.close();
        return listCo;
    }
    public boolean insertColor(Color cl){
        Session session = null;
        Transaction trans = null;
        try {
            session= HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(cl);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false;
    }
    public boolean UpdateColor(Color clUpdate){
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.merge(clUpdate);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false;
    }
    public Color getColorById(int colorId){
       Session session= null;
       Transaction trans= null;
       Color cl = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            // lay thong tin users
            Query query = session.createQuery("from Color where colorId=:clId");
            query.setInteger("clId", colorId);
             cl =(Color)query.uniqueResult();
             session.getTransaction().commit();
             session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return cl;
    }
    public boolean deleteColor(int colorId){
        Session session = null;
        Transaction trans= null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            Color cl = getColorById(colorId);
            if (cl !=null) {
                session.delete(cl);
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
}
