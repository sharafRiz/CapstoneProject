import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { map, Observable } from 'rxjs';
import { FoodItems } from '../common/food-items';
import { FoodItemsCategory } from '../common/food-items-category';


@Injectable({
  providedIn: 'root'
})
export class FooditemsService {

  private baseUrl = 'http://localhost:8080/api/foodItemses';

  private categoryUrl = 'http://localhost:8080/api/foodCategory';

  constructor(private httpClient: HttpClient) { }


  getFoodItem(theFoodItemId: number): Observable<FoodItems> {

    // need to build URL based on product id
    const foodItemsUrl = `${this.baseUrl}/${theFoodItemId}`;

    return this.httpClient.get<FoodItems>(foodItemsUrl);
  }


  getFoodItemsList(theCategoryId: number): Observable<FoodItems[]> {

    // need to build the URL based on category id.....
    const searchUrl = `${this.baseUrl}/search/findByCategoryId?id=${theCategoryId}`

    return this.getFoodItems(searchUrl);
  }

  searchFoodItems(theKeyword: string): Observable<FoodItems[]> {

    // need to build the URL based on kayword
    const searchUrl = `${this.baseUrl}/search/findByNameContaining?name=${theKeyword}`

    return this.getFoodItems(searchUrl);
  }

  private getFoodItems(searchUrl: string): Observable<FoodItems[]> {
    return this.httpClient.get<GetResponseFoodItems>(searchUrl).pipe(
      map(response => response._embedded.foodItemses)
    );
  }


  getFoodItemsCategories(): Observable<FoodItemsCategory[]> {
    return this.httpClient.get<GetResponseFoodItemsCategory>(this.categoryUrl).pipe(
      map(response => response._embedded.foodCategory)
    );
  }

}

interface GetResponseFoodItems {
  _embedded: {
    foodItemses: FoodItems[];
  }
}

interface GetResponseFoodItemsCategory {
  _embedded: {
    foodCategory: FoodItemsCategory[];
  }
}