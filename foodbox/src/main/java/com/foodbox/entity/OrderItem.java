package com.foodbox.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name="order_item")
@Getter
@Setter
public class OrderItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Long id;

    @Column(name="image_url")
    private String imageUrl;

    @Column(name="unit_price")
    private BigDecimal unitPrice;

    @Column(name="quantity")
    private int quantity;

    @Column(name="food_items_id")
    private Long foodItemsId;

    @ManyToOne
    @JoinColumn(name = "order_id")
    private Order order;

	public void setOrder(Order order2) {
		// TODO Auto-generated method stub
		
	}

}








