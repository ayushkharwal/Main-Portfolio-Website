import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

class _MainAppState extends State<MainApp> with TickerProviderStateMixin {
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
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: mainAppBar(size),
      endDrawer: mainEndDrawer(context),
      body: AnimatedSwitcher(
        duration: const Duration(seconds: 1),
        child: screensList[currentScreenTab],
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    );
  }

  Drawer mainEndDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: AppConstants.appbgColor,
      child: Column(
        children: [
          const SizedBox(height: 50),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();

              if (currentScreenTab != 0) {
                setState(() {
                  currentScreenTab = 0;
                });
              }
            },
            leading: SvgPicture.asset(
              AppConstants.homeDrawerIconPath,
              height: 20,
              color: currentScreenTab == 0 ? Colors.white : Colors.grey,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: currentScreenTab == 0 ? Colors.white : Colors.grey,
                fontWeight:
                    currentScreenTab == 0 ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
          // const Divider(),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();

              setState(() {
                currentScreenTab = 1;
              });
            },
            leading: SvgPicture.asset(
              AppConstants.aboutDrawerIconPath,
              height: 20,
              color: currentScreenTab == 1 ? Colors.white : Colors.grey,
            ),
            title: Text(
              'About',
              style: TextStyle(
                color: currentScreenTab == 1 ? Colors.white : Colors.grey,
                fontWeight:
                    currentScreenTab == 1 ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
          // const Divider(),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();

              setState(() {
                currentScreenTab = 2;
              });
            },
            leading: SvgPicture.asset(
              AppConstants.servicesDrawerIconPath,
              height: 20,
              color: currentScreenTab == 2 ? Colors.white : Colors.grey,
            ),
            title: Text(
              'Services',
              style: TextStyle(
                color: currentScreenTab == 2 ? Colors.white : Colors.grey,
                fontWeight:
                    currentScreenTab == 2 ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
          // const Divider(),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              setState(() {
                currentScreenTab = 3;
              });
            },
            leading: SvgPicture.asset(
              AppConstants.projectsDrawerIconPath,
              height: 20,
              color: currentScreenTab == 3 ? Colors.white : Colors.grey,
            ),
            title: Text(
              'Projects',
              style: TextStyle(
                color: currentScreenTab == 3 ? Colors.white : Colors.grey,
                fontWeight:
                    currentScreenTab == 3 ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
          // const Divider(),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();

              setState(() {
                currentScreenTab = 4;
              });
            },
            leading: SvgPicture.asset(
              AppConstants.contactDrawerIconPath,
              height: 20,
              color: currentScreenTab == 4 ? Colors.white : Colors.grey,
            ),
            title: Text(
              'Contact',
              style: TextStyle(
                color: currentScreenTab == 4 ? Colors.white : Colors.grey,
                fontWeight:
                    currentScreenTab == 4 ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
          // const Divider(),
        ],
      ),
    );
  }

  AppBar mainAppBar(Size size) {
    return AppBar(
      backgroundColor: AppConstants.appbgColor,
      surfaceTintColor: Colors.black,
      shape: const Border(
        bottom: BorderSide(color: Colors.grey),
      ),
      actions: size.width > 490
          ? [
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
                child: Text(
                  'Home',
                  style: TextStyle(
                    color: currentScreenTab != 0 ? Colors.grey : Colors.white,
                    fontWeight: currentScreenTab != 0
                        ? FontWeight.normal
                        : FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  setState(() {
                    currentScreenTab = 1;
                  });
                },
                child: Text(
                  'About',
                  style: TextStyle(
                    color: currentScreenTab != 1 ? Colors.grey : Colors.white,
                    fontWeight: currentScreenTab != 1
                        ? FontWeight.normal
                        : FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  setState(() {
                    currentScreenTab = 2;
                  });
                },
                child: Text(
                  'Services',
                  style: TextStyle(
                    color: currentScreenTab != 2 ? Colors.grey : Colors.white,
                    fontWeight: currentScreenTab != 2
                        ? FontWeight.normal
                        : FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  setState(() {
                    currentScreenTab = 3;
                  });
                },
                child: Text(
                  'Projects',
                  style: TextStyle(
                    color: currentScreenTab != 3 ? Colors.grey : Colors.white,
                    fontWeight: currentScreenTab != 3
                        ? FontWeight.normal
                        : FontWeight.bold,
                  ),
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
            ]
          : [
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
              const Spacer(),
              Builder(
                builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    icon: const Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                    ),
                  );
                },
              ),
            ],
    );
  }
}
