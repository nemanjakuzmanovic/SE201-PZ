import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { HttpModule } from '@angular/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { routing } from './app.routing';

import { RegisterComponent } from './register/register.component';
import { LoginComponent } from './login/login.component';
import { AboutUsComponent } from './aboutus/aboutus.component';
import { SearchPipe } from './pipes/search';

import { AllMoviesComponent } from './allmovies/allmovies.component';
import { HelpComponent } from './help/help.component';


import { GuestMoviesComponent } from './guestmovies/guestmovies.component';
import { HomePageComponent } from './home/home.component';
import {MovieComponent} from './movie/movie.component';
import { AccountComponent } from './account/account.component';
import { MyMoviesComponent } from './mymovies/mymovies.component';
import { EditMovieComponent } from './editmovie/editmovie.component';

@NgModule({
  declarations: [
    AppComponent,
    AboutUsComponent,
    SearchPipe,
    RegisterComponent,
    LoginComponent,
    AllMoviesComponent,
    GuestMoviesComponent,
    HomePageComponent,
    MovieComponent,
    AccountComponent,
    MyMoviesComponent,
    EditMovieComponent,
    HelpComponent
  ],
  imports: [
    BrowserModule,
    HttpModule,
    routing,
    FormsModule,
    ReactiveFormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
