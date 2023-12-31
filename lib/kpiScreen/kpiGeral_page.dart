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

class kpiGeralScreen extends StatelessWidget {
  const kpiGeralScreen({super.key});

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
                      "KPI GERAL",
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
                        KpiWidget(
                          title: 'Receita Total',
                          value: '\$500 milhões',
                          comparison: 'Comparado a \$14 bilhões da Aptiv',
                        ),
                        KpiWidget(
                          title: 'Lucro Líquido',
                          value: '\$50 milhões',
                          comparison: 'Comparado a \$1,2 bilhão da Aptiv',
                        ),
                        KpiWidget(
                          title: 'Margem de Lucro',
                          value: '10%',
                          comparison: 'Comparado a 8,5% da Aptiv',
                        ),
                        KpiWidget(
                          title: 'Custo de Aquisição de Cliente (CAC)',
                          value: '\$200',
                          comparison:
                              'Comparado a um valor não divulgado pela Aptiv',
                        ),
                        KpiWidget(
                          title: 'Crescimento Ano a Ano',
                          value: 'Aumento de 20%',
                          comparison: 'Comparado ao crescimento real da Aptiv',
                        ),
                        KpiWidget(
                          title: 'Market Share',
                          value: '10% em um nicho de mercado específico',
                          comparison:
                              'Comparado ao market share global da Aptiv',
                        ),
                        KpiWidget(
                          title: 'Objetivo de Receita',
                          value:
                              '75% alcançado do objetivo anual de \$670 milhões',
                          comparison: 'Objetivo passado:',
                        ),
                        KpiWidget(
                          title: 'Objetivo de Redução de Custo',
                          value:
                              '60% alcançado do objetivo de redução de 5% nos custos operacionais',
                          comparison: 'Objetivo passado:',
                        ),
                        KpiWidget(
                          title: 'Alerta de Desempenho',
                          value: 'O CAC aumentou 15% no último trimestre',
                          comparison:
                              'Sinalizando a necessidade de otimização das estratégias de marketing',
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
