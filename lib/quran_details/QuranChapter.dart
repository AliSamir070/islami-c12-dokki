import 'package:flutter/material.dart';

class QuranChapter extends StatelessWidget {
  String chapter;
  int index;
  QuranChapter({required this.index , required this.chapter});
  @override
  Widget build(BuildContext context) {
    return Text("$chapter (${index+1})",
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.displayMedium,);
  }
}
