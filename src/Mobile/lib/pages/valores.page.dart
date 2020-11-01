import 'package:flutter/material.dart';
import 'package:pris_pocket_guide/widgets/valor.widget.dart';

class ValoresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Valores"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blueGrey[400],
              child: FlatButton(
                child: Text(
                  "Atitude de Dono",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => Valor(
                      valor: "Atitude de Dono",
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blueGrey[400],
              child: FlatButton(
                child: Text(
                  "Autogestão",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => Valor(
                      valor: "Autogestão",
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blueGrey[400],
              child: FlatButton(
                child: Text(
                  "Transparência",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => Valor(
                      valor: "Transparência",
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blueGrey[400],
              child: FlatButton(
                child: Text("Horizontalidade",
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => Valor(
                      valor: "Horizontalidade",
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blueGrey[400],
              child: FlatButton(
                child: Text(
                  "Vontade de Aprender e Ensinar",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => Valor(
                      valor: "Vontade de Aprender e Ensinar",
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blueGrey[400],
              child: FlatButton(
                child: Text(
                  "Altruísmo",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => Valor(
                      valor: "Altruísmo",
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
