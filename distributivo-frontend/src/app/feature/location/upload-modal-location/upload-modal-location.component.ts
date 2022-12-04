import { Component, OnInit } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { DowloandExcelService } from 'src/app/excel/dowloand-excel.service';
import { environment } from 'src/environments/environment';
import { LocationService } from '../location.service';

@Component({
  selector: 'app-upload-modal-location',
  templateUrl: './upload-modal-location.component.html',
  styleUrls: []
})
export class UploadModalLocationComponent {

  constructor(private dowloandExcelService : DowloandExcelService,
    private locationService : LocationService,
    private uploadExcelService : DowloandExcelService,
    private snackbar : MatSnackBar) { }
  
  public files : File[] = []; 



  importLocations(input : HTMLInputElement ) : any{
    
    if(input.files?.length == 0) return this.snackbar.open('Ningun archivo seleccionado ❌')
    this.uploadExcelService.onFileSelected(input.files!, environment.URL+'/api/location/import-excel')
    ?.subscribe(
      ()=>{
        this.snackbar.open('Se han exportado correctamente las ubicaciones ')
       
        input.value = '';
      },
      ()=>{
        input.value = '';
        this.snackbar.open('Hubo un error al exportar ❌')
      }
    )
    

  }
  
  setFiles(files : File[] | null){
    
    this.files = files ? files : [];

  }

  downloadFile() {
    this.locationService.downloadFile()
      .subscribe(
        (response ) => {
         this.dowloandExcelService.downloadFile(response);
        }
      )
  }

}
