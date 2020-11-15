/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.model;

import bkap.entity.Product;
import bkap.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;



/**
 *
 * @author Windows 10
 */
public class ProductModel {

   public List<Product> getAllProduct(){
       Session session = HibernateUtil.getSessionFactory().openSession();
       session.beginTransaction();
       Query query = session.createQuery("from Product");
       List<Product> listPro = query.list();
       session.getTransaction().commit();
       session.close();
       return listPro;
   }
     public List<Product> getSPCatId(int categoryId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
            Query query = session.createQuery("from Product where categoryId=:categoryId and  productStatus =1");
            query.setParameter("categoryId", categoryId);
            List list = query.list();
            session.getTransaction().commit();
            return list;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }

        return null;
    }

    public boolean insertProduct(Product proNew) {
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(proNew);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false;
    }

    public boolean updateProduct(Product proUpdate) {
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            //O day da begin roi
            session.beginTransaction();
            session.merge(proUpdate);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false;
    }

    public Product getProductById(int productId) {
        Session session = null;
        Transaction trans = null;
        Product pro = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();            
            // lay thong tin category
            Query query = session.createQuery("from Product where productId=:proId");
            // set gia tri cho thaam so truyen vao
            query.setInteger("proId", productId);
            pro = (Product) query.uniqueResult();
            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return pro;
    }

    public boolean deleteProduct(int productId) {
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();            
            Product pro = getProductById(productId);
            if (pro != null) {
                session.delete(pro);
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
