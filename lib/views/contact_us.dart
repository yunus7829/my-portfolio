import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/globals/app_colors.dart';

import '../globals/constants.dart';
import '../globals/text_style.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding:
          EdgeInsets.symmetric(vertical: 30, horizontal: size.height * 0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FadeInDown(
              duration: const Duration(milliseconds: 1400),
              child: RichText(
                text: TextSpan(
                    text: "Contact",
                    style: AppTextStyles.headingStyles(fontsize: 30),
                    children: [
                      TextSpan(
                          text: "Me!",
                          style: AppTextStyles.headingStyles(
                            fontsize: 30,
                            color: AppColors.robinEdgeBlue,
                          ))
                    ]),
              )),
          Constants.sizedBox(height: 40),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 8,
                      color: Colors.transparent,
                      child: TextField(
                        cursorColor: AppColors.white,
                        style: AppTextStyles.normalStyle(),
                        decoration: buildInputDecoration(hintText: "Full Name"),
                      ),
                    ),
                  ),
                  Constants.sizedBox(width: 10),
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 8,
                      color: Colors.transparent,
                      child: TextField(
                        cursorColor: AppColors.white,
                        style: AppTextStyles.normalStyle(),
                        decoration:
                            buildInputDecoration(hintText: "Email Address"),
                      ),
                    ),
                  ),
                ],
              ),
              Constants.sizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 8,
                      color: Colors.transparent,
                      child: TextField(
                        cursorColor: AppColors.white,
                        style: AppTextStyles.normalStyle(),
                        decoration:
                            buildInputDecoration(hintText: "Mobile Number"),
                      ),
                    ),
                  ),
                  Constants.sizedBox(width: 10),
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 8,
                      color: Colors.transparent,
                      child: TextField(
                        cursorColor: AppColors.white,
                        style: AppTextStyles.normalStyle(),
                        decoration:
                            buildInputDecoration(hintText: "Email Subject"),
                      ),
                    ),
                  ),
                ],
              ),
              Constants.sizedBox(height: 20),
              Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 8,
                color: Colors.transparent,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  maxLines: 15,
                  decoration: buildInputDecoration(hintText: "Your Message"),
                ),
              ),
              Constants.sizedBox(height: 20),
              AppButtons.buildMaterialButton(
                  buttonName: 'Send Message', onTap: () {})
            ],
          )
        ],
      ),
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppTextStyles.comfortaastyle(),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
      filled: true,
      fillColor: AppColors.bgColor2,
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    );
  }
}
