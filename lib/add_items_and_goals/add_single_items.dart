import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks/constents/constents.dart';
import 'package:tasks/add_items_and_goals/elements.dart';

class NewItem extends StatefulWidget {
  const NewItem({Key? key}) : super(key: key);

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KSecondaryColor,
        title: Text('إضافة عنصر جديد', style: TextStyle(color: KTextLightColor, fontWeight: FontWeight.w700),),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(KDefaultPadding),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'اسم العنصر',
                  icon: Icon(Icons.title, color: KPrimaryColor),
                ),
                cursorColor: KPrimaryColor,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => ElementsPage(),));
                  },
                  child: Text('إضافة العنصر', style: TextStyle(color: KBackgroundColor),),
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

