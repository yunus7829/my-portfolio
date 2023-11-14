import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_colors.dart';

import '../globals/app_buttons.dart';
import '../globals/constants.dart';
import '../globals/text_style.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      height: size.height,
      color: AppColors.bgColor2,
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInRight(
            duration: const Duration(milliseconds: 1200),
            child: Image.asset(AppAssets.profile1,
              height: 450,
              width: 400,
            ),
          ),
          Constants.sizedBox(width: 25),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInRight(
                    duration: const Duration(milliseconds: 1400),
                    child: RichText(
                      text: TextSpan(
                          text: "About",
                          style: AppTextStyles.headingStyles(fontsize: 30),
                          children: [
                            TextSpan(
                                text: "Me",
                                style: AppTextStyles.headingStyles(
                                  fontsize: 30, color: AppColors.robinEdgeBlue,
                                )
                            )
                          ]
                      ),
                    )
                ),
                Constants.sizedBox(height: 6),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1400),
                  child: Text(
                    'Flutter Developer!',
                    style: AppTextStyles.montserratStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 8),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1600),
                  child: Text(
                          'In terms of professional skills, you have expertise in Manual Testing, '
                          'with a strong understanding of SDLC concepts, Smoke Testing, FT, IT, '
                          'System Testing, white-box Testing, Performance Testing, Adhoc Testing, '
                          'Compatibility Testing, Exploratory Testing, Globalization Testing, and writing Test '
                          'cases and Test scenarios. You are also well-versed in Agile Methodology, '
                          'including Scrum Methodology, Sprint Planning, Scrum meetings, Sprint Retrospective '
                          'meetings, Product backlog meetings, and Bug triage meetings.Furthermore, you '
                          'possess knowledge and proficiency in Core Java, covering OOPS concepts like '
                          'Inheritance and Polymorphism, Method overloading and Method overriding, '
                          'Abstraction andEncapsulation, Constructors, Upcasting, and Down casting.'
                          'Additionally, you have SQL skills with experience in writing queries in Oracle 11g'
                          'databases.',
                    style: AppTextStyles.normalStyle(),
                  ),
                ),
                const SizedBox(height: 8),
                FadeInUp(
                    duration: const Duration(milliseconds: 1800),
                    child: AppButtons.buildMaterialButton(
                        onTap: () {}, buttonName: 'Read More'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
