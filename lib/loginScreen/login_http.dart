import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginResponse {
  final bool success;
  final String message;
  final String name;
  final String registro;

  LoginResponse({required this.success, required this.message, this.name = "", this.registro = ""});
}

Future<LoginResponse> loginUser(String registro, String senha) async {
  registro = registro.trim();
  senha = senha.trim();

  if (registro.isEmpty || senha.isEmpty) {
    return LoginResponse(
        success: false, message: 'Registro e senha são obrigatórios.');
  }

  const String url = 'http://10.0.2.2:5000/login';

  try {
    final response = await http
        .post(
          Uri.parse(url),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            'registro': registro,
            'senha': senha,
          }),
        )
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data is Map && data['success'] is bool && data['message'] is String) {
        final name = data['name'] is String ? data['name'] : "";
        return LoginResponse(
            success: data['success'], message: data['message'], name: name, registro: registro);
      } else {
        return LoginResponse(
            success: false, message: 'Dados inválidos recebidos do servidor.');
      }
    } else {
      return LoginResponse(
          success: false,
          message: 'Falha na requisição: ${response.statusCode}');
    }
  } on http.ClientException catch (e) {
    return LoginResponse(
        success: false, message: 'Erro de conexão: ${e.message}');
  } on TimeoutException catch (_) {
    return LoginResponse(
        success: false,
        message: 'A requisição ao servidor excedeu o tempo limite.');
  } catch (e) {
    return LoginResponse(
        success: false, message: 'Erro durante a tentativa de login: $e');
  }
}