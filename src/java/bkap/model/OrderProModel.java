/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.model;

import bkap.entity.OrderPro;
import bkap.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Windows 10
 */
public class OrderProModel {
    
    public List<OrderPro> getAllOrder() {
        // khoi tao doi tuong session lam viec voi db
        Session session = HibernateUtil.getSessionFactory().openSession();
        // khoi tao 1 trans de lam viec
        session.getTransaction().begin();
        // thuc hen 1 truy van lay tat ca danh muc
        Query query = session.createQuery("from OrderPro");
        List<OrderPro> listOr = query.list();
        session.getTransaction().commit();
        session.close();
        return listOr;
    }
    
    public boolean insertOrderPro(OrderPro OrNew) {
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            // them moi 1 san pham
            session.save(OrNew);
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
    
    public boolean updateOrderPro(OrderPro OrUpdate) {
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            //O day la getTransaction() chu co phai beginTransaction dau
            // à em nhầm ạ :))Thay out nhe
            trans = session.getTransaction();
            trans.begin();
            // cap nhap category
            session.merge(OrUpdate);
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
    
    public OrderPro getOrderProById(int orderId) {
        Session session = null;
        Transaction trans = null;
        OrderPro or = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            // lay thong tin category
            Query query = session.createQuery("from OrderPro where orderId =:orId");
            // set gia tri cho thaam so truyen vao
            query.setInteger("orId", orderId);
            or = (OrderPro) query.uniqueResult();
            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return or;
    }
    
    public boolean deleteOrderPro(int orderId) {
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            // lay thong tin category theo categoryId
            OrderPro or = getOrderProById(orderId);
            if (or != null) {
                // tien hanh xoa
                session.delete(or);
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
