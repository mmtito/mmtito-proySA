import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { CordenatesEvent, Event } from '../models/scheduleData';

@Component({
  selector: 'app-item-calendar',
  templateUrl: './item-calendar.component.html',
  styleUrls: []
})
export class ItemCalendarComponent {

  constructor() { }
  @Input() event : Event = {
    id : '',
    classroom : '',
    hour : '',
    grade : '',
    day : '',
    subject : '',
    teacher : {
      color : 'red',
      name : ''
    }
  }

  @Output() clickItemEmittier = new EventEmitter<CordenatesEvent>();


  onClickItem(){

    this.clickItemEmittier.emit({
      hour : this.event.hour,
      day : this.event.day,
      created : this.event.teacher.name.length !== 0
    });
  }






}
