import { Component, Directive } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';
import { Http, Response, Headers } from '@angular/http';
import 'rxjs/Rx';
import { Router, ActivatedRoute, Params } from '@angular/router';

@Component({
  selector: 'EditMovieComponent',
  templateUrl: `./editmovie.html`,
})

export class EditMovieComponent {
  http: Http;
  router: Router;
  postResponse: Response;
  route: ActivatedRoute;
  data: Object[];
  editMovieForm = new FormGroup({
    description: new FormControl(),

  });

   constructor(route: ActivatedRoute, http: Http, router: Router) {
    this.http = http;
    this.router = router;
    this.route = route;
    	if(localStorage.getItem('token') == null){
      		this.router.navigate(['']);
    	}
  	}

  onEditMovie(): void {
  	  this.route.params.subscribe((params: Params) => {
	      let id = params['id'];
	      let headers = new Headers();
	      var data = "id=" + id+ "&&description=" + this.editMovieForm.value.description;
	      headers.append('Content-Type', 'application/x-www-form-urlencoded');
	      headers.append("token",localStorage.getItem("token"));
	      this.http.post('http://localhost/it255/editmovie.php', data, { headers: headers })
	      .map(res => res)
	      .subscribe( data => this.postResponse = data,
	        err => alert(JSON.stringify(err)),() => {
	          if(this.postResponse["_body"].indexOf("error") === -1){
	            this.router.navigate(['/mymovies']);
	          }else{
	            alert("Error, unseccessfull");
	          }
	        }
	      );
	  	}
	  	);
	}
}
