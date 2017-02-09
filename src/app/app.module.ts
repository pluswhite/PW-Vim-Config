import { NgModule, ErrorHandler } from '@angular/core';
import { IonicApp, IonicModule, IonicErrorHandler } from 'ionic-angular';
import { MyApp } from './app.component';
import { FocusPage } from '../pages/focus/focus';
import { NewFocusPage } from '../pages/newFocus/newFoucs';
import { FocusDetailsPage } from '../pages/focusDetails/focusDetails';
import { DiscoveryPage } from '../pages/discovery/discovery';
import { WritePage } from '../pages/write/write';
import { MsgPage } from '../pages/msg/msg';
import { MePage } from '../pages/me/me';
import { TabsPage } from '../pages/tabs/tabs';

@NgModule({
  declarations: [
    MyApp,
    FocusPage,
    NewFocusPage,
    FocusDetailsPage,
    DiscoveryPage,
    WritePage,
    MsgPage,
    MePage,
    TabsPage
  ],
  imports: [
    IonicModule.forRoot(MyApp)
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    FocusPage,
    NewFocusPage,
    FocusDetailsPage,
    DiscoveryPage,
    WritePage,
    MsgPage,
    MePage,
    TabsPage
  ],
  providers: [{provide: ErrorHandler, useClass: IonicErrorHandler}]
})
export class AppModule {}
