import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_maps_in_flutter/main.dart';
import 'package:google_maps_in_flutter/api_retrofit.dart' as autenticacao;
import 'package:dio/dio.dart';
import '../models/user_models.dart';

class MeuCadastro extends StatefulWidget {
  const MeuCadastro({super.key});

  @override
  State<MeuCadastro> createState() => _MeuCadastroState();
}

class _MeuCadastroState extends State<MeuCadastro> {
  final _repository = autenticacao.RestClient(Dio());
  final emailEditingController = TextEditingController();
  final senhaEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[425],
      //floatingActionButton: FloatingActionButton(
      //onPressed: () => newUser(),
      //child: Icon(Icons.person),
      //),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                controller: emailEditingController,
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
                  controller: senhaEditingController,
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.white),
                  )),
              Divider(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      minimumSize: const Size(1, 15.0),
                      maximumSize: const Size(1, 20.0)),
                  onPressed: () async {
                    await _repository.save(UserModel(
                        email: emailEditingController.text,
                        senha: senhaEditingController.text));
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyLogin()),
                    );
                    setState(() {});
                  },
                  child: const Text('Cadastrar-se')),
            ],
          ),
        ),
      ),
    );
  }

/***
 * void newUser() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
              content: Form(
                child: Column(children: [
                  TextFormField(controller: emailEditingController),
                  TextFormField(controller: senhaEditingController),
                ]),
              ),
              actions: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                        minimumSize: const Size(1, 15.0),
                        maximumSize: const Size(1, 20.0)),
                    onPressed: () async {
                      await _repository.save(UserModel(
                          email: emailEditingController.text,
                          senha: senhaEditingController.text));
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyLogin()),
                      );
                      setState(() {});
                    },
                    child: const Text('Cadastrar-se')),
              ]);
        });
  }

 */
}
