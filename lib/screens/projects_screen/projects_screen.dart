import 'package:flutter/material.dart';
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

              // SHOEA
              size.width > 888
                  ? projectCard1Row(
                      label: 'Shoea',
                      description: ProjectsScreenConstants.shoeaDesc,
                      imgCardColor: AppConstants.shoeaCardColor,
                      img1Path: AppConstants.shoea1ImagePath,
                      img2Path: AppConstants.shoea2ImagePath,
                      img3Path: AppConstants.shoea3ImagePath,
                      size: size,
                    )
                  : projectCard1Column(
                      label: 'Shoea',
                      description: ProjectsScreenConstants.shoeaDesc,
                      imgCardColor: AppConstants.shoeaCardColor,
                      img1Path: AppConstants.shoea1ImagePath,
                      img2Path: AppConstants.shoea2ImagePath,
                      img3Path: AppConstants.shoea3ImagePath,
                      size: size,
                    ),

              // KT Royal
              size.width > 888
                  ? projectCard2Row(
                      label: 'KT Royal',
                      description: ProjectsScreenConstants.ktRoyalDesc,
                      imgCardColor: AppConstants.ktRoyalProjectCardColor,
                      img1Path: AppConstants.kt1ImgPath,
                      img2Path: AppConstants.kt3ImgPath,
                      img3Path: AppConstants.kt4ImgPath,
                      size: size,
                    )
                  : projectCard2Column(
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
                  ? projectCard1Row(
                      label: 'Habit Tracker',
                      description: ProjectsScreenConstants.habitTrackerDesc,
                      imgCardColor: AppConstants.habitTrackerCardColor,
                      img1Path: AppConstants.habitTracker1ImgPath,
                      img2Path: AppConstants.habitTracker2ImgPath,
                      img3Path: AppConstants.habitTracker3ImgPath,
                      size: size,
                    )
                  : projectCard1Column(
                      label: 'Habit Tracker',
                      description: ProjectsScreenConstants.habitTrackerDesc,
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
