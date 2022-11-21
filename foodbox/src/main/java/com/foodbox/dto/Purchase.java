package com.foodbox.dto;

import lombok.Data;

import java.util.Set;

import com.foodbox.entity.Address;
import com.foodbox.entity.Customer;
import com.foodbox.entity.Order;
import com.foodbox.entity.OrderItem;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;
	public Order getOrder() {
		// TODO Auto-generated method stub
		return order;
	}
	public Set<OrderItem> getOrderItems() {
		// TODO Auto-generated method stub
		return orderItems;
	}
	public Object getBillingAddress() {
		// TODO Auto-generated method stub
		return billingAddress;
	}
	public Object getShippingAddress() {
		// TODO Auto-generated method stub
		return shippingAddress;
	}
	public Customer getCustomer() {
		// TODO Auto-generated method stub
		return customer;
	}

}
