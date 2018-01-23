import { Component,Directive } from '@angular/core';
import { Http, Response, Headers } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import { Router, ActivatedRoute, Params } from '@angular/router';
import { DomSanitizer } from '@angular/platform-browser';


@Component({
  selector: 'HomePage',
  templateUrl: './home.html'
})

export class HomePageComponent{
  route: ActivatedRoute;
  data: String;
  http: Http;
  router: Router;

constructor(route: ActivatedRoute,http: Http, router: Router,public sanitizer: DomSanitizer) {
  this.http = http;
  this.router = router;

  this.route = route;


}

}
