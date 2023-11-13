import { Component } from '@angular/core';
import { faGoogle as faGoogleBrands, faFacebook as faFacebookBrands } from '@fortawesome/free-brands-svg-icons';
import {faMoon as faMoonSolid, faSun as faSunSolid} from '@fortawesome/free-solid-svg-icons';
import { AppComponent } from 'src/app/app.component';

@Component({
  selector: 'app-sign-in',
  templateUrl: './sign-in.component.html',
  styleUrls: ['./sign-in.component.scss']
})
export class SignInComponent {
  constructor(private appComponent: AppComponent){}

  darkMode = this.appComponent.darkMode;

  faMoon = faMoonSolid;
  faSun = faSunSolid;
  faGoogle = faGoogleBrands;
  faFacebook = faFacebookBrands;
}
