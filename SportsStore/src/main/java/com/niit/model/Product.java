 package com.niit.model;

import java.io.File;
import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Min;


import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product implements Serializable
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
    @NotEmpty(message="Product name is mandatory")
	private String name;
	@NotEmpty(message="Manufacturer details is mandatory")
	private String manufacturer;
	@Min(value=100,message="Minimum price should be 100")
	private double price;
	@Min(value=1,message="unit in stock minimum value is 1")
	private int unitInStock;
	@NotEmpty(message="Description is mandatory")
	private String description;
	@ManyToOne
	@JoinColumn(name="cid")
	private Category category;
	
	 public File getImage() {
		return image;
	}
	public void setImage(File image) {
		this.image = image;
	}
	public byte[] getPicture() {
		return picture;
	}
	public void setPicture(byte[] picture) {
		this.picture = picture;
	}
	@Transient
	  private File image;
	  
	  @Lob
	  @Basic(fetch=FetchType.LAZY)
	  private byte[] picture;
	 
	/*@Transient
	private MultipartFile image;*/
	
	public int getId() 
	{
		return id;
	}
	public void setId(int id) 
	{
		this.id = id;
	}
	public String getName() 
	{
		return name;
	}
	public void setName(String name) 
	{
		this.name = name;
	}
	public String getManufacturer() 
	{
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) 
	{
		this.manufacturer = manufacturer;
	}
	public double getPrice() 
	{
		return price;
	}
	public void setPrice(double price) 
	{
		this.price = price;
	}
	public int getUnitInStock() 
	{
		return unitInStock;
	}
	public void setUnitInStock(int unitInStock) 
	{
		this.unitInStock = unitInStock;
	}
	public String getDescription() 
	{
		return description;
	}
	public void setDescription(String description) 
	{
		this.description = description;
	}
	public Category getCategory() 
	{
		return category;
	}
	public void setCategory(Category category) 
	{
		this.category = category;
	}
	/*public MultipartFile getImage() 
	{
		return image;
	}
	public void setImage(MultipartFile image) 
	{
		this.image = image;
	}*/
	public int getQuantity() {
		// TODO Auto-generated method stub
		return 0;
	}
	public void setQuantity(int i) {
		// TODO Auto-generated method stub
		
	}
}