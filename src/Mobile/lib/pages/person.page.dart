import 'package:flutter/material.dart';
import 'package:pris_pocket_guide/models/person.model.dart';

class PersonPage extends StatelessWidget {
  final Person person;

  PersonPage({@required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pessoas"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.cyan[800],
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage(person.picture),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    person.name,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text("Área: ${person.area}"),
              SizedBox(height: 15),
              Text("Círculo Principal: ${person.mainCircle}"),
              SizedBox(height: 15),
              Text("Na Pris desde: ${person.startedAt}"),
              SizedBox(height: 30),
              Text(
                "Como sou no trabalho?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              Text("\u2022 ${person.characteristicsAtWork[0]}"),
              SizedBox(height: 15),
              Text("\u2022 ${person.characteristicsAtWork[1]}"),
              SizedBox(height: 15),
              Text("\u2022 ${person.characteristicsAtWork[2]}"),
              SizedBox(height: 30),
              Text(
                "Fun Facts",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              Text("\u2022 ${person.funFacts[0]}"),
              SizedBox(height: 15),
              Text("\u2022 ${person.funFacts[1]}"),
            ],
          ),
        ),
      ),
    );
  }
}
