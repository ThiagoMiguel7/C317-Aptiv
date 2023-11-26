import 'package:aptiv_app/admScreen/colaboradores_http.dart';
import 'package:flutter/material.dart';

class BeneficiosScreen extends StatelessWidget {
  final String registro;

  const BeneficiosScreen({super.key, required this.registro});

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
                      "BENEFÍCIOS",
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
                const SizedBox(height: 17),
                SizedBox(
                  width: 335, // Largura alinhada com o Container do menu
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Visibility(
                        visible:
                            true, // Defina como false para tornar o SizedBox invisível
                        child: SizedBox(
                          width: 160,
                          height: 50,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  const Color.fromARGB(255, 0, 0, 0),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 19),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  width: 1,
                                ),
                              ),
                            ),
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'PLANO DE SAÚDE',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Visibility(
                        visible:
                            true, // Defina como true ou false para controlar a visibilidade
                        child: SizedBox(
                          width: 160,
                          height: 50,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  const Color.fromARGB(255, 0, 0, 0),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 19),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    width: 1),
                              ),
                            ),
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'PLANO DENTAL',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 17),
                SizedBox(
                  width: 335, // Largura alinhada com o Container do menu
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Visibility(
                        visible:
                            true, // Altere para false para ocultar o botão 'VALE REFEIÇÃO'
                        child: SizedBox(
                          width: 160,
                          height: 50,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  const Color.fromARGB(255, 0, 0, 0),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 19),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    width: 1),
                              ),
                            ),
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'VALE REFEIÇÃO',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Visibility(
                        visible:
                            true, // Altere para false para ocultar o botão 'VALE TRANSPORTE'
                        child: SizedBox(
                          width: 160,
                          height: 50,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  const Color.fromARGB(255, 0, 0, 0),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 19),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    width: 1),
                              ),
                            ),
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'VALE TRANSPORTE',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 17),
                SizedBox(
                  width: 335, // Largura alinhada com o Container do menu
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Visibility(
                        visible:
                            true, // Altere para false para ocultar o botão 'VALE REFEIÇÃO'
                        child: SizedBox(
                          width: 160,
                          height: 50,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  const Color.fromARGB(255, 0, 0, 0),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 19),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    width: 1),
                              ),
                            ),
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'FÁRMACIA',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Visibility(
                        visible:
                            true, // Altere para false para ocultar o botão 'VALE TRANSPORTE'
                        child: SizedBox(
                          width: 160,
                          height: 50,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  const Color.fromARGB(255, 0, 0, 0),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 19),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    width: 1),
                              ),
                            ),
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'GYMPASS',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 17),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
