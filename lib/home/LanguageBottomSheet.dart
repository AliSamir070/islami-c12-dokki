import 'package:flutter/material.dart';
import 'package:islamy_c12_dokki/home/SelectedItem.dart';
import 'package:islamy_c12_dokki/home/UnselectedItem.dart';
import 'package:islamy_c12_dokki/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(
              settingsProvider.language == "ar" ? 'العريبة' : 'English'),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              settingsProvider.changeLanguage();
            },
            child: UnSelectedItem(
                settingsProvider.language == "ar" ? 'English' : 'العريبة'),
          )
        ],
      ),
    );
  }
}
