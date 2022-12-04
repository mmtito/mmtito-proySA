import { Injectable } from '@angular/core';
import { Subject } from '../models/subject';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class SubjectService {

  constructor(
    private http: HttpClient
  ) { }

    private HttpOptions = {
      headers : new HttpHeaders({
        "Content-type":"application/json"
      })
    }
    private url : string = environment.URL+"/api/subject"

    public findAll(): Observable<Subject[]>{
      return this.http.get<Subject[]>(this.url+"/findAll", this.HttpOptions)
    }

    public findById (id : number): Observable<Subject>{
      return this.http.get<Subject>(this.url+"/findByName/"+id , this.HttpOptions)
    }

    public save (subject : Subject) : Observable<Subject>{
      return this.http.post<Subject>(this.url+"/save", subject, this.HttpOptions)
    }

    public deleteById ( id : number ): Observable<Subject>{
      return this.http.delete<Subject>(this.url+"/deleteById/"+ id, this.HttpOptions)
    }
}
