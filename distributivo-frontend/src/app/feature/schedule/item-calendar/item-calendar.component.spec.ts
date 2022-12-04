import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ItemCalendarComponent } from './item-calendar.component';

describe('ItemCalendarComponent', () => {
  let component: ItemCalendarComponent;
  let fixture: ComponentFixture<ItemCalendarComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ItemCalendarComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ItemCalendarComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
