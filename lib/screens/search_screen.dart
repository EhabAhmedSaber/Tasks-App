import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constents/constents.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search,color: KPrimaryColor,),
               labelText: 'بحث',
               labelStyle: TextStyle(
                 fontWeight: FontWeight.w100
               ),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(15)
               ),
            ),
            cursorColor: KPrimaryColor,
          ),
        ),
      ),
    );
  }
}
