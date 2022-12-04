import { Component, Input, OnInit } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { GradeService } from '../grade.service';
import { Grade } from '../models/grade';

@Component({
  selector: 'app-card-grade',
  templateUrl: './card-grade.component.html',
  styleUrls: []
})
export class CardGradeComponent implements OnInit {
  
  @Input() grade : Grade= {
    career : '',
    careerName : '',
    id : '',
    level : null,
    name : '',
    parallel : null,
    status : true,
    workingDay : null
    
  };

  constructor(
    private gradeService : GradeService,
    private snackbar : MatSnackBar
  ) { }

  ngOnInit(): void {
  }

  delete(id : string){
    this.gradeService.removeGrade(id).subscribe(     () => {
      this.snackbar.open('Se elimino el curso correctamente ✅');
      this.gradeService.reload();
    },
    () => this.snackbar.open('Hubo un error al eliminar el curso ❌')
    )
  }

  

}
