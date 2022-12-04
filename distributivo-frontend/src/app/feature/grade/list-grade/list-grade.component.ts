import { Component, OnInit } from '@angular/core';
import { GradeService } from '../grade.service';

@Component({
  selector: 'app-list-grade',
  templateUrl: './list-grade.component.html',
  styleUrls: []
})
export class ListGradeComponent implements OnInit {


  constructor(
    public gradeService : GradeService
  ) { }

  ngOnInit(): void {
    this.getGradesForCareer();
  }

  private getGradesForCareer(){
    this.gradeService.getGradesByCareer().subscribe(
      res=> this.gradeService.listGrades = res

    );

  }

}
