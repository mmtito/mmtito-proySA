import { ComponentFixture, TestBed } from '@angular/core/testing';

import { UploadModalGradeComponent } from './upload-modal-grade.component';

describe('UploadModalGradeComponent', () => {
  let component: UploadModalGradeComponent;
  let fixture: ComponentFixture<UploadModalGradeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ UploadModalGradeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(UploadModalGradeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
