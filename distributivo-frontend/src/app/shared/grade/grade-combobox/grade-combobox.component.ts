import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { GradeService } from '../../../feature/grade/grade.service';
import { Grade } from '../../../feature/grade/models/grade';

@Component({
  selector: 'app-grade-combobox',
  templateUrl: './grade-combobox.component.html',
  styleUrls: []
})
export class GradeComboboxComponent implements OnInit {
  
  constructor(
    private gradeService : GradeService
  ) { }
  @Output() changeGradeEmittier = new EventEmitter<string>();
  public grades : Grade[] = []; 
  @Input() gradeId : string = '';
  @Input() myClass = '';

  ngOnInit(): void {
    this.getGrades();
  }

  public handleChangeGrade(id : string){
    this.changeGradeEmittier.emit(id);
  }

  getGrades(){
    this.gradeService.findAllGrades().subscribe(
      (res)=> {
        this.grades = res}
    )
    

  }

}
