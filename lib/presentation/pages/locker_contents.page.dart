import 'package:flutter/material.dart';
import 'package:sneezing_cheetah/colors.dart';

class LockerContentsPage extends StatelessWidget {
  const LockerContentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: scaffoldColor,
      elevation: 0,
      title: Text(
        'Locker Contents',
        style: TextStyle(color: Colors.black),
      ),
    ));
  }
}
