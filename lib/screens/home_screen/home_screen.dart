import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:main_portfolio_flutter/constants/app_constants.dart';
import 'package:main_portfolio_flutter/constants/url_details.dart';
import 'package:main_portfolio_flutter/utils/gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppConstants.appbgColor,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(width: 50),
              // INFO COLUMN
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(
                    //   'Screen Width: ${size.width}',
                    //   style: const TextStyle(color: Colors.white),
                    // ),
                    Row(
                      children: [
                        Text(
                          'Hey!',
                          style: TextStyle(
                            fontSize: 46,
                            color: AppConstants.whiteColor,
                          ),
                        ),
                        const SizedBox(width: 10),
                        SvgPicture.asset(
                          AppConstants.waveHandIconPath,
                          height: 50,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I\'m ',
                          style: TextStyle(
                              fontSize: 46, color: AppConstants.whiteColor),
                        ),
                        Expanded(
                          child: GradientText(
                            'Ayush Kharwal',
                            style: const TextStyle(fontSize: 46),
                            gradient: AppConstants.myGradient,
                          ),
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
                        color: Colors.grey.shade400,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            launchUrl(Uri.parse(UrlDetails.upworkUrl));
                          },
                          icon: Icon(
                            Icons.work_rounded,
                            color: Colors.orange.shade800,
                          ),
                          iconAlignment: IconAlignment.end,
                          label: const Text(
                            '  Hire Me  ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                color: Colors.purple,
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.download_rounded,
                            color: AppConstants.whiteColor,
                          ),
                          iconAlignment: IconAlignment.end,
                          label: Text(
                            'Download CV',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppConstants.whiteColor),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                color: Colors.purple,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Follow me on',
                      style: TextStyle(
                        color: AppConstants.whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            launchUrl(Uri.parse(UrlDetails.twitterUrl));
                          },
                          child: SvgPicture.asset(
                            AppConstants.twitterIconPath,
                            height: 40,
                          ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () {
                            launchUrl(Uri.parse(UrlDetails.linkedinUrl));
                          },
                          child: SvgPicture.asset(
                            AppConstants.linkedinIconPath,
                            height: 40,
                          ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () {
                            launchUrl(Uri.parse(UrlDetails.githubUrl));
                          },
                          child: SvgPicture.asset(
                            AppConstants.githubIconPath,
                            height: 40,
                          ),
                        ),
                        // const SizedBox(width: 20),
                        // InkWell(
                        //   onTap: () {
                        //     launchUrl(Uri.parse(UrlDetails.instagramUrl));
                        //   },
                        //   child: SvgPicture.asset(
                        //     AppConstants.instaIconPath,
                        //     height: 40,
                        //   ),
                        // ),
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              ),
              // MY PICTURE
              size.width < 753
                  ? const SizedBox.shrink()
                  : Stack(
                      children: [
                        Image.asset(
                          AppConstants.mainPicPath,
                          opacity: const AlwaysStoppedAnimation(.9),
                          scale: size.width > 1250
                              ? 1
                              : size.width < 883
                                  ? 3
                                  : 2,
                        ),
                      ],
                    ),
              // const Spacer(),

              const SizedBox(width: 50),
            ],
          ),
        ),
      ),
    );
  }
}
