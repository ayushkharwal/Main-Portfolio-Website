import 'package:flutter/material.dart';
import 'package:main_portfolio_flutter/constants/app_constants.dart';
import 'package:main_portfolio_flutter/screens/about_screen/about_screen.dart';
import 'package:main_portfolio_flutter/screens/contacts_screen/contacts_screen.dart';
import 'package:main_portfolio_flutter/screens/home_screen/home_screen.dart';
import 'package:main_portfolio_flutter/screens/projects_screen/projects_screen.dart';
import 'package:main_portfolio_flutter/screens/services_screen/services_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentScreenTab = 0;

  List<Widget> screensList = [
    const HomeScreen(),
    const AboutScreen(),
    const ServicesScreen(),
    const ProjectsScreen(),
    const ContactsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(),
      body: screensList[currentScreenTab],

      // body: const ProjectsScreen(),
    );
  }

  AppBar mainAppBar() {
    return AppBar(
      backgroundColor: AppConstants.appbgColor,
      surfaceTintColor: Colors.purple.withOpacity(0.4),
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
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: AppConstants.myGradient,
                  borderRadius: BorderRadius.circular(37),
                  border: Border.all(
                    color: AppConstants.whiteColor,
                    width: 2,
                  ),
                ),
                height: 45,
                width: 45,
                // padding: const EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    'AK',
                    style: TextStyle(
                      color: AppConstants.whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Text(
                ' Folio',
                style: TextStyle(
                  color: AppConstants.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
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
        GestureDetector(
          onTap: () {
            setState(() {
              currentScreenTab = 4;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              gradient: AppConstants.myGradient,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 8,
            ),
            child: Text(
              'Contact',
              style: TextStyle(
                color: AppConstants.whiteColor,
              ),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
