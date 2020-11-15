/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.model;

import bkap.entity.Rom;
import bkap.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;


/**
 *
 * @author Windows 10
 */
public class RomModel {
    public List<Rom> getAllRom(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query = session.createQuery("from Rom");
        List<Rom> listR = query.list();
        session.getTransaction().commit();
        session.close();
        return listR;
    }
    public boolean insertRom(Rom romNew){
        Session session = null;
        Transaction trans = null;
        try {
            session= HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(romNew);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false;
    }
    public boolean UpdateRom(Rom romUpdate){
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.merge(romUpdate);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false;
    }
    public Rom getRomById(int romId){
       Session session= null;
       Transaction trans= null;
       Rom rom = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            // lay thong tin users
            Query query = session.createQuery("from Rom where romId=:rId");
            query.setInteger("rId", romId);
             rom =(Rom)query.uniqueResult();
             session.getTransaction().commit();
             session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return rom;
    }
    public boolean deleteRom(int romId){
        Session session= null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            Rom rom = getRomById(romId);
            if (rom !=null) {
                session.delete(rom);
                
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
