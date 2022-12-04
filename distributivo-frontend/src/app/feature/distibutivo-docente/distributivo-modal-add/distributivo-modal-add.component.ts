import { Component, OnInit  } from '@angular/core';
import { Distributive } from '../../db/models/distributive';
import { TeacherDtoService } from '../../db/services/teacher-dto.service';

@Component({
  selector: 'app-distributivo-modal-add',
  templateUrl: './distributivo-modal-add.component.html'
})
export class DistributivoModalAddComponent implements OnInit {

  constructor(
    private teacherDtoService: TeacherDtoService
  ) { }

  ngOnInit(): void {
  }
 
  
  currentEntity: Distributive = {
    id: 0,
    schoolTime: 0,
    teacher: 0,
    course: 0,
    grade: 0,
    career: 0
  }

  public handlerChangeCareer(id : string){
    this.currentEntity.career = parseInt(id);
    console.log(id);
  }

  public handlerChangeGrade(id : string){
    this.currentEntity.grade = parseInt(id);
    console.log(id);
  }

  public handlerChangeteacher(id : string){
    this.currentEntity.teacher = parseInt(id);
    console.log(id);
  }

  public handlerChangePeriodo(id : string){
    this.currentEntity.schoolTime = parseInt(id);
    console.log(id)
  }

  public handlerChangeCouse( id : string ){
    this.currentEntity.course = parseInt(id);
    console.log(id);
  }

  public save(): void {
    this.teacherDtoService.save(this.currentEntity).subscribe(
      () => {
        this.currentEntity = {
          id: 0,
          schoolTime: 0,
          teacher: 0,
          course: 0,
          grade: 0,
          career: 0
        };
      }
    )
    console.log("Los datos se han enviado correctamente")
  }
}
