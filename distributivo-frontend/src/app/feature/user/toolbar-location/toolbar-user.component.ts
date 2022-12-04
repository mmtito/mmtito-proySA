import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { UserService } from '../user.service';
import {  User } from '../models/user';

@Component({
  selector: 'app-toolbar-user',
  templateUrl: './toolbar-user.component.html',
  styleUrls: []
})
export class ToolbarUserComponent implements OnInit {

  constructor(
    private UserService : UserService,

  ) { }

  ngOnInit(): void {
    
  }

  handleClickSearch(value : string){
    this.UserService.getUserByName(value).subscribe(
      (data)=>{
        this.setListUsers(data);
      }
      
)

  }
  public setListUsers(users : User[]){
    this.UserService.listUsers = {
      capacity : 0,
      totalPages : 0,
      total : 0, 
      page : 0 ,
      users : users
    }

  }

}
