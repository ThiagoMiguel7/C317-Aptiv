import 'package:aptiv_app/admScreen/colaboradores_http.dart';
import 'package:flutter/material.dart';

class AtribuirBeneficiosScreen extends StatefulWidget {
  Colaborador colaborador;

  AtribuirBeneficiosScreen(this.colaborador);

  @override
  _AtribuirBeneficiosScreenState createState() =>
      _AtribuirBeneficiosScreenState(colaborador);
}

class _AtribuirBeneficiosScreenState extends State<AtribuirBeneficiosScreen> {
  static const String imagePath = "assets/image.png";
  Colaborador colaborador;

  bool _isSelectedSaude = false;
  bool _isSelectedDental = false;
  bool _isSelectedRefeicao = false;
  bool _isSelectedTransporte = false;
  bool _isSelectedFarmacia = false;
  bool _isSelectedGympass = false;

  _AtribuirBeneficiosScreenState(this.colaborador);

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
                    "ATRIBUIR BENEFÍCIOS",
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
                child: CheckboxListTile(
                  title: const Text(
                    'PLANO DE SAÚDE',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  value:
                      _isSelectedSaude, // Você precisa definir esta variável no estado do widget
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isSelectedSaude = newValue ?? false;
                    });
                  },
                  controlAffinity: ListTileControlAffinity
                      .leading, // Coloca a caixa de seleção à esquerda
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 1,
                    ),
                  ),
                  dense:
                      true, // Reduz o tamanho do CheckboxListTile se necessário
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 19), // Padding personalizado
                  activeColor:
                      Colors.black, // Cor da caixa de seleção quando ativada
                  checkColor:
                      Colors.white, // Cor do check dentro da caixa de seleção
                  tileColor: Colors.white, // Cor de fundo do ListTile
                ),
              ),
              const SizedBox(height: 17),
              SizedBox(
                width: 335, // Largura alinhada com o Container do menu
                child: CheckboxListTile(
                  title: const Text(
                    'PLANO DENTAL',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  value:
                      _isSelectedDental, // Você precisa definir esta variável no estado do widget
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isSelectedDental = newValue ?? false;
                    });
                  },
                  controlAffinity: ListTileControlAffinity
                      .leading, // Coloca a caixa de seleção à esquerda
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 1,
                    ),
                  ),
                  dense:
                      true, // Reduz o tamanho do CheckboxListTile se necessário
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 19), // Padding personalizado
                  activeColor:
                      Colors.black, // Cor da caixa de seleção quando ativada
                  checkColor:
                      Colors.white, // Cor do check dentro da caixa de seleção
                  tileColor: Colors.white, // Cor de fundo do ListTile
                ),
              ),
              const SizedBox(height: 17),
              SizedBox(
                width: 335, // Largura alinhada com o Container do menu
                child: CheckboxListTile(
                  title: const Text(
                    'VALE REFEIÇÃO',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  value:
                      _isSelectedRefeicao, // Você precisa definir esta variável no estado do widget
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isSelectedRefeicao = newValue ?? false;
                    });
                  },
                  controlAffinity: ListTileControlAffinity
                      .leading, // Coloca a caixa de seleção à esquerda
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 1,
                    ),
                  ),
                  dense:
                      true, // Reduz o tamanho do CheckboxListTile se necessário
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 19), // Padding personalizado
                  activeColor:
                      Colors.black, // Cor da caixa de seleção quando ativada
                  checkColor:
                      Colors.white, // Cor do check dentro da caixa de seleção
                  tileColor: Colors.white, // Cor de fundo do ListTile
                ),
              ),
              const SizedBox(height: 17),
              SizedBox(
                width: 335, // Largura alinhada com o Container do menu
                child: CheckboxListTile(
                  title: const Text(
                    'VALE TRANSPORTE',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  value:
                      _isSelectedTransporte, // Você precisa definir esta variável no estado do widget
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isSelectedTransporte = newValue ?? false;
                    });
                  },
                  controlAffinity: ListTileControlAffinity
                      .leading, // Coloca a caixa de seleção à esquerda
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 1,
                    ),
                  ),
                  dense:
                      true, // Reduz o tamanho do CheckboxListTile se necessário
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 19), // Padding personalizado
                  activeColor:
                      Colors.black, // Cor da caixa de seleção quando ativada
                  checkColor:
                      Colors.white, // Cor do check dentro da caixa de seleção
                  tileColor: Colors.white, // Cor de fundo do ListTile
                ),
              ),
              const SizedBox(height: 17),
              SizedBox(
                width: 335, // Largura alinhada com o Container do menu
                child: CheckboxListTile(
                  title: const Text(
                    'FARMÁCIA',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  value:
                      _isSelectedFarmacia, // Você precisa definir esta variável no estado do widget
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isSelectedFarmacia = newValue ?? false;
                    });
                  },
                  controlAffinity: ListTileControlAffinity
                      .leading, // Coloca a caixa de seleção à esquerda
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 1,
                    ),
                  ),
                  dense:
                      true, // Reduz o tamanho do CheckboxListTile se necessário
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 19), // Padding personalizado
                  activeColor:
                      Colors.black, // Cor da caixa de seleção quando ativada
                  checkColor:
                      Colors.white, // Cor do check dentro da caixa de seleção
                  tileColor: Colors.white, // Cor de fundo do ListTile
                ),
              ),
              const SizedBox(height: 17),
              SizedBox(
                width: 335, // Largura alinhada com o Container do menu
                child: CheckboxListTile(
                  title: const Text(
                    'GYMPASS',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  value:
                      _isSelectedGympass, // Você precisa definir esta variável no estado do widget
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isSelectedGympass = newValue ?? false;
                    });
                  },
                  controlAffinity: ListTileControlAffinity
                      .leading, // Coloca a caixa de seleção à esquerda
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 1,
                    ),
                  ),
                  dense:
                      true, // Reduz o tamanho do CheckboxListTile se necessário
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 19), // Padding personalizado
                  activeColor:
                      Colors.black, // Cor da caixa de seleção quando ativada
                  checkColor:
                      Colors.white, // Cor do check dentro da caixa de seleção
                  tileColor: Colors.white, // Cor de fundo do ListTile
                ),
              ),
              const SizedBox(height: 17),
              SizedBox(
                width: 335,
                height: 50,
                child: ElevatedButton(
                  onPressed: () async {
                    if (_isSelectedSaude) {
                      createBeneficio(Beneficio(
                          idRegistro: colaborador.registro,
                          descricao: "PLANO DE SAÚDE"));
                    }

                    if (_isSelectedDental) {
                      createBeneficio(Beneficio(
                          idRegistro: colaborador.registro,
                          descricao: "PLANO DENTAL"));
                    }

                    if (_isSelectedRefeicao) {
                      createBeneficio(Beneficio(
                          idRegistro: colaborador.registro,
                          descricao: "VALE REFEIÇÃO"));
                    }

                    if (_isSelectedTransporte) {
                      createBeneficio(Beneficio(
                          idRegistro: colaborador.registro,
                          descricao: "VALE TRANSPORTE"));
                    }

                    if (_isSelectedFarmacia) {
                      createBeneficio(Beneficio(
                          idRegistro: colaborador.registro,
                          descricao: "FARMÁCIA"));
                    }

                    if (_isSelectedGympass) {
                      createBeneficio(Beneficio(
                          idRegistro: colaborador.registro,
                          descricao: "GYMPASS"));
                    }
                    Navigator.of(context).pop();
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
                    "CONFIRMAR",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
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
