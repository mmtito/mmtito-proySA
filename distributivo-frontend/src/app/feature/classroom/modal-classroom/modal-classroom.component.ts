import { Component, Input, OnChanges, OnInit, SimpleChanges } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { Router } from '@angular/router';
import { ClassroomService } from '../classroom.service';
import { ClassRoom } from '../models/classroom';

@Component({
  selector: 'app-modal-classroom',
  templateUrl: './modal-classroom.component.html',
  styleUrls: []
})
export class ModalClassroomComponent implements OnChanges{
   
  constructor( private classroomService : ClassroomService,
    private router : Router,
    private snackbar : MatSnackBar ) { }

    @Input() currentId = '';
    
    ngOnChanges(changes: SimpleChanges) {
      if(!this.validateId()) this.findById();
    }

  
  public currentEntity :ClassRoom ={
    id : '',
    name : '',
    code : '',
    capacity : 0,
    location : null,
    type : '',
    locationName : null,
    typeName : null, 
    description : '' 
  } 

  private findById(){

    this.classroomService.getCLassroom(this.currentId).subscribe(
      (res)=>{
        this.currentEntity = res;
      },
      ()=> this.snackbar.open('Hubo un error al buscar el aula ❌')
      
    )

  }

  public saveOrUpdate(){
    if(this.validateId()){
      this.save();
    }else{
      this.update();
    }
  }

  private save() : any {
     
      return this.classroomService.saveCLassroom(this.currentEntity).subscribe(
        (res)=>{
          this.snackbar.open("Se ha guardado el aula correctamente ​✅​");
          this.reload();
        },
        (err)=> this.snackbar.open('Hubo un error al guardar el aula ❌')
        )


  }

  private update(){
     return this.classroomService.updateCLassroom(this.currentEntity).subscribe(
      (r)=>{
        this.snackbar.open("Se ha editado el aula correctamente ​✅​");
        this.reload();
      },
      ()=> this.snackbar.open('Hubo un error al editar el aula ❌')
      )
  }

  removeCurrentEntity(){
    this.currentEntity = {
      id : '',
      code : '',
      name : '',
      capacity : 0,
      description : '',

      location : null,
      type : '',
      locationName : null,
      typeName : null
    }

  }

  public setType(id : string){
    this.currentEntity.type = id;

  }

  private reload(){
    this.router.navigateByUrl('/layout', { skipLocationChange: true }).then(() => {
      this.router.navigate(['/layout/classroom/']);
  }); 
  }

  private validateId(){

    return (!this.currentId || this.currentId.length == 0 );

  }

  addLocation(value : string){
    this.currentEntity.location = parseInt(value);
  }

 /* private validate(){
    return (
     this.currentEntity.coordinates.length < 10 || 
     this.currentEntity.name.length < 4 ||
     this.currentEntity.description.length == 0 
     )  
    }
  */
}
