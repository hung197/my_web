/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.model;

import bkap.entity.Banner;
import bkap.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Windows 10
 */
public class BannerModel {
     public List<Banner> getAllBanner() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Banner");
        List<Banner> listBan = query.list();
        session.getTransaction().commit();
        session.close();
        return listBan;
    }

    public boolean insertBanner(Banner banNew) {
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(banNew);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false;
    }

    public boolean updateBanner(Banner banUpdate) {
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.merge(banUpdate);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false;
    }

    public Banner getBannerById(int bannerId) {
        Session session = null;
        Transaction trans = null;
        Banner ban = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();            
            // lay thong tin category
            Query query = session.createQuery("from Banner where bannerId=:banId");
            // set gia tri cho thaam so truyen vao
            query.setInteger("banId", bannerId);
            ban = (Banner)query.uniqueResult();
            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return ban;
    }

    public boolean deleteBanner(int bannerId) {
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();            
            Banner ban = getBannerById(bannerId);
            if (ban != null) {
                session.delete(ban);
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
