import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClassroomTypeComboboxComponent } from './classroom-type-combobox.component';

describe('ClassroomTypeComboboxComponent', () => {
  let component: ClassroomTypeComboboxComponent;
  let fixture: ComponentFixture<ClassroomTypeComboboxComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ClassroomTypeComboboxComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ClassroomTypeComboboxComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
