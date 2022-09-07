import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tasks/add_items_and_goals/add_total_goal.dart';
import 'package:tasks/screens/fixed_goals.dart';
import 'package:tasks/add_items_and_goals/new_goal.dart';
import 'package:tasks/screens/search_screen.dart';

import 'archive_screen.dart';
import '../add_items_and_goals/elements.dart';
import '../constents/constents.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Items> items = [
    Items(itemText: "العنصر الأول", itemValue: true, isExpanded: false),
    Items(itemText: "العنصر الثاني", itemValue: false, isExpanded: false),
    Items(itemText: "العنصر الثالث", itemValue: false, isExpanded: false),
    Items(itemText: "العنصر الرابع", itemValue: true, isExpanded: false),
  ];
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage(
              'images/kids.jpg',
            ) ,
            fit: BoxFit.fitHeight,
            filterQuality: FilterQuality.high
          )
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.settings)),
                      ),
                      const Expanded(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/image.jpg'),
                          radius: KDefaultPadding * 1.5,
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen(),));
                            }, icon: const Icon(Icons.search)),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: const [
                    Center(
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: CircularProgressIndicator(
                          value: 0.4,
                          backgroundColor: Colors.grey,
                          strokeWidth: 8,
                          color: KPrimaryColor,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 50,
                        ),
                        child: Text(
                          '40%',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 50,
                    top: 30
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: KTextLightColor,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            backgroundColor:Colors.white,
                            radius:KDefaultPadding*1.5,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  FixedGoals(),));
                              },
                              icon: const Icon(
                                Icons.task,
                                color: KTextLightColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            backgroundColor:Colors.white,
                            radius: KDefaultPadding * 1.5,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  ArchivePage(),));
                              },
                              icon: const Icon(
                                Icons.archive,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    item(),
                    item(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                  'إضافة عنصر'
              ),
              actions: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: MaterialButton(child: Text('فردي'), onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => NewGoal(),));
                        },
                          color: KPrimaryColor,
                          padding: EdgeInsets.all(10),
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),

                        ),
                      ),
                    ),

                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: MaterialButton(
                        child: Text('مجمع'), onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NewTotalGoal(),));
                      },
                        color: KPrimaryColor,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                      ),
                    ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor:KPrimaryColor,
      ),
    );
  }

  Widget item() => SingleChildScrollView(
    child: Column(
      children: [
        ClipOval(
          child: MaterialButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  ElementsPage(),));
            },
            child: const CircleAvatar(
              radius: KDefaultPadding * 2,
              backgroundImage: AssetImage(
                'images/golden.jpg',
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
                  'الهدف الأول',
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
            Container(
              width: 120,
              height: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
              ),
              child: LinearPercentIndicator(
                width: 120,
                lineHeight: 15,
                percent: 0.5,
                center: const Text(
                  '10/20',
                ),
                backgroundColor: Colors.grey,
                progressColor: KPrimaryColor,
              ),
            ),
          ],
        )
      ],
    ),
  );
}

class Items {
  String? itemText;
  bool? itemValue;
  bool isExpanded;

  Items({this.itemText, this.itemValue, required this.isExpanded});
}