import { Component} from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { DowloandExcelService } from 'src/app/excel/dowloand-excel.service';
import { environment } from 'src/environments/environment';
import { ScheduleService } from '../schedule.service';

@Component({
  selector: 'app-upload-modal-Schedule',
  templateUrl: './upload-modal-schedule.component.html',
  styleUrls: []
})
export class UploadModalScheduleComponent{

  constructor(private dowloandExcelService : DowloandExcelService,
    private scheduleService : ScheduleService,
    private uploadExcelService : DowloandExcelService,
    private snackbar : MatSnackBar) { }
  
  public files : File[] = []; 


  importSchedules(input : HTMLInputElement ) :any{
    
    if(input.files?.length === 0) return this.snackbar.open('Ningun archivo seleccionado ❌')
    this.uploadExcelService.onFileSelected(input.files!, environment.URL+'/api/schedule/import-excel')
    ?.subscribe(
      ()=>{
        this.snackbar.open("Se ha exportado correctamente ​✅​");
        input.value = '';
        this.scheduleService.reload()
      },
      (err)=>{
        input.value = '';
        this.snackbar.open( 'Error al hacer la exportacion ​​❌')
      }
    )
    

  }


  setFiles(files : File[] | null){
    
    this.files = files ? files : [];

  }

  downloadFile() {
    this.scheduleService.downloadFile()
      .subscribe(
        (response ) => {
         this.dowloandExcelService.downloadFile(response);
        }
      )
  }

}
