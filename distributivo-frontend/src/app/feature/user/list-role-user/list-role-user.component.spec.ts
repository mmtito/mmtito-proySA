import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ListRoleUserComponent } from './list-role-user.component';

describe('ListRoleUserComponent', () => {
  let component: ListRoleUserComponent;
  let fixture: ComponentFixture<ListRoleUserComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ListRoleUserComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ListRoleUserComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
