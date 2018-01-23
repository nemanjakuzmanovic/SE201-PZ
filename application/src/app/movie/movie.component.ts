import { Component, Directive } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';
import { Http, Response, Headers } from '@angular/http';
import 'rxjs/Rx';
import { Router, ActivatedRoute, Params } from '@angular/router';
import { DomSanitizer } from '@angular/platform-browser';
@Component({
  selector: 'MovieComponent',
  templateUrl: './movie.html',
})
export class MovieComponent {
  http: Http;
  router: Router;
  route: ActivatedRoute;
  data: Object[];
  postResponse: Response;


  constructor(route: ActivatedRoute, http: Http, router: Router,public sanitizer: DomSanitizer) {
    this.http = http;
    this.router = router;
    this.route = route;
  }
  ngOnInit() {
    this.route.params.subscribe((params: Params) => {
      let id = params['id'];
      let headers = new Headers();

      headers.append('Content-Type', 'application/x-www-form-urlencoded');
      headers.append("token",localStorage.getItem("token"));
      this.http.get('http://localhost/it255/getOneMovie.php?id='+id,{headers:headers}).map(res => res.json()).share().subscribe(data => {
        this.data = data.data;
        localStorage.setItem('movie_id', id);

      },
      err => {
        this.router.navigate(['./']);
      }
    );
  });
  }

  onAddMovie(): void {
    localStorage.setItem('ctrl', '2');
    var data = "movie_id=" + localStorage.getItem('movie_id') + "&& user_id=" + localStorage.getItem('user_id') + "&& p_id=" + localStorage.getItem('ctrl');
    var headers = new Headers();
    headers.append('Content-Type', 'application/x-www-form-urlencoded');
    headers.append("token", localStorage.getItem("token"));
    this.http.post('http://localhost/it255/addMovieToMyMovies.php', data, { headers: headers }).map(res => res).subscribe( data => this.postResponse = data, err => alert(JSON.stringify(err)),
    () => {
      if(this.postResponse["_body"].indexOf("error") === -1){
        this.router.navigate(['./mymovies']);
      }else{
        let element = <HTMLElement>document.getElementsByClassName("alert")[0];
        element.style.display = "block";
        element.innerHTML = "You already have that movie! Proceed to My Movies page!";
      }
    }
  );
  }

  onRentMovie(): void {
    localStorage.setItem('ctrl', '3');
    var data = "movie_id=" + localStorage.getItem('movie_id') + "&& user_id=" + localStorage.getItem('user_id') + "&& p_id=" + localStorage.getItem('ctrl');
    var headers = new Headers();
    headers.append('Content-Type', 'application/x-www-form-urlencoded');
    headers.append("token", localStorage.getItem("token"));
    this.http.post('http://localhost/it255/addMovieToMyMovies.php', data, { headers: headers }).map(res => res).subscribe( data => this.postResponse = data, err => alert(JSON.stringify(err)),
    () => {
      if(this.postResponse["_body"].indexOf("error") === -1){
        this.router.navigate(['./mymovies']);
      }else{
        let element = <HTMLElement>document.getElementsByClassName("alert")[0];
        element.style.display = "block";
        element.innerHTML = "You already have that movie! Proceed to My Movies page!";
      }
    }
  );
  }
}
