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

class Beneficio {
  final int idRegistro;
  final String descricao;

  Beneficio({
    required this.idRegistro,
    required this.descricao,
  });

  Map<String, dynamic> toJson() {
    return {
      'id_registro': idRegistro,
      'descricao': descricao,
    };
  }
}

Future<void> createBeneficio(Beneficio beneficio) async {
  const String url = 'http://10.0.2.2:5000/beneficios';

  final response = await http.post(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(beneficio.toJson()),
  ).timeout(const Duration(seconds: 10), onTimeout: () {
    throw TimeoutException('A requisição ao servidor excedeu o tempo limite.');
  });

  if (response.statusCode != 201) {
    throw Exception('Falha ao criar benefício: ${response.statusCode}');
  }

  // Aqui você pode lidar com a resposta, se necessário.
}

Future<void> atribuirBeneficio(int idRegistro, Beneficio beneficio) async {
  final String url = 'http://10.0.2.2:5000/beneficios/$idRegistro'; // Substitua pela URL correta

  try {
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(beneficio.toJson()),
    ).timeout(const Duration(seconds: 10), onTimeout: () {
      throw TimeoutException('A requisição ao servidor excedeu o tempo limite.');
    });

    if (response.statusCode == 201) {
      // Sucesso na criação do benefício
      print('Benefício criado com sucesso');
    } else {
      throw Exception('Falha ao criar benefício: ${response.statusCode}');
    }
  } catch (e) {
    print('Erro ao criar benefício: $e');
    rethrow; // Re-lança a exceção para que possa ser tratada onde a função foi chamada
  }
}