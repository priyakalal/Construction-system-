package com.mycompany.construction.dao;

import com.mycompany.construction.entities.Product;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class ProductDao {

    private SessionFactory factory;

    public ProductDao(SessionFactory factory) {
        this.factory = factory;
    }

    public boolean saveProduct(Product product) {
        boolean f = false;
        try {

            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();

            session.save(product);

            tx.commit();
            session.close();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
            f = false;
        }

        return f;
    }
//update
    public boolean updateProduct(Product product) {
        boolean f = false;
        try {

            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();

            session.saveOrUpdate(product);

            tx.commit();
            session.close();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
            f = false;
        }

        return f;
    }
    //get product by id
     public boolean getProductsById(int pid) {
        boolean f = false;
        Product product=null;
        try {

            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();

      product=session.get(Product.class,pid);

            tx.commit();
            session.close();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
            f = false;
        }

        return f;
    }
    
    
    //get all products
    public List<Product> getAllProducts() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from Product");
        List<Product> list = query.list();
        return list;
    }

    //get all  products of given category
    public List<Product> getAllProductsById(int cid) {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from Product as p where p.category.categoryId =: id");
        query.setParameter("id", cid);
        List<Product> list = query.list();
        return list;
    }
//public List<Product> getProductsById(int pid) {
//        Session s = this.factory.openSession();
//        Query query = s.createQuery("from Product where pId =: id");
//        query.setParameter("id", pid);
//        List<Product> list = query.list();
//        return list;
//    }
}
