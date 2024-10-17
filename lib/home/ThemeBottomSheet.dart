import 'package:flutter/material.dart';

import 'SelectedItem.dart';
import 'UnselectedItem.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem("Dark"),
          SizedBox(height: 20,),
          UnSelectedItem("Light")
        ],
      ),
    );
  }
}
