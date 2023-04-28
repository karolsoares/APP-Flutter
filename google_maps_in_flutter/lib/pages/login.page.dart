import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
          padding: const EdgeInsets.all(16.0),
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
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(),
                TextField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.black),
                    )),
                Divider(),
                ButtonTheme(
                  padding: const EdgeInsets.all(16.0),
                  height: 60.0,
                  child: ElevatedButton(
                    child: const Text('Entrar'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        textStyle:
                            const TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

// ignore: non_constant_identifier_names
