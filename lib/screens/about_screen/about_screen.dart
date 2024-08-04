import 'package:flutter/material.dart';
import 'package:main_portfolio_flutter/constants/app_constants.dart';
import 'package:main_portfolio_flutter/utils/gradient_text.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppConstants.appbgColor,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height / 4),
                GradientText(
                  'About Me',
                  gradient: AppConstants.myGradient,
                  style: const TextStyle(
                    fontSize: 54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'With a 1+ years of experience as a professional flutter developer, I have acquired the skills and knowledge necessary to make your project a success. I enjoy every step of the design process, from discussion and collaboration.  Experienced in integrating RESTful APIs and third-party libraries to enhance app functionality. Dedicated to staying updated with the latest Flutter trends and best practices to deliver top-notch solutions. Possess strong problem-solving skills and a keen eye for detail, ensuring robust and polished applications.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppConstants.whiteColor,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: size.height / 4),
                size.width >= 845
                    ? numLabelWholeRowWidget()
                    : numLabelWholeColumnWidget(),
                SizedBox(height: size.height / 5),
                size.width >= 930
                    ? educationWorkRowWidget()
                    : educationWorkColumnWidget(size),
                SizedBox(height: size.height / 5),
              ],
            ),
          ),
        ),
      ),
    );
  }

  numLabelWholeColumnWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        numLabelWidget(
          num: '1+',
          label: 'Years of experience',
        ),
        Divider(
          color: AppConstants.whiteColor,
          thickness: 2,
          height: 20,
        ),
        numLabelWidget(
          num: '5+',
          label: 'Successful Projects Completed',
        ),
        Divider(
          color: AppConstants.whiteColor,
          thickness: 2,
          height: 20,
        ),
        numLabelWidget(
          num: '5+',
          label: 'Global Customers',
        ),
      ],
    );
  }

  IntrinsicHeight numLabelWholeRowWidget() {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          numLabelWidget(
            num: '1+',
            label: 'Years of experience',
          ),
          VerticalDivider(
            color: AppConstants.whiteColor,
            thickness: 2,
          ),
          numLabelWidget(
            num: '5+',
            label: 'Successful Projects Completed',
          ),
          VerticalDivider(
            color: AppConstants.whiteColor,
            thickness: 2,
          ),
          numLabelWidget(
            num: '5+',
            label: 'Global Customers',
          ),
        ],
      ),
    );
  }

  Column educationWorkColumnWidget(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // EDUCATION COLUMN
        Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientText(
              'Education',
              gradient: AppConstants.myGradient,
              style: const TextStyle(
                fontSize: 54,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Text(
              'Chandigarh Engineering College',
              style: TextStyle(
                color: AppConstants.whiteColor,
                fontSize: 30,
              ),
            ),
            const Text(
              'Btech Computer Science Engineering',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'DAV Public School Dharamshala',
              style: TextStyle(
                color: AppConstants.whiteColor,
                fontSize: 30,
              ),
            ),
            const Text(
              '12th Grade',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 24,
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),

        // WORK COLUMN
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: GradientText(
                'Work Experience',
                gradient: AppConstants.myGradient,
                style: const TextStyle(
                  fontSize: 54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Text(
              'ESR Solutions',
              style: TextStyle(
                color: AppConstants.whiteColor,
                fontSize: 30,
              ),
            ),
            size.width > 469
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Flutter Developer',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        '(07/2023 - Present)',
                        style: TextStyle(
                          color: AppConstants.greyColor,
                        ),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Flutter Developer',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        '(07/2023 - Present)',
                        style: TextStyle(
                          color: AppConstants.greyColor,
                        ),
                      ),
                    ],
                  ),
            const SizedBox(height: 20),
            Text(
              'IndiaP2P',
              style: TextStyle(
                color: AppConstants.whiteColor,
                fontSize: 30,
              ),
            ),
            size.width > 469
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Flutter Developer Intern',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        '(03/2023 - 07/2023)',
                        style: TextStyle(
                          color: AppConstants.greyColor,
                        ),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Flutter Developer Intern',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        '(03/2023 - 07/2023)',
                        style: TextStyle(
                          color: AppConstants.greyColor,
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ],
    );
  }

  Row educationWorkRowWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientText(
              'Education',
              gradient: AppConstants.myGradient,
              style: const TextStyle(
                fontSize: 54,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Text(
              'Chandigarh Engineering College',
              style: TextStyle(
                color: AppConstants.whiteColor,
                fontSize: 30,
              ),
            ),
            const Text(
              'Btech Computer Science Engineering',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'DAV Public School Dharamshala',
              style: TextStyle(
                color: AppConstants.whiteColor,
                fontSize: 30,
              ),
            ),
            const Text(
              '12th Grade',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 24,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientText(
              'Work Experience',
              gradient: AppConstants.myGradient,
              style: const TextStyle(
                fontSize: 54,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Text(
              'ESR Solutions',
              style: TextStyle(
                color: AppConstants.whiteColor,
                fontSize: 30,
              ),
            ),
            Row(
              children: [
                const Text(
                  'Flutter Developer',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  '(07/2023 - Present)',
                  style: TextStyle(
                    color: AppConstants.greyColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'IndiaP2P',
              style: TextStyle(
                color: AppConstants.whiteColor,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Flutter Developer Intern',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  '(03/2023 - 07/2023)',
                  style: TextStyle(
                    color: AppConstants.greyColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column numLabelWidget({required String num, required String label}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GradientText(
          num,
          gradient: AppConstants.myGradient,
          style: const TextStyle(fontSize: 40),
        ),
        Text(
          label,
          style: TextStyle(
            color: AppConstants.whiteColor,
            fontSize: 24,
          ),
        )
      ],
    );
  }
}
