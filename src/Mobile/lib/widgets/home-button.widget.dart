import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String text;
  final Widget goToPage;

  const HomeButton({@required this.text, @required this.goToPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).primaryColor,
        ),
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
