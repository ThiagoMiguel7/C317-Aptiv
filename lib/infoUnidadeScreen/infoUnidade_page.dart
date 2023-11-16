import 'package:aptiv_app/kpiScreen/kpi_page.dart';
import 'package:flutter/material.dart';

class InfoUniScreen extends StatelessWidget {
  const InfoUniScreen({super.key});

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
                    borderRadius: BorderRadius.circular(6), // Borda arredondada
                  ),
                  alignment: Alignment.center, // Alinhamento do texto no centro
                  child: const Text(
                    "INFORMAÇÕES DA UNIDADE",
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
              Container(
                width: 335,
                padding: const EdgeInsets.symmetric(
                    vertical:
                        10), // Adicione padding vertical conforme necessário
                child: Text(
                  "UNIDADE II - APTIV\nAVENIDA PAULISTA, 79\nSÃO PAULO - SP\n\nTelefone:\n +55 11 988887777\n\nHORÁRIOS DE FUNCIONAMENTO\n\nSegunda-feira à sexta-feira: 7h às 18h\nSábado: 8h às 13h",
                  style: TextStyle(
                    color: Color(0xffa3a3a3),
                    fontSize: 15,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 190),
              const SizedBox(
                width: 316,
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    child: const Text(
                      'Dados Gerais da Unidade APTIV - KPI',
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
                                const KpiScreen()), // Navega para BeneficiosPage
                      );
                    },
                  )
                ],
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}
