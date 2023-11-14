import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/globals/app_colors.dart';

import '../globals/constants.dart';
import '../globals/text_style.dart';

class MyServices extends StatefulWidget {
  const MyServices({super.key});

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isApp = false, isWeb = false, isData = false;
  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
      child: Column(
        children: [
          FadeInDown(
              duration: const Duration(milliseconds: 1400),
              child: RichText(
                text: TextSpan(
                    text: "My",
                    style: AppTextStyles.headingStyles(fontsize: 30),
                    children: [
                      TextSpan(
                          text: "Services",
                          style: AppTextStyles.headingStyles(
                            fontsize: 30,
                            color: AppColors.robinEdgeBlue,
                          ))
                    ]),
              )),
          Constants.sizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isApp = value;
                  });
                },
                child: buildAnimatedContainer(
                    title: 'App Development',
                    assets: AppAssets.code,
                    hover: isApp),
              ),
              Constants.sizedBox(width: 10),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isWeb = value;
                  });
                },
                child: buildAnimatedContainer(
                    title: 'Web development',
                    assets: AppAssets.code,
                    hover: isWeb),
              ),
              Constants.sizedBox(width: 10),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isData = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Data Analyst',
                  assets: AppAssets.ana,
                  hover: isData,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String assets,
    required bool hover,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: hover ? 400 : 390,
      height: hover ? 440 : 430,
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
      decoration: BoxDecoration(
          color: AppColors.bgColor2,
          borderRadius: BorderRadius.circular(30),
          border:
              hover ? Border.all(color: AppColors.themeColor, width: 3) : null,
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 4.5,
              spreadRadius: 4.0,
              offset: Offset(3.0, 4.5),
            )
          ]),
      child: Column(
        children: [
          Image.asset(
            assets, height: 50, width: 50,
            //color: AppColors.themeColor,
          ),
          Constants.sizedBox(height: 20),
          Text(
            title,
            style: AppTextStyles.montserratStyle(color: Colors.white,),
          ),
          Constants.sizedBox(height: 30),
          Text(
            'In terms of professional skills, you have expertise in Manual Testing, '
            'with a strong understanding of SDLC concepts, Smoke Testing, FT, IT, '
            'System Testing, white-box Testing, Performance Testing, Adhoc Testing, '
            'Compatibility Testing, Exploratory Testing, Globalization Testing, and writing Test ',
            style: AppTextStyles.normalStyle(),
            textAlign: TextAlign.center,
          ),
          Constants.sizedBox(height: 30),
          AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {}),
        ],
      ),
    );
  }
}
