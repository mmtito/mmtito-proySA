import { Component, OnInit } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { ActivatedRoute, Router } from '@angular/router';
import { ClassroomService } from '../classroom.service';

@Component({
  selector: 'app-classroom-list',
  templateUrl: './classroom-list.component.html',
  styleUrls: []
})
export class ClassroomListComponent implements OnInit {

  constructor(public classRoomService : ClassroomService,
    private route : ActivatedRoute,
    private snackbar : MatSnackBar

    ) { }

    ngOnInit(): void {
      this.route.queryParams.subscribe(params =>{
      this.getclassRooms(params['page'] || '0');
  
      })
     
    }
  
    public currentId = '';
  
    private getclassRooms(page : string){
      this.classRoomService.getClassrooms(page).subscribe(
        res => {
        this.classRoomService.listClassrooms = res;
      },
      () => this.snackbar.open('Error al traer las aulas ❌')
        )
    }
  
    public delete(){
      this.classRoomService.removeCLassroom(this.currentId).subscribe(
        ()=>{
                  
          this.getclassRooms('0');
          this.snackbar.open("Se ha eliminado el aula correctamente ​✅​");

        }
      );
    
       
    }
    public setCurrentId(id : string){
      this.currentId = id;
    }
  
    public removeCurrentId(){
      this.currentId = '';
    }
  
}
