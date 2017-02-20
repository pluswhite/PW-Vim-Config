import { Component } from '@angular/core';

import { NavController, NavParams } from 'ionic-angular';

@Component({
  moduleId: 'focusDetails',
  selector: 'page-focus-details',
  templateUrl: 'focus-details.html',
  styleUrls: [
    // 'focusDetails.scss'
  ]
})

export class FocusDetailsPage {
  pet: string = "comments";
  selectedFocus: any;
  constructor(public navCtrl: NavController, public navParams: NavParams) {
    this.selectedFocus = navParams.get('focus');
  }
}
