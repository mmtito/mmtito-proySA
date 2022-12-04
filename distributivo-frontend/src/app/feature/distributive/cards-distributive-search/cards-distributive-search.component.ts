import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { DistributiveService } from '../distributive.service';
import { Distributive } from '../models/distributive';

@Component({
  selector: 'app-cards-distributive-search',
  templateUrl: './cards-distributive-search.component.html',
  styleUrls: []
})
export class CardsDistributiveSearchComponent implements OnInit {

  constructor(
    private distributiveService : DistributiveService
  ) { }

  public listDistributive : Distributive[] = [];
  public currentDisId = '';
@Output() distributiveEmittier =  new EventEmitter<string>()
  ngOnInit(): void {
  }

  public search(email : string){
     if(email.length == 0) return;
    this.distributiveService.searchByEmail(email).subscribe
    (
      (res)=> this.listDistributive = res
    )
  }
  public handlerSelect(id : string){
 
    this.currentDisId = id
;    this.distributiveEmittier.emit(id);

  }
  

}
