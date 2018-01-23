import { Component, Directive } from '@angular/core';
import { Http, Response, Headers } from '@angular/http';
import 'rxjs/Rx';
import { Router, ActivatedRoute, Params } from '@angular/router';
import { DomSanitizer } from '@angular/platform-browser';

@Component({
  selector: 'AllMoviesComponent',
  templateUrl: './allmovies.html'
})
export class AllMoviesComponent {
   data : Object[];
   router: Router;
  postResponse: Response;
  http: Http;
  route: ActivatedRoute;
  data2: String;



  constructor(route: ActivatedRoute, http: Http, router: Router,public sanitizer: DomSanitizer) {
    this.router = router;
    this.http = http;
    this.route = route;

    var headers = new Headers();

    headers.append('Content-Type', 'application/x-www-form-urlencoded');
    headers.append('token', localStorage.getItem('token'));
    http.get('http://localhost/it255/getmovies.php', {headers: headers}).map(res => res.json()).share().subscribe(data => {
      this.data = data.movies;
    },
    err => {
      this.router.navigate(['./']);
    }
  );
}

public viewMovie(item: Number){
this.router.navigate(['/movie', item]);
}

ngOnInit() {
  this.route.params.subscribe((params: Params) => {
    let id = localStorage.getItem('user');
    let headers = new Headers();

    headers.append('Content-Type', 'application/x-www-form-urlencoded');
    headers.append("token",localStorage.getItem("token"));
    this.http.get('http://localhost/it255/getId.php?username='+id,{headers:headers}).map(res => res.json()).share().subscribe(data => {
      this.data2 = data.data2;
      let lol = JSON.stringify(this.data2);
      let haha = JSON.parse(lol);
      localStorage.setItem('user_id', haha);

    },
    err => {
      this.router.navigate(['./']);
    }
  );
  });
}
}
