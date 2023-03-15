import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/consts.dart';
import '../consts/helper.dart';

class AppTitle extends StatefulWidget {
   AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
 

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      
      height: Helper.getTitleWidgetHeight(),
      child: Stack( 
        children: [
          Padding(
            padding:  Helper.getPadding(),
            child: Align(alignment: Alignment.centerRight ,child:  Text(Sabitler.title,style:  Sabitler.textStyle(),)),
          ),
        //  Image(image: AssetImage(path))
           Image.asset('images/pokeball.jpg',width: ScreenUtil().orientation == Orientation.portrait 
           ? 0.2.sh
           : 0.2.sw
           ,height: 100.w,fit: BoxFit.fitWidth),
      ],),
    );
  }
}