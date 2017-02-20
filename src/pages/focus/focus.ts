import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';

import { NewFocusPage } from '../new-focus/new-foucs';

import { FocusDetailsPage } from '../focus-details/focus-details';

@Component({
  selector: 'page-focus',
  templateUrl: './focus.html',
  styleUrls: [
    // 'focus.scss'
  ]
})

export class FocusPage {
  private focusList: any;
  constructor(public navCtrl: NavController) {
    this.focusList = [{
      "avatar": "/assets/avatar/avatar-ts-woody.png",
      "name": "Woody",
      "desc": "Thsi town ain't big enougth.",
      "update": "8"
    },
    {
      "avatar": "/assets/avatar/avatar-ts-buzz.png",
      "name": "Buzz Lightyear",
      "desc": "Thsi town ain't big enougth.",
      "update": "22"
    },
    {
      "avatar": "/assets/avatar/avatar-ts-jessie.png",
      "name": "Jessie",
      "desc": "Thsi town ain't big enougth.",
      "update": "9"
    },
    {
      "avatar": "/assets/avatar/avatar-ts-potatohead.png",
      "name": "Mr.Potata Head",
      "desc": "Thsi town ain't big enougth.",
      "update": "37"
    },
    {
      "avatar": "/assets/avatar/avatar-ts-hamm.png",
      "name": "Hamm",
      "desc": "Thsi town ain't big enougth.",
      "update": "1"
    },
    {
      "avatar": "/assets/avatar/avatar-ts-slinky.png",
      "name": "Slinky Dog",
      "desc": "Thsi town ain't big enougth.",
      "update": "9"
    },
    {
      "avatar": "/assets/avatar/avatar-ts-rex.png",
      "name": "Rex",
      "desc": "Thsi town ain't big enougth.",
      "update": "8"
    },
    {
      "avatar": "/assets/avatar/avatar-ts-bullseye.png",
      "name": "Bullseye",
      "desc": "Thsi town ain't big enougth.",
      "update": "9"
    }];
  }

  getFocus () {

  }

  oneFocusTappped (event, focus) {
    this.navCtrl.push(FocusDetailsPage, {
      focus: focus
    })
  }

  addFocusTapped (event) {
    this.navCtrl.push(NewFocusPage);
  }
}
