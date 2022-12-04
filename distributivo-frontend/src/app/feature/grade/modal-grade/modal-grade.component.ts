import { Component, OnInit, SimpleChanges } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { ActivatedRoute } from '@angular/router';
import { GradeService } from '../grade.service';
import { Grade } from '../models/grade';

@Component({
  selector: 'app-modal-grade',
  templateUrl: './modal-grade.component.html',
  styleUrls: [],
})
export class ModalGradeComponent implements OnInit {
  constructor(
    private gradeService: GradeService,
    private route: ActivatedRoute,
    private snackbar: MatSnackBar
  ) {}
  ngOnInit(): void {
    this.route.queryParams.subscribe((params) => {
      this.currentId = params['g'] || '';

      if (!this.validateId()) this.findById();
    });
  }

  currentId = '';

  public currentEntity: Grade = this.getClearGrade();

  private findById() {
    this.gradeService.getGrade(this.currentId).subscribe(
      (res) => (this.currentEntity = res),
      () => this.snackbar.open('Ocurrio un error al buscar el curso ❌')
    );
  }

  public saveOrUpdate() {
    if (this.validate())
      return this.snackbar.open('Algunos campos son necesarios ❕');
    if (this.validateId()) return this.save();
    this.update();
  }

  private save(): any {

    return this.gradeService.saveGrade(this.currentEntity).subscribe(
      () => {
        this.snackbar.open('Se guardo correctamente el curso ✅');
        this.gradeService.reload();
      },
      () => this.snackbar.open('Ocurrio un error al guardar el curso ❌')
    );
  }

  private update() {
    return this.gradeService.updateGrade(this.currentEntity).subscribe(
      () => {
        this.snackbar.open('Se edito correctamente el curso ✅');
        this.gradeService.reload();
      },
      () => this.snackbar.open('Ocurrio un error al editar el curso ❌')
    );
  }

  getClearGrade() {
    return {
      id: '',
      name: '',
      careerName: '',
      level: null,
      parallel: null,
      status: true,
      workingDay: null,
      career: '',
    };
  }
  removeCurrentEntity() {
    this.currentEntity = this.getClearGrade();
  }

  private validateId() {
    return !this.currentId || this.currentId.length == 0;
  }

  addCareer(value: string) {
    this.currentEntity.career = value;
  }

  private validate() {
    return (
      //this.currentEntity.coordinates.length < 10 ||
      this.currentEntity.name.length < 4 //||
      //this.currentEntity.description.length == 0
    );
  }
}
