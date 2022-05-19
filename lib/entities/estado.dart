import 'package:form_components/entities/regiao.dart';

class Estado {
  final int id;
  final String sigla;
  final String nome;
  final Regiao regiao;

  Estado(
      {required this.id,
      required this.nome,
      required this.sigla,
      required this.regiao});

  factory Estado.fromJson(Map<String, dynamic> json) {
    return Estado(
        id: json["id"],
        nome: json["nome"],
        sigla: json["sigla"],
        regiao: Regiao.fromJson(json["regiao"]));
  }
}
