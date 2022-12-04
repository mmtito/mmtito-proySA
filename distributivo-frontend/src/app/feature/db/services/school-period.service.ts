import { Injectable } from '@angular/core';
import { SchoolPeriod } from '../models/schoolPeriod';
import { Observable } from 'rxjs';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class SchoolPeriodService {

  constructor(
    private http: HttpClient
  ) {}
  private httpOptions = {
    headers: new HttpHeaders({
      "Content-Type" : "application/json"
    })
  }

  private url: string =environment.URL+"/api/schoolPeriod";

  public save (schoolPeriod : SchoolPeriod ): Observable<SchoolPeriod>{
    return this.http.post<SchoolPeriod>(this.url+"/save", schoolPeriod, this.httpOptions);
  }

  public findById( id : number ): Observable<SchoolPeriod>{
    return this.http.get<SchoolPeriod>(this.url+"/findById"+ id , this.httpOptions);
  }

  public deleteById(id : number): Observable<SchoolPeriod>{
    return this.http.delete<SchoolPeriod>(this.url+"/deleteById"+ id , this.httpOptions);
  }

  public findAll(): Observable<SchoolPeriod[]>{
    return this.http.get<SchoolPeriod[]>(this.url+"/findAll", this.httpOptions);
  }


}
