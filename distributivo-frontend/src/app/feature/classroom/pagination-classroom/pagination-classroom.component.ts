import { Component, OnInit } from '@angular/core';
import { ClassroomService } from '../classroom.service';

@Component({
  selector: 'app-pagination-classroom',
  templateUrl: './pagination-classroom.component.html',
  styleUrls: []
})
export class PaginationClassroomComponent implements OnInit {

  

  constructor(
    public classRoomService : ClassroomService
  ) { }

  ngOnInit(): void {
    

  }
  press(){
    alert(this.classRoomService.listClassrooms.totalPages);
  }

  counter(i: number) {
    return new Array(i);
}
  

}
