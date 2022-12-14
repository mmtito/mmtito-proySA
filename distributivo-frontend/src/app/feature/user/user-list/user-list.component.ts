import { Component, OnInit } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { ActivatedRoute, Router } from '@angular/router';
import { UserService } from '../user.service';

@Component({
  selector: 'app-user-list',
  templateUrl: './user-list.component.html',
  styleUrls: []
})
export class UserListComponent implements OnInit {

  constructor(public userService: UserService,
    private route: ActivatedRoute,
    private snackbar: MatSnackBar

  ) { }

  ngOnInit(): void {
    this.route.queryParams.subscribe(params => {
      this.getUsers(params['page'] || '0');

    })

  }

  public currentId = '';

  private getUsers(page: string) {
    this.userService.getUsers(page).subscribe(
      res => {
        this.userService.listUsers = res;
      },
      () => this.snackbar.open('Error al obtener los usuarios ​​❌')

    )
  }

  public delete() {
    this.userService.removeUser(this.currentId).subscribe(() => {

      this.getUsers('0');
      this.snackbar.open("Usuario eliminado correctamente ​✅​");

    });



  }
  public setCurrentId(id: string) {
    this.currentId = id;
  }

  public removeCurrentId() {
    this.currentId = '';
  }

}
