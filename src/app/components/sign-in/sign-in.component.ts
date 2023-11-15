import { Component } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { faGoogle as faGoogleBrands, faFacebook as faFacebookBrands } from '@fortawesome/free-brands-svg-icons';
import {faMoon as faMoonSolid, faSun as faSunSolid, faCheck as faCheckSolid, faXmark as faXmarkSolid, faCircleExclamation as faCircleExclamationSolid} from '@fortawesome/free-solid-svg-icons';
import { AppComponent } from 'src/app/app.component';
import { SignInService } from 'src/app/services/sign-in.service';
import { SignUpComponent } from '../sign-up/sign-up.component';

@Component({
  selector: 'app-sign-in',
  templateUrl: './sign-in.component.html',
  styleUrls: ['./sign-in.component.scss']
})
export class SignInComponent {
  darkMode = this.appComponent.darkMode;

  faMoon = faMoonSolid;
  faSun = faSunSolid;
  faGoogle = faGoogleBrands;
  faFacebook = faFacebookBrands;
  faCheck = faCheckSolid;
  faXmark = faXmarkSolid;
  faCircleExclamation = faCircleExclamationSolid;

  errorMsg: string = '';
  successMsg: string = '';
  isUser: boolean = false;

  constructor(private appComponent: AppComponent, private signInService: SignInService, private signUpComponent: SignUpComponent){}

  loginForm = new FormGroup({
    "username": new FormControl('', Validators.required),
    "password": new FormControl('', [Validators.required, Validators.minLength(10)]),
  },
  {
    validators: this.signUpComponent.usernameValidator('username')
  });
}
