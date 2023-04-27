import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Colors.white, fontSize: 20),
                decoration: const InputDecoration(
                  labelText: "CPF",
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              const Divider(),
              ButtonTheme(
                  height: 60.0,
                  child: RaisedButton(
                      onPressed: () => {},
                      child: const Text("Entrar",
                          style: TextStyle(color: Colors.deepOrange))))
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
