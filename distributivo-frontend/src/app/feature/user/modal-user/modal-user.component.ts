import { Component, Input, OnChanges, OnInit, SimpleChanges } from '@angular/core';
import { Router } from '@angular/router';
import { UserService } from '../user.service';
import { User } from '../models/user';
import { UserRole } from '../../role/models/userRole';
import { MatSnackBar } from '@angular/material/snack-bar';

@Component({
  selector: 'app-modal-user',
  templateUrl: './modal-user.component.html',
  styleUrls: []
})
export class ModalUserComponent implements OnChanges  {
   
  constructor( private UserService : UserService,
  private router : Router,
  private snackbar : MatSnackBar ) { }
  
  @Input() currentId = '';

  public currentEntity :User ={
    id : '',
    name : '',
    password : '',
    looked : false,
    username : '',
    roles: []
  } 
  ngOnChanges(changes: SimpleChanges) {
    if(!this.validateId()) this.findById();
  }

  private findById(){

    this.UserService.getUser(this.currentId).subscribe(
      (res)=>{
        this.currentEntity = res;
      },
      (err)=>{
        this.snackbar.open('Hubo un error al buscar el usuario ❌')
      }
    )

  }

 public addRoleUser (role : UserRole){
 
  const exist = this.currentEntity.roles.some(existRole => {
    return role.roleId == existRole.roleId
  });
  if(!exist) this.currentEntity.roles.push(role);
  


 }

  save() : any {
    if(!this.validate()){
     
      return this.UserService.saveUser(this.currentEntity).subscribe(
        ()=>{
          this.snackbar.open("Se ha guardado el usuario correctamente ​✅​");;
          this.reload();
        },
        ()=>  this.snackbar.open( 'Error al guardar el usuario ​​❌')
        )
    }
    this.snackbar.open( 'Datos ingresados incorrectos ​​❌')

  }

  public deleteRole(id : string){
    this.currentEntity.roles = this.currentEntity.roles.filter(role => role.id != id)

  }

  removeCurrentEntity(){
    this.currentEntity = {
     
      password : '',
      id : '',
      name : '',
      looked : false,
      username : '',
      roles : []
    }

  }

  private reload(){
    this.router.navigateByUrl('/layout', { skipLocationChange: true }).then(() => {
      this.router.navigate(['/layout/user/']);
  }); 
  }

  private validateId(){

    return (!this.currentId || this.currentId.length == 0 );

  }

  private validate(){
    return (
     //this.currentEntity.coordinates.length < 10 || 
     this.currentEntity.name.length < 4 ||
     this.currentEntity.username.length < 4,
     this.currentEntity.password.length < 10 
     )  
   }
}
