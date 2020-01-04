import 'package:flutter/material.dart';
import 'package:frases_do_dia/app/pages/home/home.vm.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  var _vm = HomeVm();
  var _newPhrase = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(40),
              child: Image.network("http://placehold.it/400x100"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: Text(_newPhrase),
            ),
            RaisedButton(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () {
                setState(() {
                  _newPhrase = _vm.generateNewPhrase();
                });
              },
              child: Text(
                "Nova Frase",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
