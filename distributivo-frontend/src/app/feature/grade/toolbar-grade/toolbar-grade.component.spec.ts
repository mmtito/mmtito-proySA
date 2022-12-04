import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ToolbarGradeComponent } from './toolbar-grade.component';

describe('ToolbarGradeComponent', () => {
  let component: ToolbarGradeComponent;
  let fixture: ComponentFixture<ToolbarGradeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ToolbarGradeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ToolbarGradeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
