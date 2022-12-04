import { Component, OnInit } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { ActivatedRoute, Params, Route } from '@angular/router';
import {
  CordenatesEvent,
  Event,
  Hour,
  ScheduleEvents,
} from '../models/scheduleData';
import { ScheduleService } from '../schedule.service';
@Component({
  selector: 'app-calendar',
  templateUrl: './calendar.component.html',
  styleUrls: [],
})
export class CalendarComponent implements OnInit {
  public events: ScheduleEvents = {
    toFrom : [],
    hours : []
  };
  constructor(
   private scheduleService : ScheduleService,
   private route : ActivatedRoute,
   private snackBar : MatSnackBar
  ) {}

  public currentEntity: Event = {
    id : '',
    classroom: '',
    day: '',
    hour: '',
    grade : '',
    subject: '',
    teacher: {
      name: '',
      color: '',
    },
  };
  public loading = false;


  ngOnInit(): void {
   if(this.events.hours.length > 0) return;

     this.route.queryParams.subscribe((params : Params)=>{
      
      if(this.verifyMustReload(params)) return
      this.getSchedule(params);
    });
  
  }

  private verifyMustReload(params : Params){
    return (!params['fd'] || !params['td'] || !this.scheduleService.mustReload)
  }
  

  getSchedule(params : Params){
    this.loading = true;
    this.scheduleService.getSchedule(this.generateQuerys(params))
    .subscribe(res=>{
      this.events = res 
      this.loading = false
   },
      ()=>this.snackBar.open('Error al traer los eventos ❌​​ '))
  }


  giveEvent(day: string, hour: Hour): Event {
   

    const event = hour.events.find((value) =>value.day == day);
     return !event ? this.setNoneEvent(day, hour.position) : event;
  }
  

  public deleteEvent(){
    this.scheduleService.deleteEvent(this.currentEntity.id).subscribe(
      ()=> {
        this.scheduleService.reload();
        this.snackBar.open('Se ha eliminado el evento ✅​ ');
        document.getElementById('modal-view-event-calendar')?.click()
      },
      ()=>this.snackBar.open('Ha ocurrido un error al eliminar el evento ❌​​ ')
    )
  }

  handleClickItem(item: CordenatesEvent) {
    
    const index = this.events.hours.findIndex(
      (hour) => hour.position == item.hour
    );

    this.currentEntity =
      this.events.hours[index].events.find(
        (event) => event.day == item.day && event.hour == item.hour
      ) || this.currentEntity;
    if(item.created) document.getElementById('label-modal-view-event-calendar')?.click();
    else {
      this.scheduleService.addQueryParam({
        hour : item.hour,
        day : item.day
      }, false);

      document.getElementById("modal-event-calendar")?.click()
    }
  }

  private generateQuerys(params : Params) {
    const querys = `?room=${params['room'] || ''}&grade=${params['grade'] || ''}
    &td=${params['td'] || ''}&fd=${params['fd'] || ''}&teacher=${params['teacher'] || ''}`
    return querys
  };

  private setNoneEvent(day: string, hour: string): Event {
    return {
      id : '',
      classroom: '',
      grade : '',
      day: day,
      hour: hour,
      subject: '',
      teacher: {
        color: 'white',
        name: '',
      },
    };
  }
}