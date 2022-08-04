import 'package:counter_state_3/row.dart';
import 'package:flutter/material.dart';


List<String> azkar = [
  'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ',
  'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ',
  'لا إِلَهَ إِلاَّ اللَّهُ وَحْدَهُ لاَ شَرِيكَ لَهُ لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَىْءٍ قَدِيرٌ ',
  'اللَّهُ أَكْبَرُ ',
  'أَسْتَغْفِرُ اللَّهَ',
  ' سُبْحَانَ اللَّهِ',
  'الْحَمْدُ لِلَّهِ '
];

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
    void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return 
    SingleChildScrollView(
              child: ListView.builder(
                itemBuilder: (context, index) => MyZekr(
                  title: azkar[index], 
                  onPressed: () => _incrementCounter(),
                  data: _counter,
                ),
                itemCount: azkar.length,
              
              ),
            )
            ;
  }
}
