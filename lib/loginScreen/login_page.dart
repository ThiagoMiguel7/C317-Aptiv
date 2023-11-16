// ignore_for_file: deprecated_member_use, use_build_context_synchronously

import 'package:aptiv_app/cadastroScreen/cadastro_page.dart';
import 'package:flutter/material.dart';
import 'package:aptiv_app/menuScreen/menu_page.dart';
import 'login_http.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  late TextEditingController _registroController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _registroController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _registroController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 17),
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 19),
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        const SizedBox(height: 17),
        SizedBox(
          width: 335,
          height: 50,
          child: SizedBox(
            width: 335,
            height: 50,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 335,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: const Color(0xff8e9ab9), width: 1),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: TextFormField(
                            controller: _registroController,
                            decoration: const InputDecoration(
                              hintText: 'Registro',
                              hintStyle: TextStyle(
                                color: Color(0xff8e9ab9),
                                fontSize: 14,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 17),
        SizedBox(
          width: 335,
          height: 50,
          child: Container(
            width: 335,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xff8e9ab9), width: 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      hintText: 'Senha',
                      hintStyle: const TextStyle(
                        color: Color(0xff8e9ab9),
                        fontSize: 14,
                      ),
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: const Color(0xff8e9ab9),
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 17),
        SizedBox(
          width: 335,
          height: 50,
          child: ElevatedButton(
            onPressed: () async {
              FocusScope.of(context).unfocus();

              if (_registroController.text.trim().isEmpty ||
                  _passwordController.text.trim().isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Registro e senha não podem estar vazios')),
                );
                return;
              }

              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return const Center(child: CircularProgressIndicator());
                },
              );

              final LoginResponse result = await loginUser(
                _registroController.text.trim(),
                _passwordController.text.trim(),
              );

              Navigator.of(context).pop();

              if (result.success) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MenuScreen(name: result.name),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content:
                          Text('Falha ao realizar login: ${result.message}')),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.black, // Cor de fundo do botão
              onPrimary: Colors.white, // Cor do texto do botão
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              minimumSize: const Size(335, 50), // Tamanho mínimo do botão
            ),
            child: const Text(
              "E N T R A R",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const SizedBox(
          width: 316,
          height: 40,
          child: Text(
            "Esqueci minha senha",
            style: TextStyle(
              color: Color(0xffa3a3a3),
              fontSize: 15,
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Ainda não tem uma conta?",
              style: TextStyle(
                color: Color(0xffa3a3a3),
                fontSize: 15,
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
              ),
            ),
            TextButton(
              child: const Text(
                'Inscreva-se',
                style: TextStyle(
                  color: Color.fromRGBO(255, 107, 0, 1),
                  fontSize: 15,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const CadastroScreen()), // Navega para BeneficiosPage
                );
              },
            )
          ],
        ),
      ],
    );
  }
}
