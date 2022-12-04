import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Grade } from './models/grade';
import { GradeDto } from './models/gradeDto';
import { Career } from './models/career';
import { GradeForCareer } from './models/gradeForCareer';
import { Router } from '@angular/router';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class GradeService {

  constructor( private http : HttpClient,
    private router : Router ) { }

  public listGrades: GradeForCareer[] =[]
  getCareers(): Observable<Career[]> {
    return this.http.get<Career[]>(`${this.initialUrlGrade}/careers`, this.httpOptions)

  }


  private initialUrlGrade = environment.URL+'/api/grade';
  
  private httpOptions = {
    headers: new HttpHeaders({
      'Content-Type': 'application/json',
      //'user': 'admin:123'
    }),
  };

  public getGrades = (page : string): Observable<GradeDto> => {
    return this.http.get<GradeDto>(`${this.initialUrlGrade}?page=${page}`, this.httpOptions);
  };

  public findAllGrades(){
    return this.http.get<Grade[]>(`${this.initialUrlGrade}/findAll`)
  } 

  public getGradeByName(name : string) : Observable<GradeForCareer[]>{
    return this.http.get<GradeForCareer[]>(`${this.initialUrlGrade}/find/${name}`,this.httpOptions);
  }

  public getGrade = (id: string): Observable<Grade> => {
    return this.http.get<Grade>(
      `${this.initialUrlGrade}/${id}`,
      this.httpOptions
    );
  };

  public saveGrade = (newGrade: Grade): Observable<Grade> => {
    return this.http.post<Grade>(
      this.initialUrlGrade,
      newGrade,
      this.httpOptions
    );
  };

  public updateGrade = (gradeUpdate: Grade): Observable<Grade> => {
    return this.http.post<Grade>(
      this.initialUrlGrade + '/update',
      gradeUpdate,
      this.httpOptions
    );
  };

  public removeGrade(id: string) {
    return this.http.get<any>(
      `${this.initialUrlGrade}/delete/${id}`,
      this.httpOptions
    );
  }

  public getGradesByCareer(): Observable<GradeForCareer[]>{
    return this.http.get<GradeForCareer[]>(this.initialUrlGrade, this.httpOptions)

  }
  
  downloadFile() {
    return this.http.get<Blob>(`${this.initialUrlGrade}/export-to-excel`, 
    {
       observe: 'response', responseType: 'blob' as 'json'
    
    })
  }

  reload(){
    this.router.navigateByUrl('/layout', { skipLocationChange: true }).then(() => {
      this.router.navigate(['/layout/grade/']);
  }); 
  }

  public searchGradesByCareer(): Observable<GradeForCareer[]>{
    return this.http.get<GradeForCareer[]>(this.initialUrlGrade, this.httpOptions)

  }
  


  submitExcel(){
    
  } 

}
