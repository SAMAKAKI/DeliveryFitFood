import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Params } from '@angular/router';
import { ProductService } from 'src/app/services/product.service';
import { faCartShopping as faCartShoppingSolid, faCircleInfo as faCircleInfoSolid, faChevronLeft as faChevronLeftSolid, faChevronRight as faChevronRightSolid } from '@fortawesome/free-solid-svg-icons';
import { faHeart as faHeartRegular, faClock as faClockRegular } from '@fortawesome/free-regular-svg-icons';
import { HomeService } from 'src/app/services/home.service';

@Component({
  selector: 'app-product',
  templateUrl: './product.component.html',
  styleUrls: ['./product.component.scss']
})
export class ProductComponent implements OnInit{
  constructor(private productService: ProductService, private router: ActivatedRoute, private homeService: HomeService){}

  productData: any;

  faClock = faClockRegular;
  faHeart = faHeartRegular;
  faCartShopping = faCartShoppingSolid;

  deliveryData: any;
  category: any;

  getAllDeliveryList(){
    this.homeService.getDeliveryData().subscribe((res) => {
      this.deliveryData = res.data;
    });
  }


  ngOnInit(): void {
    this.router.params.subscribe((params: Params) =>{
      const id: number = params['id'];
      this.productService.getDeliveryProductData(id).subscribe((res) => {
        this.productData = res.data;
        this.category = res.data[0]['kategory'];
      })
    });

    this.getAllDeliveryList()
  }
}
