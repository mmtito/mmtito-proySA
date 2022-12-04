import { Component, OnInit } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { ActivatedRoute, Params } from '@angular/router';
import { RangeOptEvent } from '../models/rangeOptEvent';
import { SaveEventDTO } from '../models/saveEventDTO';
import { ScheduleService } from '../schedule.service';

@Component({
  selector: 'app-modal-schedule',
  templateUrl: './modal-schedule.component.html',
  styleUrls: []
})


export class ModalScheduleComponent implements OnInit {
  
  constructor(
    private routed : ActivatedRoute,
    private scheduleService : ScheduleService,
    private snackBar : MatSnackBar
  ) { }
 
  public currentEntity = this.getNullevent();
  

  ngOnInit(): void {
    this.routed.queryParams.subscribe(
      (params)=> {this.setDayAndHour(params)
      } 
    )
  }

  public saveOrSaveRange(){
    console.log(this.currentEntity)
    if(this.verifyIfIsRange())this.saveRange()
    else this.save();
  
  }

  private save(){
    this.scheduleService.save(this.currentEntity).subscribe(
      () => {
        this.snackBar.open('Se han guardado el evento ✅​')
        this.scheduleService.reload()
      },()=>this.snackBar.open('Hubo un error al guardar el evento ❌​​')
    );

  }

  private saveRange(){
    this.scheduleService.saveRange(this.currentEntity).subscribe(
      () => {
        this.snackBar.open('Se han guardado los eventos ✅​')
        this.scheduleService.reload()
      },()=>this.snackBar.open('Se han guardado los eventos ❌​​')
    );

  }

  cancelRange(){
    this.currentEntity.rangeOpt!.days = [];
  }

  public setRange(rangeOpt : RangeOptEvent){
    this.currentEntity.rangeOpt = rangeOpt;
  }

  private verifyIfIsRange() : boolean{
    return this.currentEntity?.rangeOpt && this.currentEntity.rangeOpt.days.some(day => day.select)
    && !!this.currentEntity.rangeOpt.start && !!this.currentEntity.rangeOpt.start
    ? true
    :false;
    
  }

  private setDayAndHour(params : Params){
    this.currentEntity.date = params['day'] || '';
    this.currentEntity.hour = params['hour']  || '';
  }

  public setOccupiedBy(id : string){
    this.currentEntity.occupiedBy = id;
  }

  public setClassroom( id : string ){
    this.currentEntity.classroom = id;
  }

  public setPeriod( id : string ){
    this.currentEntity.schoolPeriod = id;
  }


  public getNullevent(): SaveEventDTO {
    return {
      classroom : '',
      date : '',
      hour : '',
      occupiedBy : '',
      schoolPeriod : '4',
      rangeOpt : null
  }  
  }}