import { Component } from '@angular/core';

import { FocusPage } from '../focus/focus';
import { DiscoveryPage } from '../discovery/discovery';
import { WritePage } from '../write/write';
import { HomePage } from '../home/home';
import { MsgPage } from '../msg/msg';
import { MePage } from '../me/me';

@Component({
  templateUrl: 'tabs.html'
})
export class TabsPage {
  // this tells the tabs component which Pages
  // should be each tab's root Page
  tabFocus: any = FocusPage;
  tabDiscovery: any = DiscoveryPage;
  tabWrite: any = WritePage;
  tabMsg: any = MsgPage;
  tabMe: any = MePage;

  constructor() {

  }
}
