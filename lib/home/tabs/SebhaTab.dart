import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  SebhaTabState createState() => SebhaTabState();
}

class SebhaTabState extends State<SebhaTab> {
  int count = 0;
  int currentZekrIndex = 0;
  final List<String> Azkar = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
    "لا إله إلا الله"
  ];

  void _incrementCount() {
    setState(() {
      count++;
      if (count >= 30) {
        count = 0;
        currentZekrIndex = (currentZekrIndex + 1) % Azkar.length;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 50),
        Center(
          child: GestureDetector(
            onTap: _incrementCount,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  "assets/images/body of seb7a.png",
                ),
                Positioned(
                  top: -10,
                  child: Image.asset(
                    "assets/images/head of seb7a.png",
                  ), //
                ),
              ],
            ),
          ),
        ),
        Text(
          "عدد التسبيحات",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 30),
        Stack(
          children: [
            Container(
              width: 69,
              height: 81,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  "$count",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: 137,
          height: 51,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Center(
              child: Text(
            Azkar[currentZekrIndex],
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
          )),
        )
      ],
    );
  }
}
