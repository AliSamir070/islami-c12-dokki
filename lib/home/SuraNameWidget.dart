import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamy_c12_dokki/quran_details/quran_details_screen.dart';

class SuraNameWidget extends StatelessWidget {
  final String suraName;
  final int suraNumber;
  final int index;
  const SuraNameWidget({super.key,required this.suraName , required this.suraNumber,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, QuranDetailsScreen.routeName,arguments: QuranArgs(
            suraName, index
        ));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(suraName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,),
          ),
          Container(
            height: 40,
            width: 2,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimaryContainer
            ),
          ),
          Expanded(
            child: Text(suraNumber.toString(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall),
          ),
        ],
      ),
    );
  }
}
