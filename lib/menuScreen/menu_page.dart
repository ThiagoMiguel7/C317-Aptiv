import 'package:aptiv_app/beneficiosScreen/beneficios_page.dart';
import 'package:aptiv_app/holeritesScreen/holerites_page.dart';
import 'package:aptiv_app/infoUnidadeScreen/infoUnidade_page.dart';
import 'package:aptiv_app/keyScreen/key_page.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  final String name;
  final String registro;
  const MenuScreen({super.key, required this.name, required this.registro});

  static const String imagePath = "assets/image.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column(
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
                      borderRadius:
                          BorderRadius.circular(6), // Borda arredondada
                    ),
                    alignment:
                        Alignment.center, // Alinhamento do texto no centro
                    child: const Text(
                      "MENU",
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
                const SizedBox(height: 25),
                SizedBox(
                  // Envolve o Text com um Container
                  width: 335, // Define a largura do Container
                  child: Align(
                    // Adiciona um widget Align
                    alignment:
                        Alignment.centerLeft, // Alinha o texto à esquerda
                    child: Text(
                      "BEM VINDO, ${name.toUpperCase()}!",
                      style: const TextStyle(
                        color: Color.fromRGBO(255, 107, 0, 1),
                        fontSize: 15,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 180),
                SizedBox(
                  width: 335,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              BeneficiosScreen(registro: registro),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 19), // Cor do texto
                      backgroundColor: Colors.white, // Cor de fundo
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Borda arredondada
                        side: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0),
                            width: 1), // Borda
                      ),
                    ),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'BENEFÍCIOS',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 17),
                SizedBox(
                  width: 335,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const HoleritesScreen()), // Navega para BeneficiosPage
                      ); // Implemente o que deve ocorrer quando o botão for pressionado
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0), width: 1),
                      ),
                    ),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'HOLERITES',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 17),
                SizedBox(
                  width: 335,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const InfoUniScreen()), // Navega para BeneficiosPage
                      );
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0), width: 1),
                      ),
                    ),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'INFORMAÇÕES DA UNIDADE',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  width: 316,
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      child: const Text(
                        'Permissões Especiais',
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
                                  const KeyScreen()), // Navega para BeneficiosPage
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
