import { Component, Input, OnChanges, OnInit, SimpleChanges } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { Router } from '@angular/router';
import { LocationService } from '../location.service';
import { Location } from '../models/location';

@Component({
  selector: 'app-modal-location',
  templateUrl: './modal-location.component.html',
  styleUrls: []
})
export class ModalLocationComponent implements OnChanges  {
   
  constructor( private locationService : LocationService,
  private router : Router ,
  private snackbar : MatSnackBar) { }
  
  @Input() currentId = '';

  public currentEntity :Location ={
    id : '',
    name : '',
    latitude : 0,
    longitude : 0,
    description : '',
    status : true
  } 
  ngOnChanges(changes: SimpleChanges) {
    if(!this.validateId()) this.findById();
  }

  private findById(){

    this.locationService.getLocation(this.currentId).subscribe(
      (res)=>{
        this.currentEntity = res;
      },
      (err)=>{
        this.snackbar.open('Hubo un error al buscar la ubicacion ❌')
        
      }
    )

  }

  save() : any {
    if(!this.validate()){
     
      return this.locationService.saveLocation(this.currentEntity).subscribe(
        ()=>{
          this.snackbar.open("Se ha guardado la ubicacion correctamente ​✅​");
          this.reload();
        },
        ()=> this.snackbar.open('Hubo un error al guardar la ubicacion ❌')
        )
    }
    this.snackbar.open('Los datos ingresados no son correctos ❌')

  }

  removeCurrentEntity(){
    this.currentEntity = {
      latitude : 0,
      longitude : 0,
      description : '',
      id : '',
      name : '',
      status : true
    }

  }

  private reload(){
    this.router.navigateByUrl('/layout', { skipLocationChange: true }).then(() => {
      this.router.navigate(['/layout/location/']);
  }); 
  }

  private validateId(){

    return (!this.currentId || this.currentId.length == 0 );

  }

  private validate(){
    return (
     //this.currentEntity.coordinates.length < 10 || 
     this.currentEntity.name.length < 4 ||
     this.currentEntity.description.length == 0 
     )  
   }
}
