import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { Subject } from 'src/app/feature/db/models/subject'; 
import { SubjectService } from 'src/app/feature/db/services/subject.service';

@Component({
  selector: 'app-combobox-cours',
  templateUrl: './combobox-cours.component.html'
})
export class ComboboxCoursComponent implements OnInit {

  constructor(
    private subjectService : SubjectService
  ) { }

  ngOnInit(): void {
    this.findAll()
  }

  @Output() subjectSelectEvent = new EventEmitter<string>();
  @Input() myClass = '';

  public addSubjectEmitter(id : string){
    this.subjectSelectEvent.emit(id);
  }

  subjectList : Subject[] = [];
  
  public findAll(): void { 
    this.subjectService.findAll().subscribe(
      (response) => this.subjectList = response
    )
  }
}

  
