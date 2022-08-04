import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'azkar_category.dart';

class AllZekr extends StatefulWidget {
  const AllZekr({super.key});

  @override
  State<AllZekr> createState() => _AllZekrState();
}

class _AllZekrState extends State<AllZekr> {

    List<dynamic> _items = [];
  int index = 0;

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/JsonConfig/azkar.json');
    final Map<String, dynamic> map = await json.decode(response);
    setState(() {
      _items = map['items'];
    });
    // print(_items[0]);
  }
  // initialize the state of the app
  @override
  void initState() {
    readJson();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {

    final List uniqueItems = _items.map((dynamic item) => item['category']).toSet().toList();

    return Scaffold(
      body: ListView.builder(
        itemCount: uniqueItems.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text(uniqueItems[index]),
            
          
          ),
        ),
      ),
    );
  }
}
