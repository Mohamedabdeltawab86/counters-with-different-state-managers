import 'package:flutter/material.dart';


class MyZekr extends StatelessWidget {
  MyZekr(
      {super.key,
      required this.onPressed,
      this.data,
      required this.title,
      // required this.image
      });

      // define onPressed taking different counters to be passed as an argument
      
  int? data;
  final String title;
  // add image
  // final String image;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        height: MediaQuery.of(context).size.height * 0.12,
        child: Card(
          color: Colors.amber[300],
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            
            Container(
              width: 100,
              child: Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                primary: Colors.amber[500],
              ),
              child: const Icon(
                Icons.arrow_circle_up,
                color: Colors.white,
              ),
            ),
            Text(
              data.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ]),
        ));
  }
}
