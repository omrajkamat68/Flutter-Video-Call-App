import 'package:flutter/cupertino.dart';
import 'package:video_call_app/screens/home_page.dart';
import 'package:video_call_app/screens/login_page.dart';

import '../screens/call_page.dart';

class PageRouteNames{
  static const login='/login';
  static const home='/home_page';
  static const call='/call';
}

class PageParam{
  static String localUserID='local_user_id';
  static String call_id='call_id';
}

Map<String,WidgetBuilder> routes={
  PageRouteNames.login:(context)=>const LogInPage(),
  PageRouteNames.home:(context)=>const HomePage(),
  PageRouteNames.call:(context)=>const CallPage()
};