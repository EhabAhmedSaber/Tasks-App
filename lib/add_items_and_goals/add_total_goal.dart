import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks/screens/home_page.dart';

import '../constents/constents.dart';

class NewTotalGoal extends StatefulWidget {
  const NewTotalGoal({Key? key}) : super(key: key);

  @override
  State<NewTotalGoal> createState() => _NewTotalGoalState();
}

class _NewTotalGoalState extends State<NewTotalGoal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KSecondaryColor,
        title: Text('إضافة هدف مجمع جديد', style: TextStyle(color: KTextLightColor, fontWeight: FontWeight.w700),),
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
                    Navigator.push(context, MaterialPageRoute(builder:(context) => MyHomePage(),));
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
