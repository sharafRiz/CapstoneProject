import { FoodItems } from "./food-items";

export class CartItem {

    id: number;
    name: string;
    imageUrl: string;
    unitPrice: number;
    quantity: number;

    constructor(foodItems: FoodItems){
        this.id = foodItems.id;
        this.name = foodItems.name;
        this.imageUrl = foodItems.imageUrl;
        this.unitPrice = foodItems.unitPrice;
        this.quantity = 1;

    }
}
