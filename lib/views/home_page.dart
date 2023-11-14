import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/globals/text_style.dart';
import 'package:my_portfolio/views/about_me.dart';
import 'package:my_portfolio/views/footer_class.dart';
import 'package:my_portfolio/views/my_portfolio.dart';
import 'package:my_portfolio/views/my_services.dart';
import 'package:my_portfolio/widgets/profile_animation.dart';

import 'contact_us.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 90,
        titleSpacing: 100,
        elevation: 5,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Row(
            children: [
              const Text("Portfolio"),
              const Spacer(),
              InkWell(
                onTap: () {
                },
                hoverColor: AppColors.themeColor,
                child: Text(
                  "Home",
                  style: AppTextStyles.headerTextStyle(),
                ),
              ),
              const SizedBox(width: 30),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutMe()));
                },
                hoverColor: AppColors.themeColor,
                child: Text(
                  "About",
                  style: AppTextStyles.headerTextStyle(),
                ),
              ),
              const SizedBox(width: 30),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyServices()));
                },
                hoverColor: AppColors.themeColor,
                child: Text(
                  "Services",
                  style: AppTextStyles.headerTextStyle(),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyPortfolio()));
                },
                hoverColor: AppColors.themeColor,
                child: Text(
                  "Portfolio",
                  style: AppTextStyles.headerTextStyle(),
                ),
              ),
              const SizedBox(width: 30),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactUs()));
                },
                hoverColor: AppColors.themeColor,
                child: Text(
                  "Contact",
                  style: AppTextStyles.headerTextStyle(),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: size.height * 0.05,
          // left: size.width * 0.2,
          // right: size.width * 0.2
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 30, horizontal: size.width * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FadeInDown(
                        duration: const Duration(milliseconds: 1200),
                        child: Text(
                          "Hello, It's me.",
                          style: AppTextStyles.montserratStyle(
                              color: Colors.white),
                        ),
                      ),
                      Constants.sizedBox(height: 15.0),
                      FadeInRight(
                        duration: const Duration(milliseconds: 1400),
                        child: Text(
                          "YUNUS M",
                          style: AppTextStyles.headingStyles(),
                        ),
                      ),
                      Constants.sizedBox(height: 15),
                      FadeInLeft(
                        duration: const Duration(milliseconds: 1400),
                        child: Row(
                          children: [
                            Text(
                              "And i'm a  ",
                              style: AppTextStyles.montserratStyle(
                                  color: Colors.white),
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText("Flutter Developer",
                                    textStyle: AppTextStyles.montserratStyle(
                                        color: AppColors.themeColor)),
                                TyperAnimatedText("Freelancer",
                                    textStyle: AppTextStyles.montserratStyle(
                                        color: AppColors.themeColor)),
                                TyperAnimatedText("Traveller",
                                    textStyle: AppTextStyles.montserratStyle(
                                        color: AppColors.themeColor)),
                              ],
                              pause: const Duration(milliseconds: 1000),
                              displayFullTextOnTap: true,
                              stopPauseOnTap: true,
                            )
                          ],
                        ),
                      ),
                      Constants.sizedBox(height: 15),
                      FadeInDown(
                        duration: const Duration(milliseconds: 1600),
                        child: SizedBox(
                          width: size.width * 0.4,
                          child: Text(
                            'In publishing and graphic design, Lorem ipsum is a placeholder'
                            'text commonly used to demonstrate the visual form of a document'
                            'or a typeface without relying on meaningful content.',
                            style: AppTextStyles.normalStyle(),
                          ),
                        ),
                      ),
                      Constants.sizedBox(height: 22),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1600),
                        child: Row(
                          children: [
                            buildSocialButton(asset: AppAssets.facebook),
                            Constants.sizedBox(width: 12),
                            buildSocialButton(asset: AppAssets.linkedin),
                            Constants.sizedBox(width: 12),
                            buildSocialButton(asset: AppAssets.github),
                            Constants.sizedBox(width: 12),
                            buildSocialButton(asset: AppAssets.instagram),
                          ],
                        ),
                      ),
                      Constants.sizedBox(height: 22),
                      FadeInUp(
                          duration: const Duration(milliseconds: 1800),
                          child: AppButtons.buildMaterialButton(
                              onTap: () {}, buttonName: 'Download CV'))
                    ],
                  ),
                  const ProfileAnimation(),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const AboutMe(),
            const MyServices(),
            const SizedBox(height: 40),
            const MyPortfolio(),
            const ContactUs(),
            const FooterClass(),
          ],
        ),
      ),
    );
  }

  MaterialButton buildMaterialButton({
    required VoidCallback onTap,
  }) {
    return MaterialButton(
      onPressed: onTap,
      color: AppColors.themeColor,
      splashColor: AppColors.lawgreen,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
      hoverColor: AppColors.aqua,
      height: 46,
      elevation: 6,
      focusElevation: 12,
      child: Text(
        'Download CV',
        style: AppTextStyles.headerTextStyle(),
      ),
    );
  }

  Ink buildSocialButton({required String asset}) {
    return Ink(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 2.0),
            color: AppColors.bgColor,
            shape: BoxShape.circle),
        padding: const EdgeInsets.all(12),
        child: InkWell(
          splashColor: AppColors.lawgreen,
          hoverColor: AppColors.aqua,
          child: CircleAvatar(
            maxRadius: 18,
            backgroundColor: AppColors.bgColor,
            child: Image.asset(
              asset,
              height: 24,
              width: 20,
              color: AppColors.themeColor,
              fit: BoxFit.fill,
            ),
          ),
        ));
  }
}
