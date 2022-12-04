import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ModalGradeComponent } from './modal-grade.component';

describe('ModalGradeComponent', () => {
  let component: ModalGradeComponent;
  let fixture: ComponentFixture<ModalGradeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ModalGradeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ModalGradeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
