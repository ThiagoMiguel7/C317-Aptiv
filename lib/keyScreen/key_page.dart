import 'package:aptiv_app/admScreen/adm_page.dart';
import 'package:flutter/material.dart';

class KeyScreen extends StatelessWidget {
  const KeyScreen({super.key});

  static const String imagePath = "assets/image.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 55.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    width: 376.0,
                    height: 128.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 17),
              SizedBox(
                width: 335,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black, // Cor de fundo
                    borderRadius: BorderRadius.circular(6), // Borda arredondada
                  ),
                  alignment: Alignment.center, // Alinhamento do texto no centro
                  child: const Text(
                    "AUTENTICAÇÃO",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, // Cor do texto
                      fontSize: 14,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 85),
              const SizedBox(
                child: Text(
                  "Insira a chave de acesso do Administrador",
                  style: TextStyle(
                    color: Color(0xffa3a3a3),
                    fontSize: 15,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
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
                          border: Border.all(
                              color: const Color(0xff8e9ab9), width: 1),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 19),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                //controller: _passwordController,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  hintText: 'Key Authenticator',
                                  hintStyle: TextStyle(
                                    color: Color(0xff8e9ab9),
                                    fontSize: 14,
                                  ),
                                  border: InputBorder.none,
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
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AdmScreen()), // Navega para BeneficiosPage
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                        Color.fromRGBO(255, 107, 0, 1), // Cor de fundo do botão
                    onPrimary: Colors.black, // Cor do texto do botão
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    minimumSize: const Size(335, 50), // Tamanho mínimo do botão
                  ),
                  child: const Text(
                    "ACESSAR ADMINISTRAÇÃO",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
