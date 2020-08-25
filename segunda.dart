import 'package:flutter/material.dart';

class Segunda extends StatefulWidget {

  String nomeRecebido;
  String idadeRecebida;


  Segunda(this.nomeRecebido,this.idadeRecebida);

  @override
  _SegundaState createState() => _SegundaState();
}

class _SegundaState extends State<Segunda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Segunda Página"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Text("Segunda Página"),
            Text(widget.nomeRecebido + " - " + widget.idadeRecebida),
            RaisedButton(
              child: Text("Voltar"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
