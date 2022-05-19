import 'package:flutter/material.dart';

class EstadoWidget extends StatelessWidget {
  final int id;
  final String nome;

  const EstadoWidget({required this.id, required this.nome, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
                alignment: Alignment.center, child: Text(id.toString()))),
        Expanded(flex: 4, child: Text(nome))
      ],
    );
  }
}
