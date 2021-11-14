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
      bottomNavigationBar: Container(
        width: size.width,
        height:70.0 ,
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
            width: size.width*0.8,
            child: TextField(
              decoration: InputDecoration(
                labelText: "Введи техт сообщеения",
                border: OutlineInputBorder(
                  borderRadius:const BorderRadius.all(Radius.circular(10)) 
                  )
              ),
            ),
            ),
            TextField(),
            IconButton(
              icon: Icon(

                Icons.ac_unit_outlined

              ), 
              onPressed:null,
              )
          ],
        ) ,
      ),
    );
    
  }
}
