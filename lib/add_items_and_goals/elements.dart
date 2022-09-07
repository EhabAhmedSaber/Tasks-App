import 'package:flutter/material.dart';
import 'package:tasks/add_items_and_goals/add_single_items.dart';
import 'package:tasks/constents/constents.dart';

import '../constents/constents_goal.dart';


class ElementsPage extends StatelessWidget {
  const ElementsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('العناصر', style: TextStyle(color: KPrimaryColor),),
        backgroundColor: KSecondaryColor,
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(12),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return AppConstants.defaultMissionItem(inArchive: true);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16,
          );
        },
        itemCount: 10,
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => NewItem(),));
          },
          child: Icon(Icons.add,color: KTextLightColor,),
          backgroundColor: KSecondaryColor,
        )
    );
  }
}
