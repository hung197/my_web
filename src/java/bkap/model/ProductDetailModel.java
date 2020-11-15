/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.model;
import bkap.entity.Category;
import bkap.entity.Images;
import bkap.entity.Product;
import java.time.LocalDateTime;
import bkap.entity.ProductDetail;
import bkap.util.HibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;



/**
 *
 * @author Windows 10
 */
public class ProductDetailModel {
    public List<ProductDetail> getAllProductDetail(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
         Query query = session.createQuery("from ProductDetail");
        List<ProductDetail> listProDe = query.list();
        session.getTransaction().commit();
        session.close();
        return listProDe;
    }
     public List<ProductDetail> ProDeNew() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from ProductDetail where year(getdate())- year(created) < 0.083 and productStatus = 1 ");
        List<ProductDetail> listProDeNew = query.list();
        session.getTransaction().commit();
        session.close();
        return listProDeNew;
     }
 public List<ProductDetail> ProDeBestSell() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from ProductDetail where discount>0 and productStatus = 1 ");
        List<ProductDetail> listProDeNew = query.list();
        session.getTransaction().commit();
        session.close();
        return listProDeNew;
     }

    public boolean insertProductDetail(ProductDetail proDeNew) {
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(proDeNew);
            //Insert ProductImage           
            List<Images> listImg = new ArrayList<>(proDeNew.getImageses());
            for (Images Images : listImg) {
            session.save(Images);
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

   public boolean updateProductDetail(ProductDetail proDeUpdate){
       Session session = null;
       Transaction trans = null;
       try {
           session = HibernateUtil.getSessionFactory().openSession();
           session.beginTransaction();
           
           session.merge(proDeUpdate);
           //Insert ProductImage           
            List<Images> listImg = new ArrayList<>(proDeUpdate.getImageses());
            for (Images Images : listImg) {
            session.merge(Images);
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
 
    public ProductDetail getProductDetailById(int productDetailId) {
        Session session = null;
        Transaction trans = null;
        ProductDetail proDetail = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();            
            // lay thong tin category
            Query query = session.createQuery("from ProductDetail where productDetailId= :proDeId");
            // set gia tri cho thaam so truyen vao
            query.setInteger("proDeId", productDetailId);
            proDetail = (ProductDetail) query.uniqueResult();
            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return proDetail;
    }

    public boolean deleteProductDetail(int productDetailId) {
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();            
            ProductDetail proDetail = getProductDetailById(productDetailId);
            if (proDetail != null) {
                session.delete(proDetail);
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

