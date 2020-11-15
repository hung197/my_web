/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.model;

import bkap.entity.Category;
import bkap.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;



/**
 *
 * @author Windows 10
 */
public class CategoryModel {
    public List<Category> getAllCategory(){
        // khoi tao doi tuong session lam viec voi db
        Session  session = HibernateUtil.getSessionFactory().openSession();
        // khoi tao 1 trans de lam viec
        session.beginTransaction();
        // thuc hen 1 truy van lay tat ca danh muc
        Query query = session.createQuery("from Category");
       
        List<Category> listCa = query.list();
        session.getTransaction().commit();
        session.close();
        return listCa;
    }
    public boolean insertCategory(Category CaNew){
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            // them moi 1 san pham
            session.save(CaNew);
            // commit va dong trans
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false;
    }
    public boolean updateCategory(Category caUpdate){
        Session session = null;
        Transaction trans =  null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            //O day la getTransaction() chu co phai beginTransaction dau
            // à em nhầm ạ :))Thay out nhe
            trans = session.getTransaction();
            trans.begin();
            // cap nhap category
            session.merge(caUpdate);
            // commit va dong trans
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false; 
    }
    public Category getCategoryById(int categoryId){
        Session session = null;
        Transaction trans  = null;
        Category category = null;
        try {
           session = HibernateUtil.getSessionFactory().openSession();
           trans = session.getTransaction();
           trans.begin();
           // lay thong tin category
           Query query = session.createQuery("from Category where categoryId =:caId");
           // set gia tri cho thaam so truyen vao
           query.setInteger("caId", categoryId);
           category = (Category)query.uniqueResult();
           session.getTransaction().commit();
           session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return category;
    }
    public boolean deleteCategory(int categoryId){
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            // lay thong tin category theo categoryId
            Category cate = getCategoryById(categoryId);
            if(cate !=null){
                // tien hanh xoa
                session.delete(cate);
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
