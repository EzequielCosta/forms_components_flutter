class Regiao {
  final int id;
  final String sigla;
  final String nome;

  Regiao({required this.id, required this.sigla, required this.nome});

  factory Regiao.fromJson(Map<String, dynamic> json) {
    return Regiao(id: json["id"], nome: json["nome"], sigla: json["sigla"]);
  }
}
