import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './component/home/home.component';
import { SignupComponent } from './component/signup/signup.component';
import { ProductComponent } from './component/product/product.component';
import { ConvertNunberToThaiWordComponent } from './component/convert-nunber-to-thai-word/convert-nunber-to-thai-word.component';

const routes: Routes = [
  { path: '', redirectTo: '/home', pathMatch: 'full' }, 
  { path: 'home', component: HomeComponent },
  { path: 'signup', component: SignupComponent },
  { path: 'product', component: ProductComponent },
  { path: 'convert', component: ConvertNunberToThaiWordComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
