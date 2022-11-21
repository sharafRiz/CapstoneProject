package com.foodbox.config;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.metamodel.EntityType;

import org.hibernate.boot.Metadata;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.http.HttpMethod;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

import com.foodbox.entity.FoodCategory;
import com.foodbox.entity.FoodItems;

@Configuration
public class MyDataRestConfig implements RepositoryRestConfigurer{
	
	private EntityManager entityManager;
	
	@Autowired
	public MyDataRestConfig(EntityManager theEntityManager) {
		entityManager = theEntityManager;
	}

	@Override
	public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {
		// TODO Auto-generated method stub
		RepositoryRestConfigurer.super.configureRepositoryRestConfiguration(config, cors);
		
		HttpMethod[] theUnsupportedActions = {HttpMethod.PUT};
		
		//Disable HTTP Method for FoodItems : Put, Post and Delete
		
		config.getExposureConfiguration()
				.forDomainType(FoodItems.class)
				.withItemExposure((Metaata, HttpMethods) -> HttpMethods.disable(theUnsupportedActions))
				.withCollectionExposure((Metdata, HttpMethods)->HttpMethods.disable(theUnsupportedActions));
		
		
		//Disable HTTP Method for FoodCategory : Put, Post and Delete
		
				config.getExposureConfiguration()
						.forDomainType(FoodCategory.class)
						.withItemExposure((Metaata, HttpMethods) -> HttpMethods.disable(theUnsupportedActions))
						.withCollectionExposure((Metdata, HttpMethods)->HttpMethods.disable(theUnsupportedActions));
				
				//call an internal helper method
				
				exposeIds(config);
	}

	private void exposeIds(RepositoryRestConfiguration config) {
        // expose entity ids
        //

        // - get a list of all entity classes from the entity manager
        Set<EntityType<?>> entities = entityManager.getMetamodel().getEntities();

        // - create an array of the entity types
        List<Class> entityClasses = new ArrayList<>();

        // - get the entity types for the entities
        for (EntityType tempEntityType : entities) {
            entityClasses.add(tempEntityType.getJavaType());
        }

        // - expose the entity ids for the array of entity/domain types
        Class[] domainTypes = entityClasses.toArray(new Class[0]);
        config.exposeIdsFor(domainTypes);
    }
		

}
