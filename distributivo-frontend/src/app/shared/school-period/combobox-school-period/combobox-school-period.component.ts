import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { SchoolPeriodService } from 'src/app/feature/db/services/school-period.service'; 
import { SchoolPeriod } from 'src/app/feature/db/models/schoolPeriod';

@Component({
  selector: 'app-combobox-school-period',
  templateUrl: './combobox-school-period.component.html'
})
export class ComboboxSchoolPeriodComponent implements OnInit {

  constructor(
    private schoolPeriodService : SchoolPeriodService
  ) { }

  @Output() periodSelectEvent = new EventEmitter<string>();
  @Input() myClass = '';

  public addPeriodEmitter(id : string){
    this.periodSelectEvent.emit(id);
  }
  
  ngOnInit(): void {
    this.findAll()
  }

  schoolPeriodList : SchoolPeriod[] = []
  
  public findAll():void{
    this.schoolPeriodService.findAll().subscribe(
      (response) => this.schoolPeriodList = response
    )
  }

}
