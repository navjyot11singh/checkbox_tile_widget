import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _checked= false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.only(bottom: 10),
            height: 50,
            width: 300,
            color: Colors.grey.shade300,
            alignment: Alignment.center,
            child: Center(
              child: Container(
                child: CheckboxListTile(
                  title: Text("This is the text",),
                  secondary: Icon(Icons.add_alarm),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _checked,
                  onChanged: (bool value){
                    setState((){
                      _checked=value;
                    });
                  },
                  activeColor: Colors.green,
                  checkColor: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

