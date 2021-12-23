// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: (){

          },
          child: Text('Get my location',
          style: TextStyle(
            color: Colors.white
          ),),
          color: Colors.blue,
        ),
      ),
    );
  }
}
