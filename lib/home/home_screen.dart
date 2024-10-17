import 'package:flutter/material.dart';
import 'package:islamy_c12_dokki/home/tabs/AhadethTab.dart';
import 'package:islamy_c12_dokki/home/tabs/QuranTab.dart';
import 'package:islamy_c12_dokki/home/tabs/RadioTab.dart';
import 'package:islamy_c12_dokki/home/tabs/SebhaTab.dart';
import 'package:islamy_c12_dokki/home/tabs/SettingsTab.dart';

import '../style/AppStyle.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppStyle.isDark
                ?"assets/images/home_dark_background.png"
                :"assets/images/background.png"),
          fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_name),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
          currentIndex:selectedIndex ,
            onTap: (index){
              setState(() {
                selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/moshaf.png")),
                  label: AppLocalizations.of(context)!.quran
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: AppLocalizations.of(context)!.ahadeth
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: AppLocalizations.of(context)!.tasbeeh
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: AppLocalizations.of(context)!.radio
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: Icon(Icons.settings),
                  label: "Settings"
              ),
            ]
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
