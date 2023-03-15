import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Helper{
  Helper._();

  static getTitleWidgetHeight(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.15.sw;
  }

  static EdgeInsets getPadding(){

    if(ScreenUtil().orientation == Orientation.portrait){

      return EdgeInsets.all(12.h);

    }else{
      
      return EdgeInsets.all(8.w);
    }
  }

  static EdgeInsets iconGetPadding(){

    if(ScreenUtil().orientation == Orientation.portrait){

      return EdgeInsets.all(8.h);

    }else{
      
      return EdgeInsets.all(8.w);
    }
  }


  static double calculaterPokeImageSize(){

    if(ScreenUtil().orientation == Orientation.portrait){

      return 0.2.sw;

    }else{
      
      return 0.2.sh;
    }
  }


    static final Map<String, Color> _typeColorMap = {
    'Grass': Colors.green,
    'Fire': Colors.redAccent,
    'Water': Colors.blue,
    'Electric': Colors.yellow,
    'Rock': Colors.grey,
    'Ground': Colors.brown,
    'Bug': Colors.lightGreenAccent.shade700,
    'Psychic': Colors.indigo,
    'Fighting': Colors.orange,
    'Ghost': Colors.deepPurple,
    'Normal': Color.fromARGB(66, 133, 223, 226),
    'Poison': Colors.deepPurpleAccent
  };

  static Color getColorFromType(String type) {
    if (_typeColorMap.containsKey(type)) {
      return _typeColorMap[type] ?? Colors.pink.shade300;
    } else {
      return Colors.pink.shade300;
    }
  }
}