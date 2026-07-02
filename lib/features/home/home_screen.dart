import 'package:appointment_app/core/assets_manager.dart';
import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:appointment_app/features/home/widgets/card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List doctorSpeciality = [
      {"speciality": "General", "image": AssetsManager.general},
      {"speciality": "Neurologic", "image": AssetsManager.neurologic},
      {"speciality": "Pediatric", "image": AssetsManager.pediatric},
      {"speciality": "Radiology", "image": AssetsManager.radiology},
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi noura !", style: AppStyles.titles(context)),
                          Text("How Are you Today?"),
                        ],
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: AppColors.borderField,
                          borderRadius: BorderRadius.circular(48),
                        ),
                        child: Icon(
                          Icons.notifications_none_outlined,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  CardWidget(),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Doctor Speciality",
                            style: AppStyles.titles(context),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "See All",
                              style: AppStyles.textButton(context),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          4,
                          (index) => Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 56,
                                  height: 56,
                                  decoration: BoxDecoration(
                                    color: AppColors.borderField,
                                    borderRadius: BorderRadius.circular(48),
                                  ),
                                  child: Image.asset(
                                    doctorSpeciality[index]["image"],

                                    scale: 8,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(doctorSpeciality[index]["speciality"]),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recommendation Doctor",
                        style: AppStyles.titles(context),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See All",
                          style: AppStyles.textButton(context),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Image.asset("assets/images/test.png"),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr.Randy Wigham",
                            style: AppStyles.titles(context),
                          ),
                          Text(
                            "General | RSUD Gatot Subroto",
                            style: AppStyles.authentificationdescription(
                              context,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star_rounded, color: Colors.amber),
                              Text(
                                "4.8 (4,279 reviwes)",
                                style: AppStyles.onBoardingdesc(context),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
