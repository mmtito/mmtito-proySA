import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Authority } from './authority';

@Injectable({
  providedIn: 'root'
})
export class AuthorityService {

  constructor(
    private http: HttpClient
  ) { }

  private httpOptions = {
    headers: new HttpHeaders({"Content-Type":"application/json"})
  }

  private url: string =  environment.URL+"/api/authority";



  public findById(id: number): Observable<Authority>{
    return this.http.get<Authority>(this.url+"/findById/"+id, this.httpOptions);
  }



  public findAll(): Observable<Authority[]>{
    return this.http.get<Authority[]>(this.url+"/findAll", this.httpOptions);
  }

  public findByName(term: string): Observable<Authority[]>{
    return this.http.get<Authority[]>(this.url+"/findByName/"+term, this.httpOptions);
  }
}
