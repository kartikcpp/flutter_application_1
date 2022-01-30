import 'dart:math';

import 'package:flutter/material.dart';

class RandomizerPage extends StatefulWidget {
  final int min, max;
  RandomizerPage({Key? key, required this.min, required this.max})
      : super(key: key);

  @override
  State<RandomizerPage> createState() => _RandomizerPageState();
}

class _RandomizerPageState extends State<RandomizerPage> {
  int? generatedNumber;
  final randomGenerator = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Randomizer'),
      ),
      body: Center(
          child: Text(
        generatedNumber?.toString() ?? 'generate here',
        style: TextStyle(fontSize: 45),
      )),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              generatedNumber = widget.min+randomGenerator.nextInt(widget.max-widget.min+1);
            });
          },
          label: Text('generate')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
