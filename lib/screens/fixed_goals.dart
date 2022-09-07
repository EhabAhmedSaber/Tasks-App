import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constents/constents.dart';

class FixedGoals extends StatefulWidget {
  const FixedGoals({Key? key}) : super(key: key);

  @override
  State<FixedGoals> createState() => _FixedGoalsState();
}

class _FixedGoalsState extends State<FixedGoals> {
  List<Items> items = [
    Items(itemText: "الفجر", itemValue: true, isExpanded: false),
    Items(itemText: "الظهر", itemValue: false, isExpanded: false),
    Items(itemText: "العصر", itemValue: false, isExpanded: false),
    Items(itemText: "المغرب", itemValue: true, isExpanded: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الأهداف الثابتة', style: TextStyle(color: KPrimaryColor),),
        backgroundColor: KSecondaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  ClipOval(
                    child: MaterialButton(
                      onPressed: () {},
                      child: const CircleAvatar(
                        radius: KDefaultPadding * 2,
                        backgroundImage: AssetImage(
                          'images/moscue.jpg',
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 180,
                        child: ExpansionTile(
                          title: const Text(
                            'الصلاة',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: KPrimaryColor),
                            textAlign: TextAlign.center,
                          ),
                          children: items.map((item) {
                            return CheckboxListTile(
                              activeColor:KPrimaryColor,
                              value: item.itemValue,
                              onChanged: (value) {},
                              title: Text(item.itemText.toString()),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  ClipOval(
                    child: MaterialButton(
                      onPressed: () {},
                      child: const CircleAvatar(
                        radius: KDefaultPadding * 2,
                        backgroundImage: AssetImage(
                          'images/moscue.jpg',
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 180,
                        child: ExpansionTile(
                          title: const Text(
                            'الصلاة',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: KPrimaryColor),
                            textAlign: TextAlign.center,
                          ),
                          children: items.map((item) {
                            return CheckboxListTile(
                              activeColor:KPrimaryColor,
                              value: item.itemValue,
                              onChanged: (value) {},
                              title: Text(item.itemText.toString()),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Items {
  String? itemText;
  bool? itemValue;
  bool isExpanded;

  Items({this.itemText, this.itemValue, required this.isExpanded});
}