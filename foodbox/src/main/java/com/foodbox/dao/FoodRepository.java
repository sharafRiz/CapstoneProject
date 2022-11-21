package com.foodbox.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestParam;

import com.foodbox.entity.FoodItems;

@Repository
@CrossOrigin("http://localhost:4200")
public interface FoodRepository extends JpaRepository<FoodItems, Long>{
	
	Page<FoodItems> findByCategoryId(@RequestParam("id") long id, Pageable pageable);

	Page<FoodItems> findByNameContaining(@RequestParam("name") String name, Pageable pageable);
	
	Page<FoodItems> deleteById(@RequestParam("id") long id, Pageable pageable);
}
