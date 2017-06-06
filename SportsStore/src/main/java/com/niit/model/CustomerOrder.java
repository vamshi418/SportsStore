package com.niit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
public class CustomerOrder implements Serializable{
     @Id
     @GeneratedValue(strategy=GenerationType.AUTO)
	private int OrderId;
     
@OneToOne
@JoinColumn(name="customer_id")
private Customer customer;

@OneToOne
@JoinColumn(name="billingAddress")
private BillingAddress billingAddress;

@OneToOne
@JoinColumn(name="shippingAddress")
private ShippingAddress shippingAddress;

@OneToOne
@JoinColumn(name="cart_id")
private Cart cart;

public int getOrderId() {
	return OrderId;
}
public void setOrderId(int orderId) {
	OrderId = orderId;
}
public Customer getCustomer() {
	return customer;
}
public void setCustomer(Customer customer) {
	this.customer = customer;
}
public BillingAddress getBillingAddress() {
	return billingAddress;
}
public void setBillingAddress(BillingAddress billingAddress) {
	this.billingAddress = billingAddress;
}
public ShippingAddress getShippingAddress() {
	return shippingAddress;
}
public void setShippingAddress(ShippingAddress shippingAddress) {
	this.shippingAddress = shippingAddress;
}
public Cart getCart() {
	return cart;
}
public void setCart(Cart cart) {
	this.cart = cart;
}


}