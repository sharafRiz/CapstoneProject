import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';

@Component({
  selector: 'app-delete-product',
  templateUrl: './delete-product.component.html',
  styleUrls: ['./delete-product.component.css']
})
export class DeleteProductComponent implements OnInit {

  deleteProductFormGroup: FormGroup;
  constructor(private formBuilder: FormBuilder) { }

  ngOnInit(): void {
    this.deleteProductFormGroup=this.formBuilder.group({
      deleteproduct:this.formBuilder.group({
        product_id:['']
      })
    });
  }

  deleteProduct(){
    console.log("Handling the Submit Button");
    console.log(this.deleteProductFormGroup.get('addproduct').value);
  }

}
