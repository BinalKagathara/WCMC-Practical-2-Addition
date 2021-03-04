import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  final ctrl_n1 = TextEditingController();
  final ctrl_n2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
          title: Text('WCMC : PR2 : Additon of 2 Number'),
    ),
          body: Container(
            width: double.infinity,
            margin: EdgeInsets.all(50),
            child: Column(
    children: [
              TextField(
              obscureText: false,
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Number 1',
              ),
              controller: ctrl_n1,
              keyboardType: TextInputType.number),
              SizedBox(height: 30),
              TextField(
              obscureText: false,
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Number 2',
          ),
              controller: ctrl_n2,
              keyboardType: TextInputType.number),
              SizedBox(
              height: 20,
      ),
              Container(
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                child: Text('ADD'),
                  onPressed: () {
                  var msg = 'Invalid Input !!';
                  try {
                  int n1 = int.parse(ctrl_n1.text);
                  int n2 = int.parse(ctrl_n2.text);
                  msg = 'Ans: ${n1 + n2}';
                  } catch (Exception) {}

                Fluttertoast.showToast(
                msg: msg,
                gravity: ToastGravity.CENTER,
                backgroundColor: Colors.grey,
                textColor: Colors.black
            );
          },
        ),
      )
    ],
    ),
    ),
        ),
    );
  }
}
