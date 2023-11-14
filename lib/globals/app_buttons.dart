import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/text_style.dart';
import 'app_colors.dart';

class AppButtons{
  static MaterialButton buildMaterialButton({required String buttonName,
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
        buttonName,
        style: AppTextStyles.headerTextStyle(),
      ),
    );
  }
}