import { Component, Directive } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';
import { Http, Response, Headers } from '@angular/http';
import 'rxjs/Rx';
import { Router, ActivatedRoute, Params } from '@angular/router';
import { DomSanitizer } from '@angular/platform-browser';

@Component({
  selector: 'MyMoviesComponent',
  templateUrl: './mymovies.html'
})

export class MyMoviesComponent{
    http: Http;
    router: Router;
    route: ActivatedRoute;
    data: Object[];
    data2: Object[];

    constructor(route: ActivatedRoute, http: Http, router: Router,public sanitizer: DomSanitizer) {
      this.router = router;
      this.http = http;
      this.route = route;

      var headers = new Headers();
      this.route.params.subscribe((params: Params) => {

        let headers = new Headers();

        headers.append('Content-Type', 'application/x-www-form-urlencoded');
        headers.append("token",localStorage.getItem("token"));

        this.http.get('http://localhost/it255/getrentedmovies.php?id='+localStorage.getItem('user_id'),{headers:headers}).map(res => res.json()).share().subscribe(data => {
          this.data2 = data.data2;

        },
        err => {
          this.router.navigate(['./']);
        });

        this.http.get('http://localhost/it255/getmymovies.php?id='+localStorage.getItem('user_id'),{headers:headers}).map(res => res.json()).share().subscribe(data => {
          this.data = data.data;

        },
        err => {
          this.router.navigate(['./']);
        }
      );
    });
}



public editMovie(id:number){
    this.router.navigateByUrl('editmovie/' + id);
  }
  public removeMovie(event: Event, item: Number) {
  var headers = new Headers();
  headers.append('Content-Type', 'application/x-www-form-urlencoded');
  headers.append('token', localStorage.getItem('token'));
  this.http.get('http://localhost/it255/deletemovie.php?id='+item,{headers:headers}) .subscribe( data => {
  event.srcElement.parentElement.parentElement.remove();
  });
  }
  }
