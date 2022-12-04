import { Component, EventEmitter, OnInit, Output } from '@angular/core';

@Component({
  selector: 'app-distibutivo-docente-toolbar',
  templateUrl: './distibutivo-docente-toolbar.component.html'
})
export class DistibutivoDocenteToolbarComponent implements OnInit {

  constructor(
  ) { }

  ngOnInit(): void {
  }

  @Output() termEmitterDni = new EventEmitter<string>();
  @Output() termEmitterName = new EventEmitter<string>();
  @Output() termEmitterLastname = new EventEmitter<string>();

  public onInputDni(dni : string){
    this.termEmitterDni.emit(dni);
  }

  public onInputName(name : string){
    this.termEmitterName.emit(name);
  }

  public onInputLastname(lastname : string){
    this.termEmitterLastname.emit(lastname);
  }
}
