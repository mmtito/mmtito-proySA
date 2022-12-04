import { Component, EventEmitter, OnInit, Output } from '@angular/core';

@Component({
  selector: 'app-career-toolbar',
  templateUrl: './career-toolbar.component.html'
})
export class CareerToolbarComponent implements OnInit {

  constructor() { }
  
  @Output() termEmitter = new EventEmitter<string>();

  ngOnInit(): void {
  }

  public onInput(term : string){
    this.termEmitter.emit(term); 
  }

}
