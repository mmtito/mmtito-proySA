import { Component, OnInit } from '@angular/core';
import { GradeService } from '../grade.service';
import { GradeForCareer } from '../models/gradeForCareer';

@Component({
  selector: 'app-toolbar-grade',
  templateUrl: './toolbar-grade.component.html',
  styleUrls: []
})
export class ToolbarGradeComponent implements OnInit {

  constructor(
    private gradeService : GradeService
  ) { }

  
  ngOnInit(): void {
    
  }

  handleClickSearch(value : string) : any
   {
    if(value.length == 0)this.gradeService.getGradesByCareer().subscribe(
      (data)=> this.setListGrades(data)
    );
    else
    this.gradeService.getGradeByName(value).subscribe(
      (data)=>{
        this.setListGrades(data);
      }
      
)

  }
  public setListGrades(grades : GradeForCareer[]){
    this.gradeService.listGrades = grades

  }
  

}
