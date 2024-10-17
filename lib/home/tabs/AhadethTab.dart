import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islamy_c12_dokki/ahadeth_details/ahadeth_details_screen.dart';
import 'package:islamy_c12_dokki/home/Hadeth.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AhadethTab extends StatefulWidget {

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadFile();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.asset("assets/images/hadith_header.png")),
        Divider(),
        Text(AppLocalizations.of(context)!.ahadeth,style:Theme.of(context).textTheme.titleMedium,),
        Divider(),
        Expanded(
          flex: 2,
          child: ListView.separated( // dummy data
              itemBuilder: (context, index) => InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(AhadethDetails.routeName,arguments: ahadethList[index]);
                },
                child: Text(ahadethList[index].title,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(height: 10,),
              itemCount: ahadethList.length),
        )

      ],
    );
  }

  List<Hadeth> ahadethList = [];

  loadFile()async{
    String fileContent = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadeth = fileContent.split("#");
    for(int i=0;i<ahadeth.length;i++){
      List<String>hadethLines = ahadeth[i].trim().split("\n");
      String hadethTitle = hadethLines[0];
      hadethLines.removeAt(0);
      String hadethContent =  hadethLines.join(" ");
      ahadethList.add(Hadeth(hadethTitle, hadethContent));
    }
    print(ahadethList.length);
    setState(() {

    });
  }
}
