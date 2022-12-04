import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CardsDistributiveSearchComponent } from './cards-distributive-search.component';

describe('CardsDistributiveSearchComponent', () => {
  let component: CardsDistributiveSearchComponent;
  let fixture: ComponentFixture<CardsDistributiveSearchComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CardsDistributiveSearchComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CardsDistributiveSearchComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
