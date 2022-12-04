import { Component, OnInit } from '@angular/core';
import { TeacherDtoService } from '../../db/services/teacher-dto.service';
import { TeacherDto } from '../../db/models/teacherDto';
import { ActivatedRoute } from '@angular/router';


@Component({
  selector: 'app-distibutivo-docente-list',
  templateUrl: './distibutivo-docente-list.component.html'
})
export class DistibutivoDocenteListComponent implements OnInit {

  constructor(
    private teacherDtoService: TeacherDtoService,
    private activatedRoute: ActivatedRoute
  ) { }

  ngOnInit(): void {
    this.findAll();
    this.activatedRoute.paramMap.subscribe(
      (params) => {
        if (params.get("id")) {
          this.findById(parseInt(params.get("id")!))
        }
      }
    )
  }

  public teacherDtoList: TeacherDto[] = []

  public findAll(): void {
    this.teacherDtoService.findAll().subscribe(
      (response) => this.teacherDtoList = response
    )
  }

  currentEntity : TeacherDto= {
    id: 0,
    teacherNombre: "",
    teacherid: 0,
    teacherCedula: '',
    teacherApellido: '',
    gradeid: 0,
    cursoName: '',
    subjectid: 0,
    asignaturaName: '',
    asignaturaCode: '',
    perioodid: 0,
    periodName: '',
    careeid: 0,
    careerName: '',
    careerCode: ''
  }
  
  public findById(id: number): void {
    this.teacherDtoService.findByTeacherId(id).subscribe(
      (response) => this.teacherDtoList = response
    )
  }

  public findByTeacherDni(dni: string): void {
    if (dni.length >= 2) {
      this.teacherDtoService.findByTeacherDni(dni).subscribe(
        (response) => this.teacherDtoList = response
      )
    }
    if (dni.length === 0) {
      this.findAll()
    }
  }

  public findByTeacherName(name: string) {
    if (name.length >= 2) {
      this.teacherDtoService.findByTeacherName(name).subscribe(
        (response) => this.teacherDtoList = response
      )
    }
    if (name.length === 0) {
      this.findAll();
    }
  }

  public findByTeacherLastname(lastname: string): void {
    if (lastname.length >= 2) {
      this.teacherDtoService.findByTeacherLastname(lastname).subscribe(
        (response) => this.teacherDtoList = response
      )
    }
    if (lastname.length === 0) {
      this.findAll();
    }
  }

  public findByPeriodoName(periodo: string): void {
    this.teacherDtoService.findByPeriodName(periodo).subscribe(
      (response) => this.teacherDtoList = response
    )
    if (periodo.length === 0) {
      this.findAll()
    }
  }

  public findByCareerName(career : string ):void{
    this.teacherDtoService.findByCareerName(career).subscribe(
      (response) => this.teacherDtoList = response
    )
    if( career.length === 0 ){
      this.findAll();
    }
  }

}
