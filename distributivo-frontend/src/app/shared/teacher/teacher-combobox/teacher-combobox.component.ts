import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { Teacher } from '../../../feature/teacher/models/teacher';
import { TeacherService } from '../../../feature/teacher/teacher.service';

@Component({
  selector: 'app-teacher-combobox',
  templateUrl: './teacher-combobox.component.html',
  styleUrls: []
})
export class TeacherComboboxComponent implements OnInit {
  
  @Output() emittierTeacher = new EventEmitter<string>();
  @Input() myClass= '';

  constructor(
    private teacherService : TeacherService
  ) { }
   
  public teachers : Teacher[] = [];

  ngOnInit(): void {
  this.getTeachers()
  }

  private getTeachers(){
   this.teacherService.getAllTeacher().subscribe(
    (res)=> this.teachers = res
   )
  }
  public handlerChangeTeacher(id : string){
    this.emittierTeacher.emit(id);
  }

}