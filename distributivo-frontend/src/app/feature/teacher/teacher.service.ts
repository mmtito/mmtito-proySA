import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';

import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Teacher } from './models/teacher'; 

@Injectable({
  providedIn: 'root'
})
export class TeacherService {

  constructor(
    private http : HttpClient
  ) { }
  
  private initialUrlTeacher = environment.URL+'/api/teacher';
  
  private httpOptions = {
    headers: new HttpHeaders({
      'Content-Type': 'application/json',
      //'user`': 'admin:123'
    }),
  };

  public getAllTeacher() : Observable<Teacher[]> {
    return this.http.get<Teacher[]>(`${this.initialUrlTeacher}/findAll`, this.httpOptions);

  }

  private HttpOptions = {
    headers: new HttpHeaders({"Content-type":"application/json"})
  }

  private url : string = environment.URL+"/api/teacher";

  public findById(id : number): Observable<Teacher>{
    return this.http.get<Teacher>(this.url+"/findById/"+id, this.HttpOptions);
  }

  public findAll(): Observable<Teacher[]>{
    return this.http.get<Teacher[]>(this.url+"/findAll/", this.HttpOptions);
}
  
 //public saveTeacher = (newLocation: Teacher): Observable<Teacher> => {
  //  return this.http.post<Teacher>(this.url+"/save", newLocation,this.HttpOptions);
  //};
 



}
