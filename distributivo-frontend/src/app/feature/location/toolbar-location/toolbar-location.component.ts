import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { LocationService } from '../location.service';
import { Location } from '../models/location';

@Component({
  selector: 'app-toolbar-location',
  templateUrl: './toolbar-location.component.html',
  styleUrls: []
})
export class ToolbarLocationComponent implements OnInit {

  constructor(
    private locationService : LocationService,

  ) { }

  ngOnInit(): void {
    
  }

  handleClickSearch(value : string){
    this.locationService.getLocationByName(value).subscribe(
      (data)=>{
        this.setListLocations(data);
      }
      
)

  }
  public setListLocations(locations : Location[]){
    this.locationService.listLocations = {
      capacity : 0,
      totalPages : 0,
      total : 0, 
      page : 0 ,
      locations : locations
    }

  }

}
