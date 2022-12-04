import { Component, OnInit,EventEmitter, Output, Input } from '@angular/core';
import { MatDatepickerInputEvent } from '@angular/material/datepicker';
import { PickDate } from '../models/datePick';


@Component({
  selector: 'app-date-picker',
  templateUrl: './date-picker.component.html',
  styleUrls: []
}) 
export class DatePickerComponent implements OnInit {

  constructor() { }   
  ngOnInit(): void {
  }
 
  @Output() changeDate = new EventEmitter<PickDate>();
  
  private date : PickDate = {
    start : null,
    end : null
  } 

  addDateStart(type: string, event: MatDatepickerInputEvent<Date>) {
    this.date.start =event.value;
    this.changeDate.emit(this.date);
  }
  addDateEnd(type: string, event: MatDatepickerInputEvent<Date>) {
    this.date.end =event.value;
    this.changeDate.emit(this.date);
  }
}
