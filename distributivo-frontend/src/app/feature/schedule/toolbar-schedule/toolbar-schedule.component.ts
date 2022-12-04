import { Component, OnInit } from '@angular/core';
import { ScheduleService } from '../schedule.service';
import FromToDay from '../util/DateChange'

@Component({
  selector: 'app-toolbar-schedule',
  templateUrl: './toolbar-schedule.component.html',
  styleUrls: []
})
export class ToolbarScheduleComponent implements OnInit {

  constructor(
    private scheduleService : ScheduleService
 
  ) { }

  public dates : FromToDay  =  FromToDay.getCurrentFromToDay();
  public dateForCLient : string = '';



  ngOnInit(): void {
    this.setParamsDay();
    this.dateForCLient = this.dates.getDateForClient()
    
  }
  
  setParamsDay(){
    const from = this.dates.dateFrom.toLocaleDateString().split('/');
    const to = this.dates.dateTo.toLocaleDateString().split('/');
    
    this.scheduleService.addQueryParam({
     fd : `${from[2]}-${from[1]}-${from[0]}`,
     td : `${to[2]}-${to[1]}-${to[0]}`
    })
  }


  onChangeClassroom(id : string){
 
  this.scheduleService.addQueryParam({ room : id });

  }

  onChangeGrade(id : string){
    this.scheduleService.addQueryParam({ grade : id });
  }
  
  onChangeTeacher(id : string){
    this.scheduleService.addQueryParam({ teacher : id });
  }
  
  handlerClickNextWeek(){
    this.dates.next()
    this.dateForCLient = this.dates.getDateForClient();
    this.setParamsDay()

  }
  
  handlerClickRedoWeek(){
    this.dates.redo()
    this.dateForCLient = this.dates.getDateForClient();
    this.setParamsDay()
  }

}
