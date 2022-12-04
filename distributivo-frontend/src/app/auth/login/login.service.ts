import { HttpClient, HttpHeaders, HttpResponse } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Credenciales } from './credenciales';

@Injectable({
  providedIn: 'root',
})
export class LoginService {

  private url = environment.URL;
  constructor(private http: HttpClient, private router: Router) {}

  public singIn(
    credential: Credenciales
  ): Observable<HttpResponse<Credenciales>> {
    const cred = btoa(credential.username + ':' + credential.password);
    const httpOptions = {
      headers: new HttpHeaders({ Authorization: 'Basic ' + cred }),
      observe: 'response' as 'body',
    };

    return this.http.post<HttpResponse<Credenciales>>(
      this.url+'/login',
      {},
      httpOptions
    );
  }
}
