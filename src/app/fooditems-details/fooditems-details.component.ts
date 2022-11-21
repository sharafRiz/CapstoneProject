import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { FoodItems } from '../common/food-items';
import { FooditemsService } from '../services/fooditems.service';

@Component({
  selector: 'app-fooditems-details',
  templateUrl: './fooditems-details.component.html',
  styleUrls: ['./fooditems-details.component.css']
})
export class FooditemsDetailsComponent implements OnInit {

  foodItemses: FoodItems = new FoodItems();

  constructor(private foodItemService: FooditemsService,
              private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.route.paramMap.subscribe(() => {
      this.handleFoodItemsDetails();
    })
  }
  handleFoodItemsDetails() {
    // get the id parameter string and covert it to number
    const theFoodItemId: number = +this.route.snapshot.paramMap.get('id');

    this.foodItemService.getFoodItem(theFoodItemId).subscribe(
      data => {
       this.foodItemses = data;
      }
    )
  }

}
