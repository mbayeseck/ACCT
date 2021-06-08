import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ACCT/home.dart';

class actualitePage extends StatelessWidget {
  static const String routeName = '/actualitePage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Fil d'actualité"),
        ),
        drawer: Home(),
        body: Center(child: Text("This is actualite page")));
  }
}