package com.foodbox.controller;

import org.springframework.beans.factory.annotation.Autowired;  

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.foodbox.dao.FoodRepository;
import com.foodbox.entity.FoodItems;

@RestController
@CrossOrigin
@RequestMapping("/api/FoodItems")
public class CRUDsupport {

	@Autowired
	private FoodRepository repository;
	
	@PostMapping("/addFoodItem")
	public String addProduct(@RequestBody FoodItems foodItems) {
        repository.save(foodItems);
        return "Hi " + foodItems.getName() + " has been added successfully";
    }
	
	@DeleteMapping("/deleteFoodItem/{id}")
	public void deleteFoodItems(@PathVariable Long id){
		repository.deleteById(id);
		
	}
	
}
