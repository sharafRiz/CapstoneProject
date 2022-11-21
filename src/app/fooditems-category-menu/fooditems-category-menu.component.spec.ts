import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FooditemsCategoryMenuComponent } from './fooditems-category-menu.component';

describe('FooditemsCategoryMenuComponent', () => {
  let component: FooditemsCategoryMenuComponent;
  let fixture: ComponentFixture<FooditemsCategoryMenuComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ FooditemsCategoryMenuComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(FooditemsCategoryMenuComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
