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
  List<Widget> smsList = [];
  void createSingleSms(){
  setState(() {
     Widget text = Text("дорова ");
    smsList.add(text);
  });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
       child:ListView.builder(
         itemBuilder: (context,index){
           return smsList[index];
         },
         itemCount: smsList.length,
       ) ,
      ),
      bottomNavigationBar: SizedBox(
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
             onPressed:() {
               
             },
              ),
          ],
        ) ,
      ),
    );
  }
}



