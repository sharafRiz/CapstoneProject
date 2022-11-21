import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';

@Component({
  selector: 'app-add-product',
  templateUrl: './add-product.component.html',
  styleUrls: ['./add-product.component.css']
})
export class AddProductComponent implements OnInit {

  addProductFormGroup: FormGroup;

  constructor(private formBuilder: FormBuilder) { }

  ngOnInit(): void {


    this.addProductFormGroup=this.formBuilder.group({
      addproduct:this.formBuilder.group({
        product_price:[''],
        date_added:[''],
        description:[''],
        imageurl:[''],
        last_updated:[''],
        product_name:[''],
        status:[''],
        category_id:['']
      })
    });
  }

  addProduct(){
    console.log("Handling the Submit Button");
    console.log(this.addProductFormGroup.get('addproduct').value);
  }

}
