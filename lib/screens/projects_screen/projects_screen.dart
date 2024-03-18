import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:main_portfolio_flutter/constants/app_constants.dart';
import 'package:main_portfolio_flutter/screens/projects_screen/projects_screen_constants.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppConstants.appbgColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Starr GEO
              size.width > 888
                  ? projectCard1Row(
                      label: 'Starr GEO',
                      description: ProjectsScreenConstants.starrGEODesc,
                      imgCardColor: AppConstants.starrGEOProjectCardColor,
                      img1Path: AppConstants.starrGeo1ImgPath,
                      img2Path: AppConstants.starrGeo2ImgPath,
                      img3Path: AppConstants.starrGeo4ImgPath,
                      size: size,
                    )
                  : projectCard1Column(
                      label: 'Starr GEO',
                      description: ProjectsScreenConstants.starrGEODesc,
                      imgCardColor: AppConstants.starrGEOProjectCardColor,
                      img1Path: AppConstants.starrGeo1ImgPath,
                      img2Path: AppConstants.starrGeo2ImgPath,
                      img3Path: AppConstants.starrGeo4ImgPath,
                      size: size,
                    ),

              // Starr KEY
              size.width > 888
                  ? projectCard2Row(
                      label: 'Starr KEY',
                      description: ProjectsScreenConstants.starrKeyDesc,
                      imgCardColor: AppConstants.starrKEYProjectCardColor,
                      img1Path: AppConstants.starrKey1ImgPath,
                      img2Path: AppConstants.starrKey2ImgPath,
                      img3Path: AppConstants.starrKey4ImgPath,
                      size: size,
                    )
                  : projectCard2Column(
                      label: 'Starr KEY',
                      description: ProjectsScreenConstants.starrKeyDesc,
                      imgCardColor: AppConstants.starrKEYProjectCardColor,
                      img1Path: AppConstants.starrKey1ImgPath,
                      img2Path: AppConstants.starrKey2ImgPath,
                      img3Path: AppConstants.starrKey4ImgPath,
                      size: size,
                    ),

              // KT Royal
              size.width > 888
                  ? projectCard1Row(
                      label: 'KT Royal',
                      description: ProjectsScreenConstants.ktRoyalDesc,
                      imgCardColor: AppConstants.ktRoyalProjectCardColor,
                      img1Path: AppConstants.kt1ImgPath,
                      img2Path: AppConstants.kt3ImgPath,
                      img3Path: AppConstants.kt4ImgPath,
                      size: size,
                    )
                  : projectCard1Column(
                      label: 'KT Royal',
                      description: ProjectsScreenConstants.ktRoyalDesc,
                      imgCardColor: AppConstants.ktRoyalProjectCardColor,
                      img1Path: AppConstants.kt1ImgPath,
                      img2Path: AppConstants.kt3ImgPath,
                      img3Path: AppConstants.kt4ImgPath,
                      size: size,
                    ),

              // Habit Tracker
              size.width > 888
                  ? projectCard2Row(
                      label: 'Habit Tracker',
                      description:
                          '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"',
                      imgCardColor: AppConstants.habitTrackerCardColor,
                      img1Path: AppConstants.habitTracker1ImgPath,
                      img2Path: AppConstants.habitTracker2ImgPath,
                      img3Path: AppConstants.habitTracker3ImgPath,
                      size: size,
                    )
                  : projectCard2Column(
                      label: 'Habit Tracker',
                      description:
                          '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"',
                      imgCardColor: AppConstants.habitTrackerCardColor,
                      img1Path: AppConstants.habitTracker1ImgPath,
                      img2Path: AppConstants.habitTracker2ImgPath,
                      img3Path: AppConstants.habitTracker3ImgPath,
                      size: size,
                    ),
            ],
          ),
        ),
      ),
    );
  }

  projectCard1Row({
    required String label,
    required String description,
    required Color imgCardColor,
    required String img1Path,
    required String img2Path,
    required String img3Path,
    required Size size,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: imgCardColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    img1Path,
                    scale: 7,
                  ),
                  size.width > 1269
                      ? Image.asset(
                          img2Path,
                          scale: 7,
                        )
                      : const SizedBox.shrink(),
                  Image.asset(
                    img3Path,
                    scale: 7,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 40,
                    color: AppConstants.whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppConstants.greyColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container projectCard2Row({
    required String label,
    required String description,
    required Color imgCardColor,
    required String img1Path,
    required String img2Path,
    required String img3Path,
    required Size size,
  }) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: imgCardColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    img1Path,
                    scale: 7,
                  ),
                  size.width > 1269
                      ? Image.asset(
                          img2Path,
                          scale: 7,
                        )
                      : const SizedBox.shrink(),
                  Image.asset(
                    img3Path,
                    scale: 7,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  projectCard1Column({
    required String label,
    required String description,
    required Color imgCardColor,
    required String img1Path,
    required String img2Path,
    required String img3Path,
    required Size size,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Column(
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 40,
                  color: AppConstants.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppConstants.greyColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: imgCardColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  img1Path,
                  scale: 7,
                ),
                size.width > 1269
                    ? Image.asset(
                        img2Path,
                        scale: 7,
                      )
                    : const SizedBox.shrink(),
                Image.asset(
                  img3Path,
                  scale: 7,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container projectCard2Column({
    required String label,
    required String description,
    required Color imgCardColor,
    required String img1Path,
    required String img2Path,
    required String img3Path,
    required Size size,
  }) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Column(
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: imgCardColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  img1Path,
                  scale: 7,
                ),
                size.width > 1269
                    ? Image.asset(
                        img2Path,
                        scale: 7,
                      )
                    : const SizedBox.shrink(),
                Image.asset(
                  img3Path,
                  scale: 7,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
