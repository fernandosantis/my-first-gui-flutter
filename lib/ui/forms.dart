import 'dart:ui';

import 'package:flutter/material.dart';

class Forms extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastre-se'),
      ),
      body: formBody(),
    );
  }

  formBody() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          inputWidget('Nome: ', 'Digite o nome'),
          inputWidget('Endereço: ', 'Digite o endereço'),
          inputWidget('E-mail: ', 'Digite o email'),
          Row(
            children: [
                    cmdCancelar(),
                    Spacer(flex: 1,),
                    cmdSalvar(),
                  ],
          ),
        ],
      ),
    );
  }

  inputWidget(String hint, String helper) {
    return Container(
      margin: EdgeInsets.only(top: 8.0),
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
          margin: EdgeInsets.only(bottom: 4.0, top: 4.0),
          ),
          TextField(
            decoration: InputDecoration(
                fillColor: Colors.blue,
                hintText: hint,
                helperText: helper,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                )),
          )
        ],
      ),
    );
  }

  cmdSalvar() {
    return Container(
      margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: ElevatedButton(
        onPressed: () {
          salvar();
        },
        child: Text("Salvar"),
      ),
    );
  }

cmdCancelar() {
  return Container(
    margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
    child: ElevatedButton(
      onPressed: () {
        cancelar();
      },
      child: Text("Cancelar"),
    ),
  );
}

void salvar() {

}

void cancelar() {

}
}
