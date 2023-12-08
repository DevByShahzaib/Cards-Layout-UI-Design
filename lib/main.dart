import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 230,
              width: 412,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  color: Colors.deepPurple),
              child: Stack(
                children: [
                  Positioned(
                      top: 70,
                      child: Container(
                        height: 100,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(
                                  50,
                                ),
                                topRight: Radius.circular(50)),
                            color: Colors.white),
                      )),
                  Positioned(
                      left: 20,
                      top: 100,
                      child: Text(
                        'Your Books',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              direction: Axis.horizontal,
              children: [
                card('assets/images/twilight.jpg', 'Twilight'),
                SizedBox(
                  height: 170,
                  width: 20,
                ),
                card('assets/images/game.jpg', 'Game of Thrones'),
                card('assets/images/pakhis.jpg', 'History of Pak'),
                SizedBox(
                  height: 170,
                  width: 20,
                ),
                card('assets/images/black_tom.jpg', 'Black Tom'),
                card('assets/images/hunger.jpg', 'The hunger'),
                SizedBox(
                  height: 170,
                  width: 20,
                ),
                card('assets/images/psycho.jpg', 'Psycho'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget card(String path, name) {
  return Container(
    height: 150,
    width: 150,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              spreadRadius: 3,
              blurRadius: 10,
              color: Colors.grey,
              offset: Offset(0, 3)),
        ]),
    child: Column(
      children: [
        Container(
          child: Image.asset(
            path,
            height: 100,
            width: 170,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          name,
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        )
      ],
    ),
  );
}
