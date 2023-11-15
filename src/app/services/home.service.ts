import { Injectable, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http'
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class HomeService implements OnInit {

  constructor(private http: HttpClient) { }

  apiUrl = 'http://localhost:3000/api/delivery-list';

  getDeliveryData(): Observable<any>{
    return this.http.get(`${this.apiUrl}`);
  }

  getBurgersDeliveryData(): Observable<any>{
    return this.http.get(`${this.apiUrl}-burgers`);
  }

  getSushiDeliveryData(): Observable<any>{
    return this.http.get(`${this.apiUrl}-sushi`);
  }

  getPizzaDeliveryData(): Observable<any>{
    return this.http.get(`${this.apiUrl}-pizza`);
  }

  getBreakfastDeliveryData(): Observable<any>{
    return this.http.get(`${this.apiUrl}-breakfast`);
  }

  getDeliveryDataSortByNameDown(): Observable<any>{
    return this.http.get(`${this.apiUrl}-sort-by-name-down`);
  }

  getDeliveryDataSortByNameUp(): Observable<any>{
    return this.http.get(`${this.apiUrl}-sort-by-name-up`);
  }

  getDeliveryDataSortByDateCreate(): Observable<any>{
    return this.http.get(`${this.apiUrl}-sort-by-date-create`);
  }

  ngOnInit(): void {
    
  }
}
