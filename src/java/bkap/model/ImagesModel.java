/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.model;

import bkap.entity.Images;
import bkap.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Windows 10
 */
public class ImagesModel {
    public List<Images> getAllImmages() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Images");
        List<Images> listPro = query.list();
        session.getTransaction().commit();
        session.close();
        return listPro;
    }

    public boolean insertImages(Images ImNew) {
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(ImNew);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false;
    }

    public boolean updateImages(Images ImUpdate) {
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            //O day da begin roi
            session.beginTransaction();
            session.merge(ImUpdate);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false;
    }

    public Images getImagesById(int imagesId) {
        Session session = null;
        Transaction trans = null;
        Images imag = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();            
            // lay thong tin category
            Query query = session.createQuery("from Images where imagesId=:imId");
            // set gia tri cho thaam so truyen vao
            query.setInteger("imId", imagesId);
            imag = (Images) query.uniqueResult();
            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return imag;
    }

    public boolean deleteImages(int imagesId) {
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();            
            Images imag = getImagesById(imagesId);
            if (imag != null) {
                session.delete(imag);
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
