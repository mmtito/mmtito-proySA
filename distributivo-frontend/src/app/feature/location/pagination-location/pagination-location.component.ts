import { Component, OnInit } from '@angular/core';
import { LocationService } from '../location.service';

@Component({
  selector: 'app-pagination-location',
  templateUrl: './pagination-location.component.html',
  styleUrls: []
})
export class PaginationLocationComponent implements OnInit {

  

  constructor(
    public locationService : LocationService
  ) { }

  ngOnInit(): void {
    

  }
  press(){
    alert(this.locationService.listLocations.totalPages);
  }

  counter(i: number) {
    return new Array(i);
}
  

}
