import 'package:flutter/material.dart';
import 'package:main_portfolio_flutter/constants/app_constants.dart';
import 'package:main_portfolio_flutter/screens/about_screen.dart';
import 'package:main_portfolio_flutter/screens/contacts_screen.dart';
import 'package:main_portfolio_flutter/screens/home_screen.dart';
import 'package:main_portfolio_flutter/screens/projects_screen.dart';
import 'package:main_portfolio_flutter/screens/services_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentScreenTab = 0;

  List<Widget> screensList = [
    HomeScreen(),
    AboutScreen(),
    ServicesScreen(),
    ProjectsScreen(),
    ContactsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(),
      body: screensList[currentScreenTab],
    );
  }

  AppBar mainAppBar() {
    return AppBar(
      backgroundColor: AppConstants.appbgColor,
      shape: const Border(
        bottom: BorderSide(color: Colors.grey),
      ),
      actions: [
        const Spacer(),
        TextButton(
          onPressed: () {
            if (currentScreenTab != 0) {
              setState(() {
                currentScreenTab = 0;
              });
            }
          },
          child: const Row(
            children: [
              Icon(
                Icons.circle,
                size: 40,
                color: Colors.white,
              ),
              Text(
                ' Folio',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        const Spacer(flex: 5),
        TextButton(
          onPressed: () {
            if (currentScreenTab != 0) {
              setState(() {
                currentScreenTab = 0;
              });
            }
          },
          child: const Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            setState(() {
              currentScreenTab = 1;
            });
          },
          child: const Text(
            'About',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            setState(() {
              currentScreenTab = 2;
            });
          },
          child: const Text(
            'Services',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            setState(() {
              currentScreenTab = 3;
            });
          },
          child: const Text(
            'Projects',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Spacer(),
        ElevatedButton(
          onPressed: () {
            setState(() {
              currentScreenTab = 4;
            });
          },
          child: const Text(
            'Contact',
            style: TextStyle(color: Colors.black),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
