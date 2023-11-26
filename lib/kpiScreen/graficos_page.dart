import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class GraficosScreen extends StatelessWidget {
  const GraficosScreen({super.key});

  static const String imagePath = "assets/image.png";
  static const Color chartColor = Color.fromRGBO(255, 107, 0, 1);

  @override
  Widget build(BuildContext context) {
    // Gerador de número aleatório
    final random = Random();

    // Criar spots fictícios para o primeiro gráfico de linhas
    final spots1 = List.generate(
        8, (index) => FlSpot(index.toDouble(), random.nextDouble() * 10));

    // Criar uma linha com os spots para o primeiro gráfico
    final line1 = LineChartBarData(
      spots: spots1,
      isCurved: true,
      color: chartColor,
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
    );

    // Criar spots fictícios para o segundo gráfico de linhas
    final spots2 = List.generate(
        8, (index) => FlSpot(index.toDouble(), random.nextDouble() * 10));

    // Criar uma linha com os spots para o segundo gráfico
    final line2 = LineChartBarData(
      spots: spots2,
      isCurved: true,
      color: chartColor,
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
    );

// Criar spots fictícios para o terceiro gráfico de linhas
    final spots3 = List.generate(
        8, (index) => FlSpot(index.toDouble(), random.nextDouble() * 10));

// Criar uma linha com os spots para o terceiro gráfico
    final line3 = LineChartBarData(
      spots: spots3,
      isCurved: true,
      color: chartColor,
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
    );

// Criar spots fictícios para o quarto gráfico de linhas
    final spots4 = List.generate(
        8, (index) => FlSpot(index.toDouble(), random.nextDouble() * 10));

// Criar uma linha com os spots para o quarto gráfico
    final line4 = LineChartBarData(
      spots: spots4,
      isCurved: true,
      color: chartColor,
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
    );

// Criar spots fictícios para o quinto gráfico de linhas
    final spots5 = List.generate(
        8, (index) => FlSpot(index.toDouble(), random.nextDouble() * 10));

// Criar uma linha com os spots para o quinto gráfico
    final line5 = LineChartBarData(
      spots: spots5,
      isCurved: true,
      color: chartColor,
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
    );

    // Criar spots fictícios para o sexto gráfico de linhas
    final spots6 = List.generate(
        8, (index) => FlSpot(index.toDouble(), random.nextDouble() * 10));

// Criar uma linha com os spots para o sexto gráfico
    final line6 = LineChartBarData(
      spots: spots6,
      isCurved: true,
      color: chartColor,
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
    );

// Criar spots fictícios para o sétimo gráfico de linhas
    final spots7 = List.generate(
        8, (index) => FlSpot(index.toDouble(), random.nextDouble() * 10));

// Criar uma linha com os spots para o sétimo gráfico
    final line7 = LineChartBarData(
      spots: spots7,
      isCurved: true,
      color: chartColor,
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
    );

// Criar spots fictícios para o oitavo gráfico de linhas
    final spots8 = List.generate(
        8, (index) => FlSpot(index.toDouble(), random.nextDouble() * 10));

// Criar uma linha com os spots para o oitavo gráfico
    final line8 = LineChartBarData(
      spots: spots8,
      isCurved: true,
      color: chartColor,
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
    );

// Criar spots fictícios para o nono gráfico de linhas
    final spots9 = List.generate(
        8, (index) => FlSpot(index.toDouble(), random.nextDouble() * 10));

// Criar uma linha com os spots para o nono gráfico
    final line9 = LineChartBarData(
      spots: spots9,
      isCurved: true,
      color: chartColor,
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
                      alignment: Alignment.center,
                      child: Text(
                        'RECEITA TOTAL',
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
                  height: 300,
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(show: false),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      minX: 0,
                      maxX: 7,
                      minY: 0,
                      maxY: 10,
                      lineBarsData: [line1],
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
                      alignment: Alignment.center,
                      child: Text(
                        'LUCRO LÍQUIDO',
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
                  height: 300,
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(show: false),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      minX: 0,
                      maxX: 7,
                      minY: 0,
                      maxY: 10,
                      lineBarsData: [line2],
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
                      alignment: Alignment.center,
                      child: Text(
                        'MARGEM DE LUCRO',
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
                  height: 300,
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(show: false),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      minX: 0,
                      maxX: 7,
                      minY: 0,
                      maxY: 10,
                      lineBarsData: [line3],
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
                      alignment: Alignment.center,
                      child: Text(
                        'CUSTO DE AQUISIÇÃO DE CLIENTE',
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
                  height: 300,
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(show: false),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      minX: 0,
                      maxX: 7,
                      minY: 0,
                      maxY: 10,
                      lineBarsData: [line4],
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
                      alignment: Alignment.center,
                      child: Text(
                        'CRESCIMENTO ANO A ANO',
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
                  height: 300,
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(show: false),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      minX: 0,
                      maxX: 7,
                      minY: 0,
                      maxY: 10,
                      lineBarsData: [line5],
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
                      alignment: Alignment.center,
                      child: Text(
                        'MARKET SHARE',
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
                  height: 300,
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(show: false),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      minX: 0,
                      maxX: 7,
                      minY: 0,
                      maxY: 10,
                      lineBarsData: [line6],
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
                      alignment: Alignment.center,
                      child: Text(
                        'OBJETIVO DE RECEITA',
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
                  height: 300,
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(show: false),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      minX: 0,
                      maxX: 7,
                      minY: 0,
                      maxY: 10,
                      lineBarsData: [line7],
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
                      alignment: Alignment.center,
                      child: Text(
                        'OBJETIVO REDUÇÃO DE CUSTOS',
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
                  height: 300,
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(show: false),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      minX: 0,
                      maxX: 7,
                      minY: 0,
                      maxY: 10,
                      lineBarsData: [line8],
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
                      alignment: Alignment.center,
                      child: Text(
                        'ALERTA DE DESEMPENHO',
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
                  height: 300,
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(show: false),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      minX: 0,
                      maxX: 7,
                      minY: 0,
                      maxY: 10,
                      lineBarsData: [line9],
                    ),
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
