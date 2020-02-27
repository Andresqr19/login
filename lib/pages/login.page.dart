import 'package:flutter/material.dart';
import 'package:login/models/dados.dart';
import 'package:login/pages/home.dart';

class LoginPage extends StatefulWidget {
  var dados = new List<Dados>();

  LoginPage() {
    dados = [];
    dados.add(Dados(cpf: "12345678910", senha: "1234"));
  }
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var req = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: EdgeInsets.all(10),
        child:Center(
          child: Form(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: new TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "CPF",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(),
                TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(),
                ButtonTheme(
                  height: 60.0,
                  child: RaisedButton(
                    child: Text(
                      "Entrar",
                      style: TextStyle(color: Colors.deepPurple),
                      ),
                      color: Colors.white,
                    onPressed:(){
                      Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context)=>HomePage()),
                      );
                    }
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}