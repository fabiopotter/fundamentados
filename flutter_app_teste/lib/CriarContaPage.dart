import 'package:flutter/material.dart';

class CriarContaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _CriarContaPage();
}

class _CriarContaPage extends State<CriarContaPage> {
  final formKey = new GlobalKey<FormState>();


  String _nome;
  String _sobrenome;
  DateTime   _dtNasc;
  String _sexo;
  String _profissao;
  String _cidade;
  String _estado;
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: new Container(
          padding: EdgeInsets.all(16.0),
          child: new Form(
            key: formKey,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new SizedBox(
                  width: 128.0,
                  height: 128.0,
                  child: Image.asset("assets/images/logo_fnd2.png"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Nome'),
                  validator: (value) =>
                      value.isEmpty ? 'O Nome é obrigatório' : null,
                  onSaved: (value) => _nome = value,
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Sobrenome'),
                  validator: (value) =>
                  value.isEmpty ? 'O Sobrenome é obrigatório' : null,
                  onSaved: (value) => _sobrenome = value,
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'e-mail'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) =>
                  value.isEmpty ? 'O E-mail é obrigatório' : null,
                  onSaved: (value) => _sobrenome = value,
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Senha'),
                  obscureText: true,
                  validator: (value) =>
                      value.isEmpty ? 'Senha deve estar preenchido' : null,
                  onSaved: (value) => _password = value,
                ),
                new RaisedButton(
                  child: new Text('Criar Conta',
                      style: new TextStyle(
                          fontSize: 20.0, fontFamily: 'RobotoMono')),
                ),

              ],
            ),
          )),
    );
  }
}
