import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> tsabeh = ["سبحان الله", "الحمد لله", "الله اكبر"];
  int indexTsabeh = 0;
  int sbhanCounter = 0;
  double _turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(children: [
        Align(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/head_of_seb7a.png")),
        Container(
          margin: EdgeInsets.only(
            top: 75,
          ),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedRotation(
                  turns: _turns,
                  duration: Duration(milliseconds: 10),
                  child: Image.asset("assets/images/body_of_seb7a.png"))),
        ),
        Positioned(
          top: 150,
          left: 150,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              // Background color
              padding: EdgeInsets.all(15),
              // Equivalent to margin in Container
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0), // Rounded corners
              ),
            ),
            onPressed: () {
              setState(() {
                sbhanCounter = 0;
              });
            },
            child: Text(
              "اعاده\n التسبيح",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ]),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          "عدد التسبيحات",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          sbhanCounter.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            // Background color
            padding: EdgeInsets.all(15),
            // Equivalent to margin in Container
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Rounded corners
            ),
          ),
          onPressed: () {
            setState(() {
              sbhanCounter++;
              _turns += 0.25;
              if (sbhanCounter > 30 && indexTsabeh < 2) {
                indexTsabeh++;
                sbhanCounter = 0;
              } else if (sbhanCounter > 30 && indexTsabeh == 2) {
                indexTsabeh = 0;
              }
            });
          },
          child: Text(
            tsabeh[indexTsabeh],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      )
    ]);
  }
}
