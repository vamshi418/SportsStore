package com.niit.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Product;

@Repository
//@Transactional
public class ProductDaoImpl implements ProductDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public Product saveOrUpdateProduct(Product product) 
	{
		Session session=sessionFactory.openSession();
		System.out.println("PRODUCT ID BEFORE INSERTION " + product.getId());
		session.saveOrUpdate(product);
		System.out.println("PRODUCT ID AFTER INSERTION " + product.getId());
		session.flush();
		session.close();
		return product;
	}
	public List<Product> getAllProducts() 
	{
		Session  session=sessionFactory.openSession();
		Query query=session.createQuery("from Product");
		List<Product> products=query.list();
		session.close();
		return products;
		
	}
	public Product getProductById(int id) 
	{
           Session session=sessionFactory.openSession();
           Product product=(Product)session.get(Product.class, id);
           session.close();
           return product;
	}
	public void deleteProduct(int id) 
	{
		Session session=sessionFactory.openSession();
		 Product product=(Product)session.get(Product.class, id); 
		session.delete(product);
		session.flush();
		session.close();
	}
	  public byte[] loadImage(int id){
		   Session session = sessionFactory.openSession();
		   Product product = (Product)session.get(Product.class, id);
		   byte[] b = product.getPicture();
		   return b;
	   }
}