/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.model;

import bkap.entity.OrderDetail;
import bkap.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Windows 10
 */
public class OrderDetailModel {
    public List<OrderDetail> getAllOrderDetail() {
        // khoi tao doi tuong session lam viec voi db
        Session session = HibernateUtil.getSessionFactory().openSession();
        // khoi tao 1 trans de lam viec
        session.getTransaction().begin();
        // thuc hen 1 truy van lay tat ca danh muc
        Query query = session.createQuery("from OrderDetail");
        List<OrderDetail> listOr = query.list();
        session.getTransaction().commit();
        session.close();
        return listOr;
    }
    
    public boolean insertOrderDetail(OrderDetail OrDeNew) {
        Session session = null;
        Transaction trans = null;
        boolean check = false;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            // them moi 1 san pham
            session.save(OrDeNew);
            // commit va dong trans
            session.getTransaction().commit();
            session.close();
            check = true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return check;   
    }
    
    public boolean updateOrderDetail(OrderDetail OrDeUpdate) {
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            //O day la getTransaction() chu co phai beginTransaction dau
            // à em nhầm ạ :))Thay out nhe
            trans = session.getTransaction();
            trans.begin();
            // cap nhap category
            session.merge(OrDeUpdate);
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
    
    public OrderDetail getOrderDetailProById(int id) {
        Session session = null;
        Transaction trans = null;
        OrderDetail orDe = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            // lay thong tin category
            Query query = session.createQuery("from OrderDetail where id =:orDeId");
            // set gia tri cho thaam so truyen vao
            query.setInteger("orDeId", id);
            orDe = (OrderDetail) query.uniqueResult();
            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return orDe;
    }
    
    public boolean deleteOrderDetail(int id) {
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            // lay thong tin category theo categoryId
            OrderDetail orDe = getOrderDetailProById(id);
            if (orDe != null) {
                // tien hanh xoa
                session.delete(id);
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
