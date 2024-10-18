import 'package:flutter/material.dart';
import 'package:islamy_c12_dokki/home/SelectedItem.dart';
import 'package:islamy_c12_dokki/home/UnselectedItem.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem("English"),
          SizedBox(height: 20,),
          UnSelectedItem("العربية")
        ],
      ),
    );
  }
}
