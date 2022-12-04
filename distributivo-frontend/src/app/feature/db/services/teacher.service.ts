import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Teacher } from '../models/teacher';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class TeacherService {

  constructor(
    private http: HttpClient
  ) { }
  
  private HttpOptions = {
    headers: new HttpHeaders({
      "Content-Type":"application/json"
    })
  }

  private url : string = environment.URL+"/api/teacher";
  private initialUrlTeacher = environment.URL+'/api/teacher';

  public getAllTeacher() : Observable<Teacher[]> {
    return this.http.get<Teacher[]>(`${this.initialUrlTeacher}/findAll`, this.HttpOptions);
  }

  public findById(id : number): Observable<Teacher>{
    return this.http.get<Teacher>(this.url+"/findById/"+id, this.HttpOptions);
  }

  public findAll(): Observable<Teacher[]>{
    return this.http.get<Teacher[]>(this.url+"/findAll", this.HttpOptions);
  }

  public save (teacher : Teacher): Observable<Teacher>{
    return this.http.post<Teacher>(this.url+"/save", teacher, this.HttpOptions);
  }

  public deleteById (id : number) : Observable<Teacher>{
    return this.http.delete<Teacher>(this.url+"/deleteById/"+id, this.HttpOptions);
  }

  public findByName (term : string) : Observable<Teacher[]> {
    return this.http.get<Teacher[]>(this.url+"/findByName/"+term, this.HttpOptions);
  }

  public generateExcelFile() {
    return this.http.get<Blob>(this.url+"/exportExcel", {observe: 'response', responseType: 'blob' as 'json'});
  }


}
