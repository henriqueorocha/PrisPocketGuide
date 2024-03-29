import 'package:flutter/material.dart';
import 'package:pris_pocket_guide/pages/people.page.dart';
import 'package:pris_pocket_guide/pages/proposito.page.dart';
import 'package:pris_pocket_guide/pages/timeline.page.dart';
import 'package:pris_pocket_guide/pages/values.page.dart';
import 'package:pris_pocket_guide/widgets/home-button.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("assets/pris_horizontal.jpg"),
              width: 200,
            ),
            SizedBox(height: 5),
            Text(
              "Pocket Guide",
              textAlign: TextAlign.center,
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 28),
            ),
            SizedBox(height: 30),
            HomeButton(text: "Propósito", goToPage: PropositoPage()),
            SizedBox(height: 10),
            HomeButton(text: "Valores", goToPage: ValuesPage()),
            SizedBox(height: 10),
            HomeButton(text: "Pessoas", goToPage: PeoplePage()),
            SizedBox(height: 10),
            HomeButton(text: "Linha do Tempo", goToPage: TimelinePage()),
          ],
        ),
      ),
    );
  }
}
