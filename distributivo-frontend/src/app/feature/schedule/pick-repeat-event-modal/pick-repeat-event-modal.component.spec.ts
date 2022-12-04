import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PickRepeatEventModalComponent } from './pick-repeat-event-modal.component';

describe('PickRepeatEventModalComponent', () => {
  let component: PickRepeatEventModalComponent;
  let fixture: ComponentFixture<PickRepeatEventModalComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PickRepeatEventModalComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(PickRepeatEventModalComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
