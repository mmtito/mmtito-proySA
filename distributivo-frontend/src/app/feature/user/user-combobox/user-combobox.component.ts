import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { UserService } from '../user.service';
import { User } from '../models/user';

@Component({
  selector: 'app-user-combobox',
  templateUrl: './user-combobox.component.html',
  styleUrls: []
})
export class UserComboboxComponent implements OnInit {

  @Output() UserEventEmittier = new EventEmitter<string>();
  @Input() UserId = '';

  constructor(
    private UserService : UserService
  ) { }

  public Users :User[] =[]; 

  ngOnInit(): void {
   this.getUsers();
  }

  changeUser(value : string){
    this.UserEventEmittier.emit(value);

  }
  
  getUsers(){
    this.UserService.findAllUsers().subscribe(
      (res)=> this.Users = res
    )

  }



}
