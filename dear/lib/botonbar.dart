import 'package:flutter/material.dart';

Widget createBottonBar(Size size) {
 return SizedBox(
        width: size.width,
        height:70.0 ,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
            width: size.width*0.8,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.bug_report_sharp),
                labelText: "Введи техт сообщеения",
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(30)))))),
          
            IconButton(
              icon: Icon(Icons.arrow_forward_ios),
             onPressed:() {},
              ),
          ],
        ) ,
      );
}