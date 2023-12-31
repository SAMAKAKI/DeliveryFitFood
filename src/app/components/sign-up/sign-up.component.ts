import { Component, OnInit } from '@angular/core';
import { AbstractControl, FormControl, FormGroup, ValidationErrors, ValidatorFn, Validators } from '@angular/forms';
import { faGoogle as faGoogleBrands, faFacebook as faFacebookBrands } from '@fortawesome/free-brands-svg-icons';
import {faMoon as faMoonSolid, faSun as faSunSolid, faCheck as faCheckSolid, faXmark as faXmarkSolid, faCircleExclamation as faCircleExclamationSolid} from '@fortawesome/free-solid-svg-icons';
import { AppComponent } from 'src/app/app.component';
import { SignUpService } from 'src/app/services/sign-up.service';

@Component({
  selector: 'app-sign-up',
  templateUrl: './sign-up.component.html',
  styleUrls: ['./sign-up.component.scss']
})
export class SignUpComponent implements OnInit{
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

  constructor(private appComponent: AppComponent, private signUpService: SignUpService){}

  registerForm = new FormGroup({
    "username": new FormControl('', Validators.required),
    "email": new FormControl('', [Validators.email, Validators.required]),
    "password": new FormControl('', [Validators.required, Validators.minLength(10)]),
    "passwordRepeat": new FormControl('', [Validators.required, Validators.minLength(10)])
  }, {
    validators: this.usernameValidator('username')
  });

  usernameValidator(username: string): ValidatorFn{
    return (control: AbstractControl): ValidationErrors | null => {
      const formGruop = control as FormGroup;
      const usernameControl = formGruop.get(username)?.value as string;

      if(!usernameControl.includes(' ')){
        return null;
      }
      else{
        return {usernameError: true}
      }
    }
  }

  clearSuccessMsg(){
    this.successMsg = '';
  }

  clearErrorMsg(){
    this.errorMsg = '';
  }

  onSumbit(){
    if(this.registerForm.valid){
      if(this.registerForm.controls['password'].value == this.registerForm.controls['passwordRepeat'].value){
        this.signUpService.getUserCheckName(this.registerForm.controls['username'].value as string).subscribe(res => {
          if(!res.isUser){
            this.signUpService.postRegisterUser({
              // create validator for username(without space). Because i need find user if is this username or create user with this username 
              "username": this.registerForm.controls['username'].value,
              "email": this.registerForm.controls['email'].value,
              "password": this.registerForm.controls['password'].value}).subscribe(res => {
              if(res.errorMsg){
                this.errorMsg = res.errorMsg;
              }
              if(res.successMsg){
                this.successMsg = res.successMsg;
              }
            });
          } else{
            this.errorMsg = "This username already is in database";
          }
        });
      } else{
        this.errorMsg = "Please check password and password repeat fields";
      }
    }
  }

  ngOnInit(): void {
    
  }

}
