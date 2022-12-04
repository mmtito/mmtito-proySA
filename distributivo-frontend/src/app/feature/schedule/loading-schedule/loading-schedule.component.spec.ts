import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LoadingScheduleComponent } from './loading-schedule.component';

describe('LoadingScheduleComponent', () => {
  let component: LoadingScheduleComponent;
  let fixture: ComponentFixture<LoadingScheduleComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ LoadingScheduleComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(LoadingScheduleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
