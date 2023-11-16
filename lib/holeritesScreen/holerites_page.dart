// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class HoleritesScreen extends StatefulWidget {
  const HoleritesScreen({Key? key}) : super(key: key);

  @override
  _HoleritesScreenState createState() => _HoleritesScreenState();
}

class _HoleritesScreenState extends State<HoleritesScreen> {
  static const String imagePath = "assets/image.png";
  List<String> months = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro'
  ];
  static List<String> generateYearList() {
    List<String> years = [];
    int currentYear = DateTime.now().year;

    for (int year = 2015; year <= currentYear; year++) {
      years.add(year.toString());
    }
    return years;
  }

  static List<String> years = generateYearList();

  String? selectedMonth;
  String? selectedYear;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView( 
            child: Column(            children: <Widget>[
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
                    "HOLERITES",
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
              const SizedBox(
                width: 335,
                height: 25,
                child: Text(
                  "Selecione o Período: Mês e Ano",
                  style: TextStyle(
                    color: Color(0xffa3a3a3),
                    fontSize: 15,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 17),
              Container(
                width: 335,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right:
                                7.5), // você pode ajustar este valor conforme necessário
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: selectedMonth,
                          hint: Text('MÊS'),
                          items: months.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              selectedMonth = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left:
                                7.5), // você pode ajustar este valor conforme necessário
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: selectedYear,
                          hint: Text('ANO'),
                          items: years.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              selectedYear = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 17),
              SizedBox(
                width: 335,
                height: 50,
                child: ElevatedButton(
                  onPressed: () async {},
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
                    "C O N F I R M A R",
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
        ),
        ],
      ),
    );
  }
}
