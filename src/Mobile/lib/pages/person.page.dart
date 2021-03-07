import 'package:flutter/material.dart';
import 'package:pris_pocket_guide/models/person.model.dart';
import 'package:pris_pocket_guide/widgets/bulleted-text-list.widget.dart';

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
                      //backgroundImage: AssetImage(person.picture),
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
              BulletedTextList(
                title: "Como sou no trabalho?",
                content: person.characteristicsAtWork,
              ),
              BulletedTextList(
                title: "Fun Facts",
                content: person.funFacts,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
