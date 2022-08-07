// ignore_for_file: prefer_const_constructors

import 'package:dual_theme_daily_task_app/Services/theme_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Services/notification_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notifyHelper;
  @override
  void initState() {
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.requestIOSPermissions();
    notifyHelper.initializeNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Text("Hello World"),
        ],
      ),
    );
  }

  // ignore: dead_code
  _appBar() {
    return AppBar(
        leading: GestureDetector(
          // onTap: () {
          //   ThemeService().switchTheme();
          //   notifyHelper.displayNotification(
          //       title: "You have changed your theme",
          //       body: Get.isDarkMode
          //           ? "Activated Dark Theme"
          //           : "Activated Light Theme");
          // },
          onPanDown: (_) {
            ThemeService().switchTheme();
            notifyHelper.displayNotification(
                title: "You have changed your theme",
                body: Get.isDarkMode
                    ? "Activated Dark Theme"
                    : "Activated Light Theme");
          },
          child: const Icon(
            Icons.nightlight_round,
            size: 20,
          ),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Icon(Icons.person, size: 20),
          SizedBox(width: 20),
        ]);
  }
}
