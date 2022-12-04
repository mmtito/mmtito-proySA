import { Component } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { DowloandExcelService } from 'src/app/excel/dowloand-excel.service';
import { environment } from 'src/environments/environment';
import { GradeService } from '../grade.service';

@Component({
  selector: 'app-upload-modal-grade',
  templateUrl: './upload-modal-grade.component.html',
  styleUrls: []
})
export class UploadModalGradeComponent  {

  constructor(private dowloandExcelService : DowloandExcelService,
    private gradeService : GradeService,
    private uploadExcelService : DowloandExcelService,
    private snackbar : MatSnackBar) { }
  
  public files : File[] = []; 


  importGrades(files : FileList | null ){
    
    if(files?.length === 0) this.snackbar.open('Ningun archivo seleccionado ❌')
    this.uploadExcelService.onFileSelected(files!, environment.URL+'/api/grade/import-excel')
    ?.subscribe(
      (res)=>{
        this.snackbar.open("Se ha exportado correctamente ​✅​");
        this.gradeService.searchGradesByCareer().subscribe(
          res =>this.gradeService.listGrades = res
        )
      },
      (err)=>{
        this.snackbar.open('Hubo un error al exportar ❌')
      }
    )
    

  }
  
  setFiles(files : File[] | null){
    
    this.files = files ? files : [];

  }

  downloadFile() {
    this.gradeService.downloadFile()
      .subscribe(
        (response ) => {
         this.dowloandExcelService.downloadFile(response);

        }
      )
  }


}
