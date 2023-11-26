import 'package:aptiv_app/kpiScreen/filtroSegmentacao_page.dart';
import 'package:aptiv_app/kpiScreen/graficos_page.dart';
import 'package:aptiv_app/kpiScreen/kpiGeral_page.dart';
import 'package:flutter/material.dart';

class KpiScreen extends StatelessWidget {
  const KpiScreen({super.key});

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
                    "KPIs",
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
                width: 335,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    // Navega para a tela de gráficos
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => kpiGeralScreen()),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 19),
                    primary: Color.fromARGB(255, 0, 0, 0), // Cor do texto
                    backgroundColor: Colors.white, // Cor de fundo
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Borda arredondada
                      side: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                          width: 1), // Borda
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'VISÃO GERAL DOS KPIs',
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
                    // Navega para a tela de gráficos
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => GraficosScreen()),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 19),
                    primary: Color.fromARGB(255, 0, 0, 0),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0), width: 1),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'GRÁFICO E VISUALIZAÇÕES',
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
                    // Navega para a tela de gráficos
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => FiltroSegmentacaoScreen()),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 19),
                    primary: Color.fromARGB(255, 0, 0, 0),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0), width: 1),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'FILTRO E SEGMENTAÇÃO',
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
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 19),
                    primary: Color.fromARGB(255, 0, 0, 0),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0), width: 1),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'OBJETIVOS E METAS',
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
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 19),
                    primary: Color.fromARGB(255, 0, 0, 0),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0), width: 1),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'EXPORTAÇÃO E RELATÓRIOS',
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
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 19),
                    primary: Color.fromARGB(255, 0, 0, 0),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0), width: 1),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'FEEDBACK E AÇÃO',
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
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 19),
                    primary: Color.fromARGB(255, 0, 0, 0),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0), width: 1),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'AJUDA E DOCUMENTAÇÃO',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 316,
                height: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
