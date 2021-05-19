import 'package:get/get.dart';
import 'package:lunapos/presentation/screens/LoginPage.dart';
import 'package:lunapos/presentation/screens/RegisterPage.dart';
import 'package:lunapos/presentation/screens/SignIn/SignInClientPage.dart';
import 'package:lunapos/presentation/screens/customer/CustomerPage.dart';
import 'package:lunapos/presentation/screens/order/OrderPage.dart';
import 'package:lunapos/presentation/screens/pos/PosPage.dart';
import 'package:lunapos/presentation/screens/product/ProductPage.dart';
import 'package:lunapos/presentation/screens/report/DailyReportPage.dart';
import 'package:lunapos/presentation/screens/report/SesiShiftPage.dart';
import 'package:lunapos/presentation/screens/report/TransactionLogPage.dart';
import 'package:lunapos/presentation/screens/setting/account/AccountPage.dart';
import 'package:lunapos/presentation/screens/setting/general/GeneralPage.dart';
import 'package:lunapos/presentation/screens/setting/order/OrderTemplatePage.dart';
import 'package:lunapos/presentation/screens/setting/printer/PrinterPage.dart';
import 'package:lunapos/presentation/screens/setting/system/SystemPage.dart';
import 'package:lunapos/presentation/screens/setting/template/TemplatePage.dart';
import 'package:lunapos/presentation/screens/shift/ShiftPage.dart';
import 'package:lunapos/presentation/screens/signin/SignInPinPage.dart';

var rootPage = [
  GetPage(name: '/', page: () => LoginPage()),
  // GetPage(name: '/', page: () => PrinterPage()),
  GetPage(
      name: '/register',
      page: () => RegisterPage(),
      transition: Transition.cupertino),
  GetPage(
      name: '/sign-client',
      page: () => SignClientPage(),
      transition: Transition.cupertino),
  GetPage(
      name: '/go-pin',
      page: () => SignPInPage(),
      transition: Transition.cupertino),
  GetPage(
      name: '/pos', page: () => PosPage(), transition: Transition.cupertino),
  GetPage(
      name: '/order',
      page: () => OrderPage(),
      transition: Transition.cupertino),
  GetPage(
      name: '/order-template',
      page: () => OrderTemplatePage(),
      transition: Transition.cupertino),
  GetPage(
      name: '/product',
      page: () => ProductPage(),
      transition: Transition.cupertino),
  GetPage(
      name: '/product-favorite',
      page: () => ProductPage(),
      transition: Transition.cupertino),
  GetPage(
      name: '/product-stock',
      page: () => ProductPage(),
      transition: Transition.cupertino),
  GetPage(
      name: '/customer',
      page: () => CustomerPage(),
      transition: Transition.cupertino),

  GetPage(
      name: '/shift',
      page: () => ShiftPage(),
      transition: Transition.cupertino),

  GetPage(
      name: '/daily-report',
      page: () => DailyReportPage(),
      transition: Transition.cupertino),
  GetPage(
      name: '/sesi-shift',
      page: () => SesiShiftPage(),
      transition: Transition.cupertino),
  GetPage(
      name: '/transaction-log',
      page: () => TransactionLogPage(),
      transition: Transition.cupertino),

  GetPage(
      name: '/umum',
      page: () => GeneralPage(),
      transition: Transition.cupertino),

  GetPage(
      name: '/template-order',
      page: () => OrderPage(),
      transition: Transition.cupertino),

  GetPage(
      name: '/template',
      page: () => TemplatePage(),
      transition: Transition.cupertino),

  GetPage(
      name: '/printer',
      page: () => PrinterPage(),
      transition: Transition.cupertino),

  GetPage(
      name: '/system',
      page: () => SystemPage(),
      transition: Transition.cupertino),

  GetPage(
      name: '/akun',
      page: () => AccountPage(),
      transition: Transition.cupertino),

  // GetPage(name: '/main', page: () => MainPage(), transition: Transition.fade),
  // GetPage(name: '/', page: () => HomePage()),
  // GetPage(
  //     name: '/detail',
  //     page: () => HouseDetailPage(),
  //     transition: Transition.cupertino),
];
