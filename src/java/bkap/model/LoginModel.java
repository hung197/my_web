/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.model;

import bkap.entity.Users;
import bkap.util.ConnectionDB;
import bkap.util.HibernateUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Windows 10
 */
public class LoginModel {
    PreparedStatement ps= null;
    ResultSet rs=null;
    Connection conn = null; 
    public  boolean Login(String UserName, String passUser){
        
      conn = ConnectionDB.openConnection();
        
        String query = ("from Users where UserName='"+UserName+"' and passUser '"+passUser+"'");
        try{
         ps=conn.prepareStatement(query);
         ResultSet rs = ps.executeQuery();   
            while (rs.next()) {
                return true;
                
            }
                }catch(Exception e){
                    
                }
        return true;
         
    }
    public boolean InsertUser(Users uNew){
       Session session = null;
       Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
             trans = session.getTransaction();
            trans.begin();
            // them moi 1 san pham
            session.save(uNew);
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
}
