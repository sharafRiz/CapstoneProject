import { Component, OnInit } from '@angular/core';
import { FoodItemsCategory } from '../common/food-items-category';
import { FooditemsService } from '../services/fooditems.service';

@Component({
  selector: 'app-fooditems-category-menu',
  templateUrl: './fooditems-category-menu.component.html',
  styleUrls: ['./fooditems-category-menu.component.css']
})
export class FooditemsCategoryMenuComponent implements OnInit {


  foodCategory: FoodItemsCategory[];


  constructor(private foodCategoryService: FooditemsService) { }

  ngOnInit(): void {
    this.listFoodItemsCategories();
  }
  listFoodItemsCategories() {
    this.foodCategoryService.getFoodItemsCategories().subscribe(
      data => {
        console.log('Food Category='+ JSON.stringify(data));
        this.foodCategory = data;
      }
    )
  }

}
