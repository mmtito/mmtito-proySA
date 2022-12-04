import { Component, OnInit } from '@angular/core';
import { UserService } from '../user.service';

@Component({
  selector: 'app-pagination-user',
  templateUrl: './pagination-user.component.html',
  styleUrls: []
})
export class PaginationUserComponent implements OnInit {

  

  constructor(
    public userService : UserService
  ) { }

  ngOnInit(): void {
    

  }
  press(){
    alert(this.userService.listUsers.totalPages);
  }

  counter(i: number) {
    return new Array(i);
}
  

}
