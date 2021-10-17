
package com.mycompany.construction.helper;

import java.util.HashMap;
import java.util.Map;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

public class Helper {
    public static String get10Words(String desc)
    {
        String[] strs = desc.split(" ");
        
        if(strs.length>10)
        {
            String res="";
            for(int i=0;i<10;i++)
            {
                res = res+strs[i]+" ";
            }
            return (res+"...");
        }else
        {
            
            return (desc+"...");
        }
        
    }
    public static Map<String,Long> getCounts(SessionFactory factory)
    {
        Map<String,Long> map;
        try (Session session = factory.openSession()) {
            String q1="Select Count(*) from User";
            String q2="Select Count(*) from Product";
            Query query1=session.createQuery(q1);
            Query query2=session.createQuery(q2);
            Long userCount=(Long)query1.list().get(0);
            Long productCount=(Long)query2.list().get(0);
            map = new HashMap<>();
            map.put("userCount",userCount);
            map.put("productCount",productCount);
        }
        return map;
    }
    public static Map<String, Long> getRows(SessionFactory factory)
    {
       Map<String,Long> l;
        try (Session session = factory.openSession()) {
            String q1="Select *from User";

            Query query1=session.createQuery(q1);
          
            Long userList=(Long)query1.list().get(0);
           
            l = new HashMap<>();
            l.put("userList",userList);
           
        }
        return l;
    }
//    public static Map<String,Long> getlist(SessionFactory factory)
//    {
//        Map<String,Long> map;
//        try (Session session = factory.openSession()) {
//            String q1="Select * from User";
//            String q2="Select * from Product";
//            Query query1=session.createQuery(q1);
//            Query query2=session.createQuery(q2);
//            Long userCount=(Long)query1.list().get(0);
//            Long productCount=(Long)query2.list().get(0);
//            map = new HashMap<>();
//            map.put("user",userCount);
//            map.put("productCount",productCount);
//        }
//        return map;
//    }
//    public static Map<String, Long> getRows(SessionFactory factory)
//    {
//       Map<String,Long> l;
//        try (Session session = factory.openSession()) {
//            String q1="Select *from User";
//
//            Query query1=session.createQuery(q1);
//          
//            Long userList=(Long)query1.list().get(0);
//           
//            l = new HashMap<>();
//            l.put("userList",userList);
//           
//        }
//        return l;
//    }
}
