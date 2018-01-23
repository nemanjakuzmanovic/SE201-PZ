import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { AboutUsComponent } from './aboutus/aboutus.component';

import { RegisterComponent } from './register/register.component';
import { LoginComponent } from './login/login.component';

import { AllMoviesComponent } from './allmovies/allmovies.component';

import { GuestMoviesComponent } from './guestmovies/guestmovies.component';
import { HomePageComponent } from './home/home.component';
import { MovieComponent } from './movie/movie.component';
import { AccountComponent } from './account/account.component';
import { MyMoviesComponent } from './mymovies/mymovies.component';
import { EditMovieComponent } from './editmovie/editmovie.component';
import { HelpComponent } from './help/help.component';

const appRoutes: Routes = [
  {
    path: 'aboutus',
    component: AboutUsComponent
  },
  {
    path: 'login',
    component: LoginComponent
  },
  {
    path: 'register',
    component: RegisterComponent
  },
  {
    path: 'allmovies',
    component: AllMoviesComponent
  },
  {
    path: 'guestmovies',
    component: GuestMoviesComponent
  },
  {
    path: '',
    component: HomePageComponent
  },
  {
    path: 'movie/:id',
    component: MovieComponent
  },
  {
    path: 'account',
    component: AccountComponent
  },
  {
    path: 'mymovies',
    component: MyMoviesComponent
  },
  {
    path: 'editmovie/:id',
    component: EditMovieComponent
  },
  {
    path: 'help',
    component: HelpComponent
  }
];

export const routing: ModuleWithProviders = RouterModule.forRoot(appRoutes);
