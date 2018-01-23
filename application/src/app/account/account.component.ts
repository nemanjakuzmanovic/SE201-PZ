import { Component, Directive } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';
import { Http, Response, Headers } from '@angular/http';
import 'rxjs/Rx';
import { Router, ActivatedRoute, Params } from '@angular/router';

@Component({
  selector: 'AccountComponent',
  templateUrl: './account.html',
})
export class AccountComponent {
  http: Http;
  router: Router;
  route: ActivatedRoute;
  data: Object[];
  data2: String;
  postResponse: Response;


  constructor(route: ActivatedRoute, http: Http, router: Router) {
    this.http = http;
    this.router = router;
    this.route = route;
    if(localStorage.getItem('token') == null){
        this.router.navigate(['']);
    }
  }

  ngOnInit() {

    let headers = new Headers();

    headers.append('Content-Type', 'application/x-www-form-urlencoded');
    headers.append("token",localStorage.getItem("token"));
    this.http.get('http://localhost/it255/getaccount.php?token='+localStorage.getItem('token'),{headers:headers}).map(res => res.json()).share().subscribe(data => {
      this.data = data.data;

    },
    err => {
      this.router.navigate(['./']);
    }
  );
  }
}
