import 'package:dear/botonbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: hame(),
    );
  }
}
class hame extends StatefulWidget {
  hame({Key key}) : super(key: key);

  @override
  _hameState createState() => _hameState();
}

class _hameState extends State<hame> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: createBottonBar(size)
    );
    
  }
}
