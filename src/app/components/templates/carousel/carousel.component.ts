import { Component, ElementRef, Input, ViewChild } from '@angular/core';
import { faCircleInfo as faCircleInfoSolid, faChevronLeft as faChevronLeftSolid, faChevronRight as faChevronRightSolid } from '@fortawesome/free-solid-svg-icons';
import { faHeart as faHeartRegular, faClock as faClockRegular } from '@fortawesome/free-regular-svg-icons';

@Component({
  selector: 'app-carousel',
  templateUrl: './carousel.component.html',
  styleUrls: ['./carousel.component.scss']
})
export class CarouselComponent {
  @Input() values: any;
  @Input() numScroll: number = 1;
  @Input() responsiveOptions: any;

  faClock = faClockRegular;
  faHeart = faHeartRegular;
  faCircleInfo = faCircleInfoSolid;
  faChevronLeft = faChevronLeftSolid;
  faChevronRight = faChevronRightSolid;

  @ViewChild('widgetsContent') widgetsContent!: ElementRef<any>;

  scrollLeft(){
    this.widgetsContent.nativeElement.scrollTo({ left: (this.widgetsContent.nativeElement.scrollLeft - (390 * this.numScroll)), behavior: 'smooth' });
  }

  scrollRight(){
    this.widgetsContent.nativeElement.scrollTo({ left: (this.widgetsContent.nativeElement.scrollLeft + (390 * this.numScroll)), behavior: 'smooth' });
  }
}
