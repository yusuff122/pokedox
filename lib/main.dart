import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedox/pages/home_pages.dart';
import 'package:pokedox/services/pokedex_api.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
      designSize: const Size(412, 732),
      builder: (context, child) {
        return MaterialApp(
         debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(textTheme: GoogleFonts.latoTextTheme()),
        home:  HomePage(),
      );
      },
    );
  }
}
