import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

class GraficosScreen extends StatelessWidget {
  const GraficosScreen({super.key});

  static const String imagePath = "assets/image.png";
  static const Color chartColor = Color.fromRGBO(255, 107, 0, 1);

  @override
  Widget build(BuildContext context) {
    // Gerador de número aleatório
    final random = Random();

    // Criar spots fictícios para o gráfico de linhas
    final spots = List.generate(
        8, (index) => FlSpot(index.toDouble(), random.nextDouble() * 10));

    // Criar uma linha com os spots
    final line = LineChartBarData(
      spots: spots,
      isCurved: true,
      color: Colors.blue,
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
    );

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
                    ),
                  ),
                ),
                const SizedBox(height: 17),
                SizedBox(
                  width: 335,
                  height: 50,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "GRÁFICOS E VISUALIZAÇÕES",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 17),
                // Container do gráfico
                SizedBox(
                  width: 335,
                  height: 300, // Ajuste a altura conforme necessário
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(show: false),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(color: Colors.blue, width: 1),
                      ),
                      minX: 0,
                      maxX: 7,
                      minY: 0,
                      maxY: 10,
                      lineBarsData: [line],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
