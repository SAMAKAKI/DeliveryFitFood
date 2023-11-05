import { Component, OnInit } from '@angular/core';
import { faHeart as faHeartSolid,
         faSliders as faSlidersSolid,
         faCircleInfo as faCircleInfoSolid,
         faArrowDown as faArrowDownSolid,
         faArrowUp as faArrowUpSolid } from '@fortawesome/free-solid-svg-icons';
import { faHeart as faHeartRegular, faClock as faClockRegular } from '@fortawesome/free-regular-svg-icons';
import { HomeService } from 'src/app/services/home.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit{
  faHeart = faHeartRegular;
  faSliders = faSlidersSolid;
  faClock = faClockRegular;
  faCircleInfo = faCircleInfoSolid;
  faArrowDown = faArrowDownSolid;
  faArrowUp = faArrowUpSolid;

  deliveryData: any;
  deliveryKategoryData: any;
  kategory: any = 'all';
  searchText: string = '';

  constructor(private homeService: HomeService){
    
  }


  getAllDeliveryList(){
    this.homeService.getDeliveryData().subscribe((res) => {
      this.deliveryData = res.data;
      this.kategory = 'all';
    });
  }

  getBurgersDeliveryList(){
    this.homeService.getBurgersDeliveryData().subscribe((res) => {
      this.deliveryData = res.data;
      this.kategory = 'burgers';
    });
  }

  getSushiDeliveryList(){
    this.homeService.getSushiDeliveryData().subscribe((res) => {
      this.deliveryData = res.data;
      this.kategory = 'sushi';
    });
  }

  getPizzaDeliveryList(){
    this.homeService.getPizzaDeliveryData().subscribe((res) => {
      this.deliveryData = res.data;
      this.kategory = 'pizza';
    });
  }

  getBreakfastDeliveryList(){
    this.homeService.getBreakfastDeliveryData().subscribe((res) => {
      this.deliveryData = res.data;
      this.kategory = 'breakfast';
    });
  }

  getSortByNameDownList(){
    this.homeService.getDeliveryDataSortByNameDown().subscribe((res) => {
      this.deliveryData = res.data;
    });
  }

  getSortByNameUpList(){
    this.homeService.getDeliveryDataSortByNameUp().subscribe((res) => {
      this.deliveryData = res.data;
    });
  }

  getSortByDateCreateList(){
    this.homeService.getDeliveryDataSortByDateCreate().subscribe((res) => {
      this.deliveryData = res.data;
    });
  }

  ngOnInit(): void {
   this.getAllDeliveryList();
  }
}
