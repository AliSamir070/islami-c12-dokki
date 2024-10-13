import 'package:flutter/material.dart';
import 'package:islamy_c12_dokki/ahadeth_details/ahadeth_details_screen.dart';
import 'package:islamy_c12_dokki/home/home_screen.dart';
import 'package:islamy_c12_dokki/quran_details/quran_details_screen.dart';
// untracked (Unversioned) - tracked file - ignored file
// commit
void main() {
  // new version
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        cardTheme: CardTheme(
          surfaceTintColor: Colors.white,
          color: Colors.white,
          elevation: 15,
          margin: EdgeInsets.all(20)
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black
          )
        ),
        scaffoldBackgroundColor: Colors.transparent,
        dividerColor:Color(0xffB7935F) ,
        dividerTheme: DividerThemeData(
          color: Color(0xffB7935F),
          thickness: 2
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xffB7935F),
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            color: Colors.black,
            size: 35
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 35
          )
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Color(0xffB7935F),
          secondary: Color(0xffB7935F).withOpacity(0.57),
          onPrimary: Colors.white,
          onSecondary: Colors.black
        ),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        QuranDetailsScreen.routeName:(_)=>QuranDetailsScreen(),
        AhadethDetails.routeName:(_)=>AhadethDetails()
      },
    );
  }
}
