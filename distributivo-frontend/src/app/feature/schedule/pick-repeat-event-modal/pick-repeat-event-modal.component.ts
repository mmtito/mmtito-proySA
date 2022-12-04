import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { DayWeekSelect } from '../models/dayWeekSelect';
import { days } from '../helpers/daysWeek';
import { RangeOptEvent } from '../models/rangeOptEvent';
import { PickDate } from '../models/datePick';

@Component({
  selector: 'app-pick-repeat-event-modal',
  templateUrl: './pick-repeat-event-modal.component.html',
  styleUrls: ['./pick-repeat-event-modal.component.css'],
})
export class PickRepeatEventModalComponent implements OnInit {
  constructor() {}

  @Output() changerange = new EventEmitter<RangeOptEvent>();
  @Output() cancel = new EventEmitter<string>();

  public rangeOptEvent: RangeOptEvent = {
    start: null,
    end: null,
    days: [],
  };

  ngOnInit(): void {
    this.setDays();
  }
  private setDays() {
    if (this.rangeOptEvent.days.length != 0) return;
    this.rangeOptEvent.days = days;
    this.changerange.emit(this.rangeOptEvent);
  }
  handlerClickElement(index: number) {
    let isSelect = this.rangeOptEvent.days[index].select;
    this.rangeOptEvent.days[index].select = !isSelect;
    this.changerange.emit(this.rangeOptEvent);
  }

  handlerCancel() {
    this.rangeOptEvent.days = days.map((val) => {
      val.select = false;
      return val;
    });
    this.cancel.emit('');
  }

  setStartAndEndDate(range: PickDate) {
    this.rangeOptEvent.end = range.end;
    this.rangeOptEvent.start = range.start;
    this.changerange.emit(this.rangeOptEvent);
  }
}
