import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { TeacherDto } from '../models/teacherDto';
import { Distributive } from '../models/distributive';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class TeacherDtoService {

  constructor(
    private http : HttpClient,

  ) { }

  private httpOPtions = {
    headers : new HttpHeaders({
      "Conten-Type": "application/json"
    })
  }
  
  public url : string = environment.URL+"/api/distributive"

  public findAll(): Observable<TeacherDto[]>{
    return this.http.get<TeacherDto[]>(this.url+"/findAll")
  }

  public save(distributive : Distributive):Observable<Distributive>{
    return this.http.post<Distributive>(this.url+"/save", distributive, this.httpOPtions)
  }

  public findByTeacherId( id : number ):Observable<TeacherDto[]>{
    return this.http.get<TeacherDto[]>(this.url+"/findByIdTeacher/"+id, this.httpOPtions)
  }

  public findByIdDistributive(id:number):Observable<TeacherDto>{
    return this.http.get<TeacherDto>(this.url+"/findByIdDistributive/"+id, this.httpOPtions);
  }

  public findByTeacherDni(dni : string):Observable<TeacherDto[]>{
    return this.http.get<TeacherDto[]>(this.url+"/findByTeacherDni/"+dni, this.httpOPtions);
  }

  public findByTeacherName(name : string):Observable<TeacherDto[]>{
    return this.http.get<TeacherDto[]>(this.url+"/findByTeacherName/"+name, this.httpOPtions)
  }

  public findByTeacherLastname(lastname : string):Observable<TeacherDto[]>{
    return this.http.get<TeacherDto[]>(this.url+"/findByTeacherLastname/"+lastname, this.httpOPtions);
  }

  public findByPeriodName(periodo : string):Observable<TeacherDto[]>{
    return this.http.get<TeacherDto[]>(this.url+"/findByPeriodoName/"+periodo, this.httpOPtions);
  }

  public findByCareerName ( career : string):Observable<TeacherDto[]>{
    return this.http.get<TeacherDto[]>(this.url+"/findByCareerName/"+career, this.httpOPtions);
  }

  public generateExcelFile(){
    return this.http.get<Blob>(this.url+"/exportExcel",{observe: "response", responseType: "blob" as "json"});
  }
}
