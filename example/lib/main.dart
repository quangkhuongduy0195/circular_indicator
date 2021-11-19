import 'dart:async';

import 'package:circular_indicator/circular_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _value = 0;
  Timer? _timer;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Indicator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: CircularIndicatorWidget(
                width: 200,
                height: 200,
                current: _value,
                maxStep: 100,
                widthLine: 2.5,
                heightLine: 20,
                curve: Curves.easeInOutCirc,
                gradientColor: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.cyan, Colors.orangeAccent],
                ),
                child: Container(
                  color: Colors.teal.shade200,
                  child: Center(
                      child: Text(
                    _value.toStringAsFixed(0),
                    style: const TextStyle(
                      color: Colors.teal,
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Slider(
              min: 0,
              max: 100,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.access_alarm),
          onPressed: () {
            if (_timer != null) return;
            _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
              setState(() {
                if (_value == 100) {
                  _value = 0;
                } else {
                  _value += 25;
                }
              });
            });
          },
        ),
      ),
    );
  }
}
