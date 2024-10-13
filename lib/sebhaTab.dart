import 'package:flutter/material.dart';


class Sebhatab extends StatefulWidget {

  @override
  State<Sebhatab> createState() => _SebhatabState();
}
class _SebhatabState extends State<Sebhatab>
    with SingleTickerProviderStateMixin {
  late int counter = 0;
  late int index= 0;
  double turns =0.0;

  List<String>Athkar=[
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',
  ];

  void _incrementCounter() {
    setState(() {
      if(index==2 && counter==33){
        index=index-2;
        counter=counter-32;
      }
      else if(counter==33){
        index=index+1;
        counter=counter-32;
      }
      else{
        counter++;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
              children: [
                Container(
                    alignment: Alignment.center,
                    child: Image.asset('assets/image/headofseb7a.png')),
                Container(
                  margin: const EdgeInsets.only(top: 35),
                  alignment: Alignment.center,
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      _incrementCounter();
                      setState(()=> turns+= 1/33
                      );
                    },
                    child: AnimatedRotation(
                      turns: turns,
                      duration: const Duration(seconds: 1),
                      child: Image.asset(
                        'assets/image/bodyofseb7a.png',
                      ),
                    ),
                  ),
                ),
              ]
          ),
          const Text('عدد التسبيحات', style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,),),
          Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Theme
                  .of(context)
                  .colorScheme
                  .secondary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Text('$counter', style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme
                  .of(context)
                  .colorScheme
                  .primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
                margin: const EdgeInsets.all(10),
                child: Text(Athkar[index], style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),)),
          ),
        ],
      ),
    );
  }
}