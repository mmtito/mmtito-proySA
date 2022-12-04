import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { ClassroomService } from '../../../feature/classroom/classroom.service';
import { ClassRoom } from '../../../feature/classroom/models/classroom';

@Component({
  selector: 'app-classroom-combobox',
  templateUrl: './combobox-classroom.component.html',
  styleUrls: []
})
export class ComboboxClassroomComponent implements OnInit {

  constructor(
    private classroomService : ClassroomService,
  ) { }

  @Output() classroomSelectEvent  = new EventEmitter<string>()
  @Input() classroomId : string =  '';
   
  public classrooms : ClassRoom[] = [];
  ngOnInit(): void {
    this.getClassrooms();
  }

  getClassrooms(){
    this.classroomService.findAllClassrooms().subscribe(
      (res)=>this.classrooms= res
    )

  }

  addclassroomEmittier(id : string){
    this.classroomSelectEvent.emit(id);

  }

}
