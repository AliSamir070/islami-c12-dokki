import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int number = 0 ;
  int index = 0 ;
  List<String> tsbeeh= ['سبحان الله','الحمد لله','لا اله الا الله','الله اكبر'];
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const SizedBox(height: 10,),
            Row(
              children: [
                const SizedBox(width: 60,),
                Image.asset('assets/images/head_sebha_logo.png'),
              ],
            ),
            GestureDetector(
              onTap: ()
              {
                number++;
                setState(() {
                  if(number==30)
                  {
                    number=0;
                    index++;
                    if(index==4)
                    {
                      index=0;
                    }
                  }
                });
              },
              child: Image.asset(
                'assets/images/body_sebha_logo.png',


              ),
            ),
            const SizedBox(height: 40,),
            const Text(
              'عدد التسبيحات',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                '$number',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Theme.of(context).colorScheme.primary
              ),
              child: Text('${tsbeeh[index]}',style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),),
            ),
          ],
        ),
      ],
    );
  }
}
