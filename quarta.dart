import 'package:flutter/material.dart';

class Quarta extends StatefulWidget {
  @override
  _QuartaState createState() => _QuartaState();
}

class _QuartaState extends State<Quarta> {

  TextEditingController novoNome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Quarta Página - Retorna Valor"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.text,
              controller: novoNome,
              decoration: InputDecoration(
                  labelText: "Digite o Novo Nome"
              ),
            ),
            RaisedButton(
              child: Text("Voltar"),
              onPressed: () {
                Navigator.pop(context, novoNome.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
