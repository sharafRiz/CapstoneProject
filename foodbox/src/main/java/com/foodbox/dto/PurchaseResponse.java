package com.foodbox.dto;

import lombok.Data;

@Data
public class PurchaseResponse {

    public PurchaseResponse(String orderTrackingNumber2, String orderTrackingNumber) {
		this.orderTrackingNumber = orderTrackingNumber;
		// TODO Auto-generated constructor stub
	}

	private final String orderTrackingNumber;

}
