import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pris_pocket_guide/models/person.model.dart';
import 'package:pris_pocket_guide/pages/person.page.dart';

class PersonCard extends StatelessWidget {
  final Person person;

  PersonCard({@required this.person});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      color: Colors.black12,
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PersonPage(person: person)),
          );
        },
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(person.imageUrl),
            ),
            SizedBox(height: 6),
            Text(
              person.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            personCardText("Área", person.area),
            personCardText("Círculo Principal", person.mainCircle),
            personCardText("Na Pris desde",
                new DateFormat("dd/MM/yyyy").format(person.startedAt)),
          ],
        ),
      ),
    );
  }
}

Widget personCardText(String fieldName, String fieldValue) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(top: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("$fieldName:", style: TextStyle(fontWeight: FontWeight.normal)),
        Text("$fieldValue", style: TextStyle(fontWeight: FontWeight.w600)),
      ],
    ),
  );
}
