
import 'package:flutter/cupertino.dart';

class ResultPage extends StatelessWidget {

  const ResultPage({Key? key, required this.height, required this.wight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(
        leftIcon: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.white,
            ),
           ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Resultado',
                  style: TextStyle(
                    color: AppColors.white,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      ),
                    height: 357,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainxAxisalaignment.center,
                      children: [
                        Text (
                          _calculateIMC().toStringAsFixed(1),
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 50,
                        ),
                        ),
                        Text(_resultIMC(),
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 14.5,
                        ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  BottomButtonWidget(
                          title: 'CALCULAR NOVAMENTE',
                          onPressed: () => Navigator.pop(context),
                        ),
                 ],
                 ),
              )
            );
          }

          double _calculateIMC() {
    return weight / (pow(height / 100, 2));
  }

  String _resultIMC() {
    double imc = _calculateIMC();
    if (imc < 18.5) {
      return 'Abaixo do peso';
    } else if (imc >= 18.5 && imc <= 24.9) {
      return 'Peso Normal';
    } else if (imc >= 25 && imc <= 29.9) {
      return 'Sobrepeso';
    } else if (imc >= 30 && imc <= 34.9) {
      return 'Obesidade Grau I';
    } else if (imc >= 35 && imc <= 39.9) {
      return 'Obesidade grau II';
    } else {
      return 'Obesidade Grau III ou Morbida';
    }
  }
        }