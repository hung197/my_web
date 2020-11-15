/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.model;

import bkap.entity.ShipType;
import bkap.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;



/**
 *
 * @author Windows 10
 */
public class ShipTypeModel {
    public List<ShipType> getAllShipType(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query = session.createQuery("from ShipType");
        List<ShipType> listShip = query.list();
        session.getTransaction().commit();
        session.close();
        return listShip;
    }
    public boolean insertShipType(ShipType shipNew){
        Session session = null;
        Transaction trans = null;
        try {
            session= HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
        session.save(shipNew);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false;
    }
    public boolean UpdateShipType(ShipType shipUpdate){
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
           session.merge(shipUpdate);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false;
    }
    public ShipType getShipTypeById(int shipId){
       Session session= null;
       Transaction trans= null;
       ShipType ship = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            // lay thong tin users
            Query query = session.createQuery("from ShipType where shipId=:shId");
            query.setInteger("shId", shipId);
             ship =(ShipType)query.uniqueResult();
             session.getTransaction().commit();
             session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return ship;
    }
    public boolean deleteShipType(int shipId){
        Session session= null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            ShipType ship = getShipTypeById(shipId);
            if (ship !=null) {
                session.delete(ship);
                
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
