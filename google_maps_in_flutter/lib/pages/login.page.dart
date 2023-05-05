import 'package:flutter/material.dart';
import 'package:google_maps_in_flutter/pages/cadastro.page.dart';
import 'package:google_maps_in_flutter/api_retrofit.dart' as autenticacao;
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'cadastro.page.dart';

import '../main.dart';
import 'package:email_validator/email_validator.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _repository = autenticacao.RestClient(Dio());
  final _formField = GlobalKey<FormState>();
  final emailEditingController = TextEditingController();
  final senhaEditingController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[425],
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                  decoration: const InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(),
                TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      minimumSize: const Size(5.0, 15.0),
                      maximumSize: const Size(5.0, 20.0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                    setState(() {});
                  },
                  child: const Text('Entrar'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      minimumSize: const Size(5.0, 15.0),
                      maximumSize: const Size(5.0, 20.0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MeuCadastro()),
                    );
                  },
                  child: const Text('Casdastrar-se'),
                )
              ],
            ),
          ),
        ));
  }
}

// ignore: non_constant_identifier_names
