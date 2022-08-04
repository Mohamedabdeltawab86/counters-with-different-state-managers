import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './azkar_list.dart';


class AzkarCategory extends StatefulWidget {
  const AzkarCategory({super.key});

  @override
  State<AzkarCategory> createState() => _AzkarCategoryState();
}


class _AzkarCategoryState extends State<AzkarCategory> {
  List<dynamic> _items = [];

    Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/JsonConfig/azkar.json');
    final Map<String, dynamic> map = await json.decode(response);
    setState(() {
      _items = map['items'];
    });
    // print(_items[0]);
  }

    @override
  void initState() {
    readJson();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الأذكار الخاصة بـ'),
      ),
      body: Container(), // TODO add list of azkar for each category
    );
  }
}
