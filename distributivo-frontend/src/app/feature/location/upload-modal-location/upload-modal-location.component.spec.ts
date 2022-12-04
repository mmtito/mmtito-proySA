import { ComponentFixture, TestBed } from '@angular/core/testing';

import { UploadModalLocationComponent } from './upload-modal-location.component';

describe('UploadModalLocationComponent', () => {
  let component: UploadModalLocationComponent;
  let fixture: ComponentFixture<UploadModalLocationComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ UploadModalLocationComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(UploadModalLocationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
