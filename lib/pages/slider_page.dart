import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider_provider/models/Temperature.dart';

class SliderPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: ChangeNotifierProvider(
        create: (context) => Temperature(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Environment(),
            Thermometer(),
          ],
        ),
      ),
    );
  }
}

class Thermometer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var temperature = context.watch<Temperature>();
    return Text(
      temperature.value.round().toString(),
      style: TextStyle(fontSize: 30),
    );
  }
}

class Environment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var temperature = context.watch<Temperature>();
    return Slider(
      value: temperature.value,
      min: 0,
      max: 100,
      divisions: 5,
      label: temperature.value.round().toString(),
      onChanged: (double value) {
        temperature.value = value;
      },
    );
  }
}
