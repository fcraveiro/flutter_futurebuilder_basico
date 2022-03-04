class ClassCliente {
  String cliUuId;
  String cliNome;
  String cliEnde;
  String cliCity;
  int cliFone;

  ClassCliente({
    required this.cliUuId,
    required this.cliNome,
    required this.cliEnde,
    required this.cliCity,
    required this.cliFone,
  });

  factory ClassCliente.fromJson(Map<String, dynamic> map) {
    return ClassCliente(
      cliUuId: map['cliUuId'.toString()],
      cliNome: map['cliNome'.toString()],
      cliEnde: map['cliEnde'.toString()],
      cliCity: map['cliCity'.toString()],
      cliFone: map['cliFone'],
    );
  }

  Map<String, dynamic> toJson() => {
        'cliNome': cliNome,
        'cliEnde': cliEnde,
        'cliCity': cliCity,
        'cliFone': cliFone,
      };
}
