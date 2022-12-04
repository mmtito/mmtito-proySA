import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { ActivatedRoute, Params, QueryParamsHandling, Router } from '@angular/router';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Career } from './models/career';
import { CareerSave } from './models/careerSave';

@Injectable({
  providedIn: 'root'
})
export class CareerService {

  constructor(
    private http : HttpClient,
    private router : Router
  ) { }

  private initialUrlCareer = environment.URL+'/api/career';
  
  private httpOptions = {
    headers: new HttpHeaders({
      'Content-Type': 'application/json'
    }),
  };

  public save(form : FormData):Observable<Career>{
    return this.http.post<Career>(`${this.initialUrlCareer}/save`, form)

  }
  public findAll():Observable<Career[]>{
    return this.http.get<Career[]>(`${this.initialUrlCareer}/findAll`, this.httpOptions);
  }

  public findbyId(id : string):Observable<CareerSave>{
    return this.http.get<CareerSave>(`${this.initialUrlCareer}/findById/${id}`);

  }

  public update(career : FormData):Observable<Career>{
    return this.http.post<Career>(`${this.initialUrlCareer}/update`, career);

  }

  public delete(id : string) : Observable<void>{
   return this.http.get<void>(`${this.initialUrlCareer}/deleteById/${id}`, this.httpOptions);
  }

  public reload(){
    this.router.navigateByUrl('/layout', { skipLocationChange: false }).then(() => {
      this.router.navigate(['/layout/career/']);
  }); 
  }
  public addParamsnoreload(params : Params, route : ActivatedRoute, queryParamsHandling : QueryParamsHandling = 'merge'){
    this.router.navigate([],
      {
        relativeTo : route,
        queryParams : params,
        queryParamsHandling,
      })

  }

}