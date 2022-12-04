import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Distributive } from './models/distributive';

@Injectable({
  providedIn: 'root'
})
export class DistributiveService {

  constructor(
    private http : HttpClient
  ) { }

  private initialUrlDistributive = environment.URL+'/api/distributive';
  
  private httpOptions = {
    headers: new HttpHeaders({
      'Content-Type': 'application/json',
      //'user': 'admin:123'
    }),
  };


  public searchByEmail(name : string) : Observable<Distributive[]>{
    return this.http.get<Distributive[]>(`${this.initialUrlDistributive}/findByName/${name}`, this.httpOptions);
  }
}