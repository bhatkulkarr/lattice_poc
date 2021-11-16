import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


const Color backgroundColor = Color(0xfff3f3f3);
const Color whiteColor = Colors.white;
const Color primaryColor = Color(0xff1C326B);
const Color greyColor = Color(0xff0e0e0e);


//--------STYLES=----------

TextStyle primaryTextStyle = GoogleFonts.roboto(fontSize:24,fontWeight: FontWeight.normal,color: primaryColor );
TextStyle btnTextStyle = GoogleFonts.roboto(fontSize:16,fontWeight: FontWeight.bold,color: whiteColor );
TextStyle btnTextGoogleStyle = GoogleFonts.roboto(fontSize:16,fontWeight: FontWeight.normal,color: Colors.black );


TextStyle genrateStyle(double fontSize,FontWeight fontWeight,Color fontColor){
  return GoogleFonts.roboto(fontSize: fontSize,fontWeight: fontWeight,color: fontColor);
}

