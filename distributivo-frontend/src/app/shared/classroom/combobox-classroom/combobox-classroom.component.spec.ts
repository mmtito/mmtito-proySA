import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ComboboxClassroomComponent } from './combobox-classroom.component';

describe('ComboboxClassroomComponent', () => {
  let component: ComboboxClassroomComponent;
  let fixture: ComponentFixture<ComboboxClassroomComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ComboboxClassroomComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ComboboxClassroomComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
