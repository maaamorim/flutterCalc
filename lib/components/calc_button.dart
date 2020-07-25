import 'package:flutter/material.dart';

/// Classe que representa um botão da calculadora
class CalcButton extends StatelessWidget {
  /// nome do botão escrito na tecla
  final String _nome;

  /// callback acionada ao se apertar no botão
  final Function(String) _pressionarBotaoCallback;

  CalcButton(this._nome, this._pressionarBotaoCallback);

  TextStyle _gerarEstilo() {
    String numeros = "0123456789";
    if (numeros.contains(_nome)) {
      return TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black);
    } else {
      return TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: Colors.blue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FlatButton(
          color: Colors.white12,
          onPressed: () => {_pressionarBotaoCallback(_nome)},
          child: Center(
              child: Text(
            _nome,
            style: _gerarEstilo(),
          )),
        ),
        flex: 1);
  }
}
