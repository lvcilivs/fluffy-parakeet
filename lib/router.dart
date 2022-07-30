import 'package:flutter/material.dart';
import 'package:sneezing_cheetah/presentation/pages/ekyc.page.dart';
import 'package:sneezing_cheetah/presentation/pages/fourofour.page.dart';
import 'package:sneezing_cheetah/presentation/pages/home.page.dart';
import 'package:sneezing_cheetah/presentation/pages/locker_contents.page.dart';
import 'package:sneezing_cheetah/presentation/pages/payments.page.dart';

const String initialPage = homePage;
const String homePage = '/home';
const String fourofourPage = 'fourofour';
const String lockerContentsPage = 'lockerContents';
const String ekycPage = 'ekyc';
const String paymentPage = 'payment';

Route<dynamic> generateRoutes(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case homePage:
      return MaterialPageRoute<dynamic>(builder: (_) => const HomePage());

    case lockerContentsPage:
      return MaterialPageRoute<dynamic>(
          builder: (_) => const LockerContentsPage());

    case ekycPage:
      return MaterialPageRoute<dynamic>(builder: (_) => const EkycPage());

    case paymentPage:
      return MaterialPageRoute<dynamic>(builder: (_) => const PaymentsPage());

    default:
      return MaterialPageRoute<dynamic>(builder: (_) => const FourofourPage());
  }
}
