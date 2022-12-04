import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { SchoolPeriod } from '../../db/models/schoolPeriod';
import { SchoolPeriodService } from '../../db/services/school-period.service';
import { Career } from '../../db/models/career';
import { CareerService } from '../../db/services/career.service';


@Component({
  selector: 'app-distibutivo-docente-combobox',
  templateUrl: './distibutivo-docente-combobox.component.html',
})
export class DistibutivoDocenteComboboxComponent implements OnInit {

  constructor(
    private schoolPeriodService : SchoolPeriodService,
    private careerService : CareerService
  ) { }

  ngOnInit(): void {
    this.findAll()
  }

  schoolPeriodList : SchoolPeriod[] = [];
  careerList : Career[] = [];

  public findAll():void{
    this.schoolPeriodService.findAll().subscribe(
      (response) => this.schoolPeriodList = response
    )
    this.careerService.findAll().subscribe(
      (response) => this.careerList = response
    )
  }

  @Output() termEmitterPeriod = new EventEmitter<string>();

  public onInputPeriod(periodo : string){
    this.termEmitterPeriod.emit(periodo);
  }

  @Output() termEmitterCareer = new EventEmitter<string>();

  public onInputCareer(career : string):void{
    this.termEmitterCareer.emit(career);
  }
}
