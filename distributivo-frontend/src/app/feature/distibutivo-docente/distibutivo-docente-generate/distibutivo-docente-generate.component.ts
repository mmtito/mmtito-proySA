import { Component, OnInit } from '@angular/core';
import { TeacherDtoService } from '../../db/services/teacher-dto.service'; 
import { DowloandExcelService } from 'src/app/excel/dowloand-excel.service';

@Component({
  selector: 'app-distibutivo-docente-generate',
  templateUrl: './distibutivo-docente-generate.component.html'
})
export class DistibutivoDocenteGenerateComponent implements OnInit {

  constructor(
    private dowloandExcelService: DowloandExcelService,
    private teacherDtoService : TeacherDtoService
  ) { }

  ngOnInit(): void {
  }

  generateExcelFile(){
    this.teacherDtoService.generateExcelFile().subscribe(
      (response) => {
        this.dowloandExcelService.downloadFile(response);
      }
    )
  }

}
