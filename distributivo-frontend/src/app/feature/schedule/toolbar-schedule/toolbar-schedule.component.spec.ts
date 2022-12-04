import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ToolbarScheduleComponent } from './toolbar-schedule.component';

describe('ToolbarScheduleComponent', () => {
  let component: ToolbarScheduleComponent;
  let fixture: ComponentFixture<ToolbarScheduleComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ToolbarScheduleComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ToolbarScheduleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
