import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_c12_dokki/home/Hadeth.dart';
import 'package:islamy_c12_dokki/provider/settings_provider.dart';
import 'package:provider/provider.dart';

import '../style/AppStyle.dart';

class AhadethDetails extends StatelessWidget {
  static const String routeName = "ahadethdetails";
  const AhadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(settingsProvider.themeMode == ThemeMode.light
                  ? "assets/images/background.png"
                  : 'assets/images/home_dark_background.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Column(
            children: [
              Expanded(
                child: Card(
                  child: SingleChildScrollView(
                      child: Text(
                    args.content,
                    style: Theme.of(context).textTheme.displayMedium,
                  )),
                ),
              ),
            ],
          ),
        ));
  }
}
