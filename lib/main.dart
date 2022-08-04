import 'package:counter_state_3/azkar.dart';
import 'package:counter_state_3/azkar/tasbeeh.dart';
import 'package:counter_state_3/row.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'azkar/azkar_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ar', 'SA'),
      ],
      locale: const Locale('ar', 'SA'),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter1 = 0;
  int _counter2 = 0;
  int _counter3 = 0;
  int _counter4 = 0;
  List<String> images = [
    'assets/images/hamd.jpg',
    'assets/images/Muhammad.jpg',
    'assets/images/Subhan-Allah.jpg',
    'assets/images/takbeer.jpg'
  ];
  int imageIndex = 0;
  int azkarIndex = 0;



  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void _incrementCounter3() {
    setState(() {
      _counter3++;
    });
  }

  void _incrementCounter4() {
    setState(() {
      _counter4++;
    });
  }

  void changeImage() {
    setState(() {
      imageIndex = (imageIndex + 1) % images.length;
    });
  }

  void changeZekr() {
    setState(() {
      azkarIndex = (azkarIndex + 1) % azkar.length;
      if (kDebugMode) {
        print(azkarIndex);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تطبيق الأذكار',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.amber[300],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'الأذكار',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              decoration: BoxDecoration(
                color: Colors.amber[300],
              ),
            ),
            ListTile(
              title: Text('أذكار الصباح'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyZekr(
                      title: 'أذكار الصباح',
                      data: _counter1,
                      onPressed: _incrementCounter1,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('أذكار المساء'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                   builder: (context) => AllZekr(),
                    ),
                  
                );
              },
            ),
            ListTile(
              title: Text('الأذكار المطلقة'),
              //add a trailing icon to each ListTile
              trailing: Icon(Icons.arrow_forward),
              // add functionality to the trailing icon

              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Motlak(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
   
             
  
 SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Image(
                    image: AssetImage(images[imageIndex]),
                    fit: BoxFit.cover,
                  )),
            
            MyZekr(
              title: 'سبحان الله',
              onPressed: _incrementCounter1,
              // onPressed: _incrementCounter(1),
              data: _counter1,
              // image: 'assets/images/hamd.jpg',
            ),
            MyZekr(
              title: 'الحمد لله',
              onPressed: _incrementCounter2,
              data: _counter2,
            ),
            MyZekr(
              title: ' الله أكبر',
              onPressed: _incrementCounter3,
              data: _counter3,
            ),
            MyZekr(
              title: 'استغفر الله',
              onPressed: _incrementCounter4,
              data: _counter4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        // center poisitioned floating action button
        mini: true,
        onPressed: reset,
        tooltip: 'صفر العداد',

        hoverColor: const Color(0xFFAD43DD),
        child: const Icon(Icons.refresh),
      ),
    );
  }

  void reset() => setState(() {
        _counter1 = 0;
        _counter2 = 0;
        _counter3 = 0;
        _counter4 = 0;
      });
}
