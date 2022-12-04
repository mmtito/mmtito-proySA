import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LocationComboboxComponent } from './location-combobox.component';

describe('LocationComboboxComponent', () => {
  let component: LocationComboboxComponent;
  let fixture: ComponentFixture<LocationComboboxComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ LocationComboboxComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(LocationComboboxComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
