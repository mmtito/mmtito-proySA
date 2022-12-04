import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { LocationService } from '../location.service';
import { Location } from '../models/location';

@Component({
  selector: 'app-location-combobox',
  templateUrl: './location-combobox.component.html',
  styleUrls: []
})
export class LocationComboboxComponent implements OnInit {

  @Output() locationEventEmittier = new EventEmitter<string>();
  @Input() locationId = '';

  constructor(
    private locationService : LocationService
  ) { }

  public locations :Location[] =[]; 

  ngOnInit(): void {
   this.getLocations();
  }

  changeLocation(value : string){
    this.locationEventEmittier.emit(value);

  }
  
  getLocations(){
    this.locationService.findAllLocations().subscribe(
      (res)=> this.locations = res
    )

  }



}
