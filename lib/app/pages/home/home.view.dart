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
        padding: EdgeInsets.all(15),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network("http://placehold.it/400x100"),
            Text(_newPhrase, style: TextStyle(fontSize: 20),),
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
                TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            )
          ],
            )),
      ),
    );
  }
}
