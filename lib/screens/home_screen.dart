import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:main_portfolio_flutter/constants/app_constants.dart';
import 'package:main_portfolio_flutter/utils/gradient_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.appbgColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Spacer(),
          // INFO COLUMN
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hi!👋',
                  style: TextStyle(
                    fontSize: 46,
                    color: AppConstants.whiteColor,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'I\'m ',
                      style: TextStyle(
                          fontSize: 46, color: AppConstants.whiteColor),
                    ),
                    GradientText(
                      'Ayush Kharwal',
                      style: const TextStyle(fontSize: 46),
                      gradient: AppConstants.myGradient,
                    ),
                  ],
                ),
                Text(
                  'The Flutter Developer',
                  style: TextStyle(
                      fontSize: 30,
                      color: AppConstants.whiteColor,
                      decoration: TextDecoration.underline,
                      decorationColor: AppConstants.whiteColor),
                ),
                const SizedBox(height: 20),
                Text(
                  'I\'m a passionate Mobile Application Developer with a knack for crafting beautiful and functional mobile applications. With a keen eye for detail and a love for innovation, I specialize in creating seamless user experiences that leave a lasting impression.',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppConstants.whiteColor,
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          // MY PICTURE
          Stack(
            children: [
              SvgPicture.asset(AppConstants.homeImgbgPath),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
