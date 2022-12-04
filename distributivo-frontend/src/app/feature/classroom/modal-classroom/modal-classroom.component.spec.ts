import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ModalLocationComponent } from './modal-classroom.component';

describe('ModalLocationComponent', () => {
  let component: ModalLocationComponent;
  let fixture: ComponentFixture<ModalLocationComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ModalLocationComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ModalLocationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
