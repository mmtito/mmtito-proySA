import { Component, OnInit } from '@angular/core';
import { User } from 'src/app/feature/user/models/user';
import { UserService } from 'src/app/feature/user/user.service';
import { ActivatedRoute, Router } from '@angular/router';
import { MatSnackBar } from '@angular/material/snack-bar';


@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html'
})
export class SidebarComponent implements OnInit {

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
