import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { Career } from '../models/career';

@Component({
  selector: 'app-card-career',
  templateUrl: './card-career.component.html',
  styleUrls: []
})
export class CardCareerComponent implements OnInit {

  constructor() { }
  @Input() career :Career = {
    duration: 0,
    id: '',
    img: '',
    name: '',
    status: true,
    code: ''
  } 

  @Output() emittierId = new EventEmitter<string>();



  ngOnInit(): void {
  
  }

  handlerPressDelete(id : string){
      this.emittierId.emit(id);
  }


}
