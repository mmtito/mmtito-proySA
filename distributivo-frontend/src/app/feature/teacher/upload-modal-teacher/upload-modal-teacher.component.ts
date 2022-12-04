import { Component, OnInit } from '@angular/core';
import { DowloandExcelService } from 'src/app/excel/dowloand-excel.service';
import { environment } from 'src/environments/environment';
import { TeacherService } from '../../db/services/teacher.service';

@Component({
  selector: 'app-upload-modal-teacher',
  templateUrl: './upload-modal-teacher.component.html'
})
export class UploadModalTeacherComponent implements OnInit {

  constructor(
    private dowloandExcelService: DowloandExcelService,
    private teacherService: TeacherService,
    private uploadExcelService: DowloandExcelService) { }

  public files: File[] = [];

  ngOnInit(): void {
  }

  importTeacher(files: FileList | null) {

    if (files?.length === 0) return 
    this.uploadExcelService.onFileSelected(files!, environment.URL+'/api/teacher/import-excel')
      ?.subscribe(
        (res) => {
        },
        (err) => {
        }
      )


  }

  setFiles(files: File[] | null) {

    this.files = files ? files : [];

  }

  public generateExcelFile() {
    this.teacherService.generateExcelFile().subscribe(
      (response) => {
        this.dowloandExcelService.downloadFile(response);
      }
    )
  }
}
