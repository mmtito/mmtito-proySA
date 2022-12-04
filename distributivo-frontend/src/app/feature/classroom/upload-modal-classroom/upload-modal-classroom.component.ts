import { Component, OnInit } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { DowloandExcelService } from 'src/app/excel/dowloand-excel.service';
import { environment } from 'src/environments/environment';
import { ClassroomService } from '../classroom.service';

@Component({
  selector: 'app-upload-modal-classroom',
  templateUrl: './upload-modal-classroom.component.html',
  styleUrls: []
})
export class UploadModalClassroomComponent {

  constructor(private dowloandExcelService : DowloandExcelService,
    private classroomService : ClassroomService,
    private uploadExcelService : DowloandExcelService,
    private snackbar : MatSnackBar) { }
  
  public files : File[] = []; 



  importLocations(files : FileList | null ):any {
    
    if(files?.length === 0) return this.snackbar.open('No existe ningun archivo seleccionado ❌')
    this.uploadExcelService.onFileSelected(files!, environment.URL+'/api/classroom/import-excel')
    ?.subscribe(
      (r)=>{
        this.snackbar.open("Se ha exportado correctamente ​✅​");
        this.classroomService.getClassrooms('0').subscribe(
          res =>this.classroomService.listClassrooms = res
        )
      },
      ()=>{
        this.snackbar.open('Hubo un error al exportar ❌')
      }
    )
    

  }
  
  setFiles(files : File[] | null){
    
    this.files = files ? files : [];

  }

  downloadFile() {
    this.classroomService.downloadFile()
      .subscribe(
        (response ) => {
         this.dowloandExcelService.downloadFile(response);

        }
      )
  }

}
