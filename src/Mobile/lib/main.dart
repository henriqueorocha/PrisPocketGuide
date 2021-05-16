import 'package:flutter/material.dart';
import 'package:pris_pocket_guide/blocs/people.bloc.dart';
import 'package:pris_pocket_guide/blocs/timeline.bloc.dart';
import 'package:pris_pocket_guide/blocs/values.bloc.dart';
import 'package:provider/provider.dart';

import 'pages/home.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PeopleBloc>.value(
          value: PeopleBloc(),
        ),
        ChangeNotifierProvider<ValuesBloc>.value(
          value: ValuesBloc(),
        ),
        ChangeNotifierProvider<TimelineEventBloc>.value(
          value: TimelineEventBloc(),
        )
      ],
      child: Main(),
    );
  }
}

class Main extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.redAccent[700],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
