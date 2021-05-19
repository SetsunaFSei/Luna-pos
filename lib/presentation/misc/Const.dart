import 'package:get/get.dart';
import 'package:lunapos/presentation/screens/LoginPage.dart';

// String authUrl = 'http://103.56.148.192:3200/';
String baseUrl = 'http://192.168.1.7:9010/';

var rootPage = [
  GetPage(name: '/', page: () => LoginPage()),
];
// var widgetOptions = <Widget>[
//   HomePage(),
//   PesananPage(),
//   TagihanPage(),
//   ProfilePage()
// ];
