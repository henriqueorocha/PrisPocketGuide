import 'package:flutter/material.dart';
import 'package:pris_pocket_guide/blocs/people.bloc.dart';
import 'package:provider/provider.dart';

class SearchBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PeopleBloc bloc = Provider.of<PeopleBloc>(context);

    return Container(
      padding: EdgeInsets.only(left: 20),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.all(Radius.circular(128)),
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.search),
          Container(
            width: 300,
            padding: EdgeInsets.only(left: 10),
            child: TextFormField(
              keyboardType: TextInputType.text,
              onChanged: (text) {
                bloc.filterPeople(text);
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Pesquisar",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
