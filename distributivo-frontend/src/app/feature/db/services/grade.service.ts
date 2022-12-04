import { Injectable } from '@angular/core';
import { Grade } from '../models/grade';
import { HttpHeaders, HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class GradeService {

  constructor(
    private http: HttpClient
  ) { }

  private HttpOptions = {
    headers: new HttpHeaders({
      "Content-Type": "application/json"
    })
  }

  private url: string = environment.URL+"/api/grade"

  public findAll(): Observable<Grade[]> {
    return this.http.get<Grade[]>(this.url + "/findAll", this.HttpOptions)
  }

  public findById(id: number): Observable<Grade> {
    return this.http.get<Grade>(this.url + "/findById/" + id, this.HttpOptions)
  }

    public deleteById(id: number): Observable<Grade> {
      return this.http.delete<Grade>(this.url+"/deleteById/"+id, this.HttpOptions)
  }

  public save ( grade : Grade ) : Observable<Grade>{
    return this.http.post<Grade>(this.url+"/save"+grade, this.HttpOptions)
  }
}
