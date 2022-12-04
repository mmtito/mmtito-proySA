import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';

@Component({
  selector: 'app-classroom-type-combobox',
  templateUrl: './classroom-type-combobox.component.html',
  styleUrls: []
})
export class ClassroomTypeComboboxComponent implements OnInit {

  @Output() changeTypeEvent : EventEmitter<string> = new EventEmitter();
  @Input() type : string = '';  
  constructor() { }

  ngOnInit(): void {
  }

  onChangeType(id : string){
    this.changeTypeEvent.emit(id);

  }

}
