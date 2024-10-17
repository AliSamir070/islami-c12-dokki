import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_c12_dokki/quran_details/QuranChapter.dart';

import '../style/AppStyle.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routeName = "qurandetails";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context){
    QuranArgs args = ModalRoute.of(context)?.settings.arguments as QuranArgs;
    if(suraLines.isEmpty){
      loadFile(args.index);
    }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppStyle.isDark
                    ?"assets/images/home_dark_background.png"
                    :"assets/images/background.png"),
                fit: BoxFit.fill
            )
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.name),
          ),
          body: Card(
            child: suraLines.isEmpty
                ?Center(child: CircularProgressIndicator(),)
                :ListView.separated(
                itemBuilder: (context, index) => QuranChapter(
                    index: index,
                    chapter: suraLines[index]),
                separatorBuilder: (context, index) => Divider(),
                itemCount: suraLines.length),
          ),
        ));
  }

  int add(int n1 , int n2){
    return n1+n2;
  }

  List<String> suraLines = [];

  loadFile(int index)async{
    String fileContent = await rootBundle.loadString("assets/files/${index+1}.txt");
    suraLines =  fileContent.split("\n");
    setState(() {

    });
    print(suraLines);
    //rebuild
  }
}

class QuranArgs{
  String name;
  int index;
  QuranArgs(this.name,this.index);
}
