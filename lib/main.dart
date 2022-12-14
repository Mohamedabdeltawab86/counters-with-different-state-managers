import 'package:counter_state_3/row.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تطبيق الأذكار',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        // color of the app bar text

        centerTitle: true,
        backgroundColor: Colors.amber[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
   
             
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: const Image(image: AssetImage("assets/images/takbeer.jpg"), fit: BoxFit.cover,)),

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
        tooltip: 'Increment',
        child: const Icon(Icons.refresh),
      ),
    );
  }

  void reset() {
    setState(() {
      _counter1 = 0;
      _counter2 = 0;
      _counter3 = 0;
      _counter4 = 0;
    });
  }
}
