import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';

@Component({
  selector: 'app-toolbar-teacher',
  templateUrl: './toolbar-teacher.component.html'
})
export class ToolbarTeacherComponent implements OnInit {

  @Input() entityName: string = "docente1";
  @Output() termEmitter = new EventEmitter<string>();

  constructor() { }

  ngOnInit(): void {
  }

  public onInput(term : string ){
    this.termEmitter.emit(term);
  }
  
}
