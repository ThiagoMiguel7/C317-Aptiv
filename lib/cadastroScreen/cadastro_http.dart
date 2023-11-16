import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>> registerUser(
  String nome,
  String email,
  String telefone,
  String idUnidade,
  String senha,
) async {
  try {
    final response = await http.post(
      Uri.parse('http://10.0.2.2:5000/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'id_unidade': idUnidade,
        'senha': senha,
      }),
    );

    if (response.statusCode == 200) {
      try {
        var data = jsonDecode(response.body);
        
        if (data['success']) {
          return {
            'success': data['success'],
            'message': data['message'],
            'registro': data['registro'].toString(), // Converta o registro para String caso seja um número
          };
        } else {
          throw Exception('Falha ao cadastrar usuário: ${data['message']}');
        }
      } catch (e) {
        throw Exception('Falha ao processar a resposta do servidor');
      }
    } else {
      throw Exception('Falha na requisição');
    }
  } catch (e) {
    throw Exception('Falha na comunicação com o servidor');
  }
}

Future<bool> deleteUser(String registro) async {
  final url = Uri.parse('http://10.0.2.2:5000/delete_user');
  final response = await http.delete(
    url,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'registro': registro,
    }),
  );

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    return data['success'];
  } else {
    // Tratar erro ou mostrar uma mensagem ao usuário
    throw Exception('Falha ao excluir o usuário');
  }
}
