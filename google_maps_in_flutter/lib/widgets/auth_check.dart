import 'package:flutter/material.dart';
import 'package:google_maps_in_flutter/main.dart';
import 'package:google_maps_in_flutter/service/autenticacao.dart';
import 'package:provider/provider.dart';

class AuthCheck extends StatefulWidget {
  AuthCheck({Key? key}) : super(key: key);

  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    Autenticacao auth = Provider.of<Autenticacao>(context);

    if (auth.isLoading)
      return loading();
    else if (auth.usuario == null)
      return MyLogin();
    else
      return MyApp();
  }

  loading() {
    return Scaffold(
        body: Center(
      child: CircularProgressIndicator(),
    ));
  }
}
