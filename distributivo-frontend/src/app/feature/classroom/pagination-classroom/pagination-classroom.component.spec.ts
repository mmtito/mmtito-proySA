import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PaginationLocationComponent } from './pagination-classroom.component';

describe('PaginationLocationComponent', () => {
  let component: PaginationLocationComponent;
  let fixture: ComponentFixture<PaginationLocationComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PaginationLocationComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(PaginationLocationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
