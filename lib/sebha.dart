import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double counter = 0;
  int index = 0;
  List<String> tasbeh = [
    'سبحان الله',
    "الحمد الله",
    "الله اكبر",
    "استغفر الله"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/images/head_sebha_logo.png',
            fit: BoxFit.contain,
          ),
          GestureDetector(
            child: Transform.rotate(
              angle: counter,
              child: Image.asset(
                'assets/images/body_sebha_logo.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            onTap: () {
              Tasbeh();
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(
              "عدد التسبيحات",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 20, bottom: 15),
            child: Text(
              '${counter.toInt()}',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            margin: const EdgeInsets.all(15),
            child: Text(
              tasbeh[index],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(30)),
          )
        ],
      ),
    );
  }

  void Tasbeh() {
    setState(() {
      counter++;
      if (counter == 33) {
        index++;
        counter = 0;
        if (index == tasbeh.length) {
          index = 0;
        }
      }
    });
  }
}
