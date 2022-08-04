import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Motlak extends StatelessWidget {
  const Motlak({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const AzkarMotalka(),
    );
  }
}

class AzkarMotalka extends StatefulWidget {
  const AzkarMotalka({super.key});

  @override
  State<AzkarMotalka> createState() => _AzkarMotalkaState();
}

class _AzkarMotalkaState extends State<AzkarMotalka> {
  // Map<String, dynamic> map = Map();
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
    print(_items[0]);
  }

  @override
  Widget build(BuildContext context) {
    print('_items: $_items');
    return Scaffold(
      appBar: AppBar(
        title: Text('الأذكار المطلقة'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Load Data'),
              onPressed: readJson,
            ),

            // Display the data loaded from sample.json
            _items.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 3,
                          color: Colors.grey[200],
                          margin: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Text(_items[index]["category"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal'),
                                textAlign: TextAlign.center),
                            title: Text(
                              _items[index]["zekr"],
                              style: const TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              _items[index]["description"],
                              style: const TextStyle(fontFamily: 'Tajawal'),
                              textAlign: TextAlign.center,
                            ),
                            trailing: Text(_items[index]["count"]),
                          ),
                        );
                      },
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
