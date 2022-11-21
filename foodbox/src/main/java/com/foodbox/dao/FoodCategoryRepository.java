package com.foodbox.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.foodbox.entity.FoodCategory;

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel = "foodCategory", path = "foodCategory")
public interface FoodCategoryRepository extends JpaRepository<FoodCategory, Long>{

}
