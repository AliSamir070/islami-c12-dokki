import 'package:flutter/material.dart';

class SelectedItem extends StatelessWidget {
  String selected;
  SelectedItem(this.selected);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(selected,style: Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontWeight: FontWeight.bold
        ),),
        Icon(
          Icons.check,
          size: 30,
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ],
    );
  }
}
