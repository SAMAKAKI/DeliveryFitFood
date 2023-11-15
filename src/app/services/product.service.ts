import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { Injectable, OnInit } from '@angular/core';
import { HomeService } from './home.service';

@Injectable({
  providedIn: 'root'
})
export class ProductService implements OnInit{

  constructor(private http: HttpClient, private homeService: HomeService) { }

  apiUrl = this.homeService.apiUrl;

  getDeliveryProductData(id: number): Observable<any>{
    return this.http.get(`${this.apiUrl}/${id}`);
  }

  ngOnInit(): void {
    
  }
}
