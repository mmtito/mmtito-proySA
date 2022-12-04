import { ComponentFixture, TestBed } from '@angular/core/testing';

import { UploadModalUserComponent } from './upload-modal-.component';

describe('UploadModalUserComponent', () => {
  let component: UploadModalUserComponent;
  let fixture: ComponentFixture<UploadModalUserComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ UploadModalUserComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(UploadModalUserComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
