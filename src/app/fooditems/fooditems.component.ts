import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { CartItem } from '../common/cart-item';
import { FoodItems } from '../common/food-items';
import { CartService } from '../services/cart.service';
import { FooditemsService } from '../services/fooditems.service';

@Component({
  selector: 'app-fooditems',
  templateUrl: './fooditems-grid.component.html',
  // templateUrl: './fooditems-table.component.html',
  //templateUrl: './fooditems.component.html',
  styleUrls: ['./fooditems.component.css']
})
export class FooditemsComponent implements OnInit {

  foodItemses: FoodItems[];

  currentCategoryId: number;

  searchMode: boolean;

  constructor(private foodItemsesService: FooditemsService,
    private cartService: CartService,
    private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.route.paramMap.subscribe(() => {
      this.listFoodItems();
    });
  }
  listFoodItems() {

    this.searchMode = this.route.snapshot.paramMap.has('keyword');

    if (this.searchMode) {
      this.handleSearchFoodItems();
    }

    else {
      this.handleListFoodItems();
    }

  }

  handleSearchFoodItems() {

    const theKeyword: string = this.route.snapshot.paramMap.get('keyword');

    // now search for the product using keyword
    this.foodItemsesService.searchFoodItems(theKeyword).subscribe(
      data => {
        this.foodItemses = data;
      }
    );

  }


  handleListFoodItems() {

    // check if id parameter is available
    const hasCategoryId: boolean = this.route.snapshot.paramMap.has('id');

    if (hasCategoryId) {
      //get the 'id param string. convert string to a number using "+" symbol
      this.currentCategoryId = +this.route.snapshot.paramMap.get('id');
    }

    else {
      //not category id available....defaul to category id 1
      this.currentCategoryId = 1;
    }

    // now get the products for the given category id
    this.foodItemsesService.getFoodItemsList(this.currentCategoryId).subscribe(
      data => {
        this.foodItemses = data;
      }
    )
  }

  addToCart(theFoodItems: FoodItems){

      console.log(`adding to cart: ${theFoodItems.name}, ${theFoodItems.unitPrice}`)

    const theCartItem = new CartItem(theFoodItems);

      this.cartService.addToCart(theCartItem);

    }

}
