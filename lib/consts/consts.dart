import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sabitler{
   Sabitler._(); //kimse nesne üretemez / kurucu method gizli yapıldı

   static const String title = 'Pokedex';
    
  static TextStyle textStyle(){
    
    return  TextStyle(
      color: Colors.white70,
      fontWeight: FontWeight.bold,
      fontSize: _calculatorFontSize(40)
    );
   } 


  static TextStyle pokemonTextStyle(){
    
    return const TextStyle(
      color: Colors.white70,
      fontWeight: FontWeight.bold,
      fontSize: 18
    );
   } 


  static TextStyle typeTextStyle(){
    
    return const TextStyle(
      color: Colors.white70,
      fontWeight: FontWeight.bold,
      fontSize: 23
    );
  } 


  static _calculatorFontSize(int size){

    if(ScreenUtil().orientation == Orientation.portrait){
       
      return size.sp;

    }else{
     
      return (size-10).sp;
    }

  }

  static getPokeInfoStyle(){
    return TextStyle(
      fontSize:  _calculatorFontSize(16), color: Colors.black
    );
  }

   static getPokeInfoLabelStyle(){
    return TextStyle(
      fontSize:  _calculatorFontSize(20), color: Colors.black, fontWeight: FontWeight.bold
    );
  }
}