import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ToolbarClassroomComponent } from './toolbar-classroom.component';

describe('ToolbarClassroomComponent', () => {
  let component: ToolbarClassroomComponent;
  let fixture: ComponentFixture<ToolbarClassroomComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ToolbarClassroomComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ToolbarClassroomComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
