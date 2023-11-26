import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class KpiWidget extends StatelessWidget {
  final String title;
  final String value;
  final String comparison;

  const KpiWidget(
      {Key? key,
      required this.title,
      required this.value,
      required this.comparison})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          Text(
            comparison,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class FiltroSegmentacaoScreen extends StatelessWidget {
  const FiltroSegmentacaoScreen({super.key});

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
                      "FILTRO E SEGMENTAÇÃO",
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
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 182, 129),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Filtros',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        KpiWidget(
                          title: 'Filtro de Produto',
                          value:
                              'Vendas do "Sistema de Assistência ao Motorista X" no T1 2023:\$2,500,000 no T1 2023',
                          comparison: 'Comparado a outros produtos',
                        ),
                        KpiWidget(
                          title: 'Filtro de Região',
                          value:
                              'Vendas na América do Norte em 2022:\$12,000,000 em 2022',
                          comparison: 'Comparado a outras regiões',
                        ),
                        KpiWidget(
                          title: 'Filtro de Período de Tempo',
                          value: 'Vendas totais no T1 2023: \$30,000,000',
                          comparison: 'Comparado a outros trimestres',
                        ),
                        KpiWidget(
                          title: 'Filtro de Canal de Vendas',
                          value:
                              'Vendas Diretas no T1 2023: \$20,000,000\nVendas por Revendedores no T1 2023:\$10,000,000',
                          comparison: 'Comparação de canais de vendas',
                        ),
                        Text(
                          'Segmentação',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        KpiWidget(
                          title: 'Segmentação por Região Geográfica',
                          value:
                              'Europa: Média de Satisfação = 8.5 \nÁsia: Média de Satisfação = 8.2\nAmérica do Norte: Média de Satisfação = 8.7',
                          comparison: 'Comparado a outras regiões',
                        ),
                        KpiWidget(
                          title: 'Segmentação por Produto',
                          value:
                              'Sistema de Entretenimento de Bordo: Média de Satisfação = 8.9\nSistemas de Segurança: Média de Satisfação = 8.6',
                          comparison: 'Comparado a outros produtos',
                        ),
                        KpiWidget(
                          title: 'Segmentação por Tipo de Cliente',
                          value:
                              'Fabricantes de Automóveis: Média de Satisfação = 8.8\nConsumidores Finais: Média de Satisfação = 8.5',
                          comparison: 'Comparado a outros tipos de clientes',
                        ),
                        KpiWidget(
                          title: 'Segmentação por Faixa Etária dos Clientes',
                          value:
                              '18-34 anos: Média de Satisfação = 8.7\n35-49 anos: Média de Satisfação = 8.6\n50+ anos: Média de Satisfação = 8.4',
                          comparison: 'Comparado a outras faixas etárias',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 190),
                const SizedBox(
                  width: 316,
                  height: 40,
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
