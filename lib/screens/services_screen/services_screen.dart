import 'package:flutter/material.dart';
import 'package:main_portfolio_flutter/constants/app_constants.dart';
import 'package:main_portfolio_flutter/utils/gradient_text.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppConstants.appbgColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              GradientText(
                'My Services',
                gradient: AppConstants.myGradient,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              component1(
                size,
                label: 'Flutter Development',
                description:
                    'Elevate your digital presence with cutting-edge Flutter development services tailored to your needs. As a seasoned Flutter developer, I craft sleek, dynamic, and cross-platform applications that seamlessly run on iOS, Android, and the web. With a keen eye for design and a commitment to functionality, I specialize in delivering captivating user experiences that captivate audiences and drive engagement. From prototyping to deployment, trust me to bring your vision to life with efficiency and precision, ensuring your app stands out in today\'s competitive market.',
                imgPath: AppConstants.flutterServicesImgPath,
              ),
              component2(
                size,
                label: 'Next JS Web App Development',
                description:
                    'Elevate your digital presence with cutting-edge Flutter development services tailored to your needs. As a seasoned Flutter developer, I craft sleek, dynamic, and cross-platform applications that seamlessly run on iOS, Android, and the web. With a keen eye for design and a commitment to functionality, I specialize in delivering captivating user experiences that captivate audiences and drive engagement. From prototyping to deployment, trust me to bring your vision to life with efficiency and precision, ensuring your app stands out in today\'s competitive market.',
                imgPath: AppConstants.nextjsServiceImgPath,
              ),
              component1(
                size,
                label: 'Backend Development',
                description:
                    'Elevate your digital presence with cutting-edge Flutter development services tailored to your needs. As a seasoned Flutter developer, I craft sleek, dynamic, and cross-platform applications that seamlessly run on iOS, Android, and the web. With a keen eye for design and a commitment to functionality, I specialize in delivering captivating user experiences that captivate audiences and drive engagement. From prototyping to deployment, trust me to bring your vision to life with efficiency and precision, ensuring your app stands out in today\'s competitive market.',
                imgPath: AppConstants.nodejsMongoDbExpressServiceImgPath,
              ),
              component2(
                size,
                label: 'Flutter Development',
                description:
                    'Elevate your digital presence with cutting-edge Flutter development services tailored to your needs. As a seasoned Flutter developer, I craft sleek, dynamic, and cross-platform applications that seamlessly run on iOS, Android, and the web. With a keen eye for design and a commitment to functionality, I specialize in delivering captivating user experiences that captivate audiences and drive engagement. From prototyping to deployment, trust me to bring your vision to life with efficiency and precision, ensuring your app stands out in today\'s competitive market.',
                imgPath: AppConstants.flutterServicesImgPath,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container component2(
    size, {
    required String label,
    required String description,
    required String imgPath,
  }) {
    return Container(
      color: Colors.grey,
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          size.width > 715
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imgPath,
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                )
              : const SizedBox.shrink(),
          size.width > 715
              ? const SizedBox(width: 20)
              : const SizedBox.shrink(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 30,
                    color: AppConstants.whiteColor,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  description,
                  style: TextStyle(
                    color: AppConstants.appbgColor,
                  ),
                ),
                const SizedBox(height: 20),
                // ElevatedButton(
                //   onPressed: () {},
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.black,
                //   ),
                //   child: const Text(
                //     'View Projects',
                //     style: TextStyle(color: Colors.white),
                //   ),
                // ),
                size.width < 715
                    ? const SizedBox(height: 50)
                    : const SizedBox.shrink(),
                size.width < 715
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          imgPath,
                          height: 240,
                          fit: BoxFit.fill,
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container component1(
    Size size, {
    required String label,
    required String description,
    required String imgPath,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 30,
                    color: AppConstants.whiteColor,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  description,
                  style: TextStyle(
                    color: AppConstants.greyColor,
                  ),
                ),
                const SizedBox(height: 20),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: const Text(
                //     'View Projects',
                //     style: TextStyle(color: Colors.black),
                //   ),
                // ),
                size.width < 715
                    ? const SizedBox(height: 50)
                    : const SizedBox.shrink(),
                size.width < 715
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          imgPath,
                          height: 240,
                          fit: BoxFit.cover,
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
          size.width > 715
              ? const SizedBox(width: 50)
              : const SizedBox.shrink(),
          size.width > 715
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imgPath,
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
