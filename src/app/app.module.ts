import { NgModule, ErrorHandler } from '@angular/core';
import { IonicApp, IonicModule, IonicErrorHandler } from 'ionic-angular';
import { MyApp } from './app.component';
import { FocusPage } from '../pages/focus/focus';
import { DiscoveryPage } from '../pages/discovery/discovery';
import { WritePage } from '../pages/write/write';
import { MsgPage } from '../pages/msg/msg';
import { MePage } from '../pages/me/me';
// import { HomePage } from '../pages/home/home';
import { TabsPage } from '../pages/tabs/tabs';

@NgModule({
  declarations: [
    MyApp,
    FocusPage,
    DiscoveryPage,
    WritePage,
    MsgPage,
    MePage,
    // HomePage,
    TabsPage
  ],
  imports: [
    IonicModule.forRoot(MyApp)
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    FocusPage,
    DiscoveryPage,
    WritePage,
    MsgPage,
    MePage,
    // HomePage,
    TabsPage
  ],
  providers: [{provide: ErrorHandler, useClass: IonicErrorHandler}]
})
export class AppModule {}
