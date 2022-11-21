import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { FooditemsComponent } from './fooditems/fooditems.component';
import { HttpClientModule } from '@angular/common/http' 
import { FooditemsService } from './services/fooditems.service';

import { Routes, RouterModule} from '@angular/router';
import { FooditemsCategoryMenuComponent } from './fooditems-category-menu/fooditems-category-menu.component';
import { SearchComponent } from './search/search.component';
import { FooditemsDetailsComponent } from './fooditems-details/fooditems-details.component';

import { CartStatusComponent } from './cart-status/cart-status.component';
import { CartDetailsComponent } from './cart-details/cart-details.component';
import { CheckoutComponent } from './checkout/checkout.component';
import { ReactiveFormsModule } from '@angular/forms';
import { AdminLoginComponent } from './admin-login/admin-login.component';
import { AdminPageComponent } from './admin-page/admin-page.component';
import { AddProductComponent } from './add-product/add-product.component';
import { DeleteProductComponent } from './delete-product/delete-product.component';

const routes: Routes = [
  {path: 'delete-product', component: DeleteProductComponent},
  {path: 'add-product', component: AddProductComponent},
  {path: 'admin-page', component: AdminPageComponent},
  {path: 'admin-login', component: AdminLoginComponent},
  {path: 'checkout', component: CheckoutComponent},
  {path: 'cart-details', component: CartDetailsComponent},
  {path: 'fooditems/:id', component: FooditemsDetailsComponent},
  {path: 'search/:keyword', component: FooditemsComponent},
  {path: 'category/:id', component: FooditemsComponent},
  {path: 'category', component: FooditemsComponent},
  {path: 'fooditems', component: FooditemsComponent},
  {path: '', redirectTo: '/fooditems', pathMatch: 'full'},
  {path: '**', redirectTo: '/fooditems', pathMatch: 'full'},
]

@NgModule({
  declarations: [
    AppComponent,
    FooditemsComponent,
    FooditemsCategoryMenuComponent,
    SearchComponent,
    FooditemsDetailsComponent,
    CartStatusComponent,
    CartDetailsComponent,
    CheckoutComponent,
    AdminLoginComponent,
    AdminPageComponent,
    AddProductComponent,
    DeleteProductComponent,
  ],
  imports: [
    RouterModule.forRoot(routes),
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    ReactiveFormsModule
  ],
  providers: [FooditemsService],
  bootstrap: [AppComponent]
})
export class AppModule { }
