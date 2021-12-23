// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                color: Colors.red,
                child: Text('Go to Screen B'),
                onPressed: (){
                  Navigator.pushNamed(context, '/b');
                }
                ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
                color: Colors.red,
                child: Text('Go to Screen C'),
                onPressed: (){
                  Navigator.pushNamed(context, '/c');
                }
            ),
          ],
        ),
      ),
    );
  }
}
