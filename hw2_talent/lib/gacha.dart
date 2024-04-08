import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hw2_talent/dataset.dart';

class RandomImage extends StatefulWidget {
  const RandomImage({super.key});

  @override
  State<RandomImage> createState() => _RandomImageState();
}

class _RandomImageState extends State<RandomImage> {
  final List<String> images = findGroup('ALL');
  String randomImage = 'assets/DD.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_blue.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.black, // 邊框顏色
                    width: 3, // 邊框寬度
                  ),
                  boxShadow: const [
                    BoxShadow(blurRadius: 10),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    randomImage,
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
              ElevatedButton(
                child: const Text(
                  '我推的孩子',
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    randomImage =
                        'assets/thumb/${images[Random().nextInt(images.length)]}.png';
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
