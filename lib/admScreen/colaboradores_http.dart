import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Colaborador {
  final String nome;
  final int registro;
  final String email;
  final String telefone;
  final int idUnidade;

  Colaborador({
    required this.nome,
    required this.registro,
    required this.email,
    required this.telefone,
    required this.idUnidade,
  });

  factory Colaborador.fromJson(Map<String, dynamic> json) {
    print(json);
    return Colaborador(
      nome: json['nome'],
      registro: json['registro'],
      email: json['email'],
      telefone: json['telefone'],
      idUnidade: json['id_unidade'],
    );
  }
}

Future<List<Colaborador>> fetchColaboradores() async {
  const String url = 'http://10.0.2.2:5000/colaboradores';

  final response = await http
      .get(Uri.parse(url))
      .timeout(const Duration(seconds: 10), onTimeout: () {
    throw TimeoutException('A requisição ao servidor excedeu o tempo limite.');
  });

  if (response.statusCode != 200) {
    throw Exception('Falha ao buscar colaboradores: ${response.statusCode}');
  }

  final jsonData = jsonDecode(response.body)['colaboradores'];
  if (jsonData is! List) {
    throw FormatException('Formato de resposta inválido');
  }

  return jsonData
      .map<Colaborador>((json) => Colaborador.fromJson(json))
      .toList();
}
