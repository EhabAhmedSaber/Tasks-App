import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks/constents/constents.dart';
import 'package:tasks/screens/home_page.dart';

class NewGoal extends StatefulWidget {
  const NewGoal({Key? key}) : super(key: key);

  @override
  State<NewGoal> createState() => _NewGoalState();
}

class _NewGoalState extends State<NewGoal> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: KSecondaryColor,
        title: Text('إضافة هدف فردي جديد', style: TextStyle(color: KTextLightColor, fontWeight: FontWeight.w700),),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(KDefaultPadding),
          child: Column(
           children: [
             TextFormField(
               decoration: InputDecoration(
                 labelText: 'اسم الهدف',
                 icon: Icon(Icons.title, color: KPrimaryColor),
               ),
               cursorColor: KPrimaryColor,
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: MaterialButton(
                   onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(),));
                   },
                 child: Text('إضافة الهدف', style: TextStyle(color: KBackgroundColor),),
                 color: KPrimaryColor,
                 shape: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(30)
                 ),

               ),
             ),
           ],
          ),
        ),
      ),
    );
  }
}
