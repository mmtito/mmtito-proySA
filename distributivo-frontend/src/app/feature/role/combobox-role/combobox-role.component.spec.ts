import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ComboboxRoleComponent } from './combobox-role.component';

describe('ComboboxRoleComponent', () => {
  let component: ComboboxRoleComponent;
  let fixture: ComponentFixture<ComboboxRoleComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ComboboxRoleComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ComboboxRoleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
