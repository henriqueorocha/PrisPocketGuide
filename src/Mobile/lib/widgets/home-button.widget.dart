import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String text;
  final Widget goToPage;

  const HomeButton({@required this.text, @required this.goToPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        child: Text(text, style: TextStyle(fontSize: 20)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => goToPage),
          );
        },
      ),
    );
  }
}
