
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/globals/app_colors.dart';

class AppTextStyles{
  static TextStyle headerTextStyle(){
    return GoogleFonts.signikaNegative(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }
  static TextStyle montserratStyle({required Color color,double fontsize=24}){
    return GoogleFonts.montserrat(
      fontSize: fontsize,
  fontWeight: FontWeight.bold,
  color: color,
      );
}
static TextStyle headingStyles({double fontsize =36,Color color=Colors.white}){
    return GoogleFonts.rubikMoonrocks(
      fontSize: fontsize,
      fontWeight:FontWeight.bold ,
      color:color,
      letterSpacing: 2
    );
}

static TextStyle normalStyle({Color color =Colors.white}){
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 17,
      color: color,
      letterSpacing: 1.5,

    );
}
  static TextStyle comfortaastyle(){
    return GoogleFonts.comfortaa(
        fontWeight: FontWeight.w800,
        fontSize: 18,
        color: Colors.grey,

    );
  }

}