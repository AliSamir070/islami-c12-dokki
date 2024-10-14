import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> zekr= ["سبحان الله","الحمد لله","لا اله الا الله","الله اكبر"];
  int index =0;
  int counter =0;
  double angel =0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  bottom:-0.1*width,
                  right: 0.12*width,
                  child: Transform.rotate(
                      angle:angel,
                      child: Image.asset("assets/images/seb7abody.png")),
                ),
                Positioned(
                    left:0.46*width,
                    top:0.1*width,
                    child: Image.asset("assets/images/seb7ahead.png")),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Text(
                  "عدد التسبيحات",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  width: 69,
                  height: 81,
                  child: Text(
                    "$counter",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    onBtnClick();
                  });
                }, child: Text(
                  zekr[index],
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                  ),
                ),style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
  void onBtnClick(){
    if (counter!=30){
      counter++;
    }else{
      counter=0;
      index++;
      if(index==4){
        index=0;
      }
    }
    angel+=30;
  }
}
