import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'segunda.dart';
import 'quarta.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController nome = TextEditingController();
  TextEditingController idade = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navegação - Primeira Página"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.text,
              controller: nome,
              decoration: InputDecoration(labelText: "Nome"),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: idade,
              decoration: InputDecoration(labelText: "Idade"),
            ),
            RaisedButton(
              color: Colors.teal,
              child: Text("Segunda Página"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Segunda(nome.text, idade.text)));
              },
            ),
            RaisedButton(
              color: Colors.teal,
              child: Text("Terceira Página"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Terceira()));
              },
            ),
            RaisedButton(
              color: Colors.teal,
              child: Text("Busca Valor"),
              onPressed: () async {
                String oNomeNovo;
                oNomeNovo = await Navigator.push(context, MaterialPageRoute(builder: (context) => Quarta()));
                setState(() {
                  nome.text = oNomeNovo;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Terceira extends StatefulWidget {
  @override
  _TerceiraState createState() => _TerceiraState();
}

class _TerceiraState extends State<Terceira> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Terceira"),
      ),
    );
  }
}
