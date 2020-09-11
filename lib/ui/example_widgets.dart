import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Hello World! My name is Rona.');
  }
}

class MyWidgetWithDependencies extends StatelessWidget {
  final String name;
  final String optionalLastName;
  MyWidgetWithDependencies(this.name, {this.optionalLastName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Hello World! My name is $name.'),
        if (optionalLastName != null) Text('My last name is $optionalLastName')
      ],
    );
  }
}
