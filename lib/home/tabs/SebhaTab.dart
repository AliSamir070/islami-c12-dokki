import 'package:flutter/material.dart';
import 'dart:math';
class SebhaTab extends StatefulWidget {
  static const String routeName = 'sebhatab';
  @override
  _SebhaTabState createState() => _SebhaTabState();
}
class _SebhaTabState extends State<SebhaTab> with SingleTickerProviderStateMixin {
  int counter = 0;
  int currentDoaaIndex = 0;
  double rotationAngle = 0;
  late AnimationController _controller;

  final List<String> doaas = ["سبحان الله", "الحمدلله", "الله اكبر"];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void incrementCounter() {
    setState(() {
      counter++;
      if (counter > 30) {
        counter = 1;
        currentDoaaIndex = (currentDoaaIndex +1) % doaas.length;
      }
      rotationAngle += pi / 4;
      _controller.forward(from: 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgApp.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 365,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    RotationTransition(
                      turns: AlwaysStoppedAnimation(rotationAngle / (2 * pi)),
                      child: Image.asset(
                        'assets/images/body of seb7a.png',
                        height: 300,
                        width: 300,
                      ),
                    ),
                    Positioned(
                      top: -4,
                       left: 130,
                       // Adjust as needed
                      child: Image.asset(
                        'assets/images/head of seb7a.png',
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'عدد التسبيحات',
                style: TextStyle(fontSize: 24, color: Color(0xff242424)),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xffB7935F).withOpacity(0.57),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '$counter',
                  style: const TextStyle(fontSize: 40, color: Color(0xff242424)),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: incrementCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffB7935F),
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                ),
                child: Text(
                  doaas[currentDoaaIndex],
                  style: const TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
