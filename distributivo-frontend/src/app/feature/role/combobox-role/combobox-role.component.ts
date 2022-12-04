import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { UserRole } from '../models/userRole';
import { RoleService } from '../role.service';

@Component({
  selector: 'app-combobox-role',
  templateUrl: './combobox-role.component.html',
  styleUrls: []
})
export class ComboboxRoleComponent implements OnInit {

  constructor(
    private roleService : RoleService,
  ) { }

  @Output() roleSelectEvent  = new EventEmitter<UserRole>()
  @Input() RoleId : string =  '';
   
  public roles : UserRole[] = [];
  ngOnInit(): void {
    this.getRoles();
   
  }

  getRoles(){
    this.roleService.findAllRoles().subscribe(
      (res)=>{
        this.roles= res}
    )

  }

  addRoleEmittier(id : string){

    
    this.roleSelectEvent.emit(this.roles.find(r => r.roleId == id));

  }


}
