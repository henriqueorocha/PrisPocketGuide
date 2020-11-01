import 'package:flutter/material.dart';
import 'package:pris_pocket_guide/models/person.model.dart';
import 'package:pris_pocket_guide/widgets/pessoaCard.widget.dart';
import 'package:pris_pocket_guide/widgets/searchBox.widget.dart';

class PessoasPage extends StatelessWidget {
  final List<Person> people = [
    new Person(
        name: "Henrique",
        area: "TI",
        mainCircle: "Options Report",
        startedAt: "jan/2010",
        picture: "assets/Henrique.jpg",
        characteristicsAtWork: [
          "Concentrado",
          "Exigente",
          "Perfeccionista"
        ],
        funFacts: [
          "Seus gatos têm instagram (@teobaldo_e_nina)",
          "Já saiu da Pris pela janela"
        ]),
    new Person(
        name: "Daniel",
        area: "Negócios",
        mainCircle: "Crescimento",
        startedAt: "abr/2008",
        picture: "assets/daniel.jpg",
        characteristicsAtWork: [
          "Produtivo",
          "Multifuncional",
          "Tranquilo"
        ],
        funFacts: [
          "Fez o caminho de Santiago de Compostela sozinho de bicicleta",
          "Já foi campeão mineiro de badminton"
        ]),
    new Person(
        name: "Leandro",
        area: "Marketing",
        mainCircle: "Crescimento",
        startedAt: "jun/2019",
        picture: "assets/Leandro.jpg",
        characteristicsAtWork: [
          "Produtivo",
          "Multifuncional",
          "Criativo"
        ],
        funFacts: [
          "É vocalista da TDV, banda de groove music que o Daniel também participa",
          "Já fez um show fantasiado de múmia"
        ])
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pessoas"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          children: <Widget>[
            SearchBoxWidget(),
            SizedBox(height: 20),
            Flexible(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                children: <Widget>[
                  PessoaCard(person: people[0]),
                  PessoaCard(person: people[1]),
                  PessoaCard(person: people[2]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
