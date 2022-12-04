import { Component, OnInit, Input,EventEmitter, Output } from '@angular/core';
import { Role } from '../../role/models/role';
import { UserRole } from '../../role/models/userRole';

@Component({
  selector: 'app-list-role-user',
  templateUrl: './list-role-user.component.html',
  styleUrls: []
})
export class ListRoleUserComponent implements OnInit {
  ngOnInit(): void {
    
  }

  @Output() addRoleEmmit = new EventEmitter<UserRole>();
  @Output() deleteRoleEmmit = new EventEmitter<string>();
  @Input() roles : UserRole[] = [];
 
  constructor() { }

 

  addRole(role : UserRole){
    this.addRoleEmmit.emit(role);

  }

  deleteRole(roleId : string){
    this.deleteRoleEmmit.emit(roleId);

  }

}

