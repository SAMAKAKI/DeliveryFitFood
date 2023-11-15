import { HttpClient } from '@angular/common/http';
import { Injectable, OnInit } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class SignUpService implements OnInit{

  constructor(private http: HttpClient) { }

  apiUserUrl = "http://localhost:3000/api/delivery-users-";

  postRegisterUser(data: any): Observable<any>{
    return this.http.post(`${this.apiUserUrl}register`, data);
  }

  getUserCheckName(username: string): Observable<any>{
    return this.http.get(`${this.apiUserUrl}checkName/${username}`);
  }

  ngOnInit(): void {
    
  }
}
