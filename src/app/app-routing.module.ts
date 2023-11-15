import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { ProductComponent } from './components/product/product.component';
import { SignInComponent } from './components/sign-in/sign-in.component';
import { SignUpComponent } from './components/sign-up/sign-up.component';

const routes: Routes = [
  {path: '', component: HomeComponent, pathMatch: 'full'},
  {path: 'products/:id', component: ProductComponent, pathMatch: 'full'},
  {path: 'sign-in', component: SignInComponent, pathMatch: 'full'},
  {path: 'sign-up', component: SignUpComponent, pathMatch: 'full'}

  // {path: '', redirectTo: '/home', pathMach: 'full'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
