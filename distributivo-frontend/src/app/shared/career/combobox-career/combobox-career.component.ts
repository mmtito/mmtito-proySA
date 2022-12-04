import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { CareerService } from 'src/app/feature/career/career.service';
import { Career } from '../../../feature/grade/models/career';

@Component({
  selector: 'app-combobox-career',
  templateUrl: './combobox-career.component.html',
  styleUrls: []
})
export class ComboboxCareerComponent implements OnInit {

  constructor(
    private carrerService : CareerService,
  ) { }

  @Output() careerSelectEvent  = new EventEmitter<string>();
  @Input() careerId : string =  '';
  @Input() myClass = '';
   
  public careers : Career[] = [];
  ngOnInit(): void {
    this.getCareers();
  }

  getCareers(){
    this.carrerService.findAll().subscribe(
      (res)=>this.careers= res
    )

  }

  addCareerEmittier(id : string){
    this.careerSelectEvent.emit(id);
  }

}
