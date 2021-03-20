import 'package:flutter/material.dart';

class PropositoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Propósito"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: FittedBox(
          child: RotatedBox(
            child: Image.asset("assets/proposito.jpg"),
            quarterTurns: 1,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
