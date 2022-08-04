import 'package:flutter/material.dart';
<<<<<<< HEAD

=======
>>>>>>> a6f271bbd3f862c8b69e2790c1ea92c38af246d0

// ignore: must_be_immutable
class MyZekr extends StatelessWidget {
<<<<<<< HEAD
  MyZekr(
      {super.key,
      required this.onPressed,
      this.data,
      required this.title,
      // required this.image
      });

      // define onPressed taking different counters to be passed as an argument
      
=======
  MyZekr({
    super.key,
    required this.onPressed,
    this.data,
    required this.title,
    // required this.image
  });
>>>>>>> a6f271bbd3f862c8b69e2790c1ea92c38af246d0
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
          elevation: 8,
          shadowColor: Colors.black,
          color: Colors.amber[200],
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            SizedBox(
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
                backgroundColor: Colors.amber[300],
              ),
              child: const Icon(
                Icons.arrow_circle_up,
                color: Colors.white,
                size: 50,
              ),
            ),
            SizedBox(
              width: 40,
              child: Text(
                data.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ]),
        ));
  }
}
