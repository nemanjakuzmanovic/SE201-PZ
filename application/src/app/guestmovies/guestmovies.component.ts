import { Component, Directive } from '@angular/core';
import { Http, Response, Headers } from '@angular/http';
import 'rxjs/Rx';
import {Router} from '@angular/router';
import { DomSanitizer } from '@angular/platform-browser';
@Component({
  selector: 'GuestMoviesComponent',
  templateUrl: './guestmovies.html'
})
export class GuestMoviesComponent {
  private data : Object[];
  private router: Router;
  constructor(private http: Http, router: Router,public sanitizer: DomSanitizer) {
    this.router = router;
    var headers = new Headers();
    headers.append('Content-Type', 'application/x-www-form-urlencoded');
    http.get('http://localhost/it255/getguestmovies.php', {headers: headers}).map(res => res.json()).share().subscribe(data => {
      this.data = data.movies;
    },
    err => {
      this.router.navigate(['./']);
    }
  );
}
}
