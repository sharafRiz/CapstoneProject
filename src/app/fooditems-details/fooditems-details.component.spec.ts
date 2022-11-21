import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FooditemsDetailsComponent } from './fooditems-details.component';

describe('FooditemsDetailsComponent', () => {
  let component: FooditemsDetailsComponent;
  let fixture: ComponentFixture<FooditemsDetailsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ FooditemsDetailsComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(FooditemsDetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
