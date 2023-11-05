import { Component, OnInit } from '@angular/core';
import { faHeart as faHeartSolid,
  faSliders as faSlidersSolid,
  faCircleInfo as faCircleInfoSolid,
  faArrowDown as faArrowDownSolid,
  faMoon as faMoonSolid,
  faSun as faSunSolid,
  faArrowUp as faArrowUpSolid } from '@fortawesome/free-solid-svg-icons';
// import { faHeart as faHeartRegular, faClock as faClockRegular } from '@fortawesome/free-regular-svg-icons';
import { AppComponent } from './../../app.component';


@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit{
  constructor(private appComponent: AppComponent){}

  darkMode = this.appComponent.darkMode;

  faMoon = faMoonSolid;
  faSun = faSunSolid;

  ngOnInit(): void {
    
  }
}
