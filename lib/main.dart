// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp() : super();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String numero = '0';

  double primaryNumero = 0;

  String operacao = '';

  void calcular(String tecla) {
    switch (tecla) {
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
        setState(() {
          numero += tecla;

          numero = numero.replaceAll(',', '.');

          if (numero.contains('.')) {
            //double numeroDouble = parse(numero);
            //numero = numeroDouble.String();
          } else {
            int numeroInt = int.parse(numero);
            numero = numeroInt.toString();
          }

          numero = numero.replaceAll('.', ',');
        });
        break;

      case '+':
      case '-':
      case 'x':
      case '/':
        operacao = tecla;
        primaryNumero = double.parse(numero);
        numero = '0';
        break;

      case '=':
        double resultado = 0.0;
        if (operacao == '+') {
          resultado = primaryNumero + double.parse(numero);
        }
        if (operacao == '-') {
          resultado = primaryNumero - double.parse(numero);
        } 
        if (operacao == 'x') {
          resultado = primaryNumero * double.parse(numero);
        }
        if (operacao == '/') {
          resultado = primaryNumero / double.parse(numero);
        }
        setState(() {
          numero = resultado.toString();
          numero = numero.replaceAll('.', ',');
        });

        break;

      /* if (operacao == '+') {
          resultado = primeiroNumero + double.parse(numero);
        }
        
        break;*/

      case 'AC':
        setState(() {
          numero = '0';
        });
        break;
      default:
        numero += tecla;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Calculadora'),
        ),
      ),
      body:Center(
        child:
       Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                numero,
                style: TextStyle(fontSize: 70),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  calcular('AC');
                },
                child: Text(
                  'AC',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Text(
                '',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '',
                style: TextStyle(fontSize: 40),
              ),
              GestureDetector(
                onTap: () {
                  calcular('<--');
                },
                child: Text(
                  '<--',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  calcular('7');
                },
                child: Text(
                  '7',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('8');
                },
                child: Text(
                  '8',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('9');
                },
                child: Text(
                  '9',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('/');
                },
                child: Text(
                  '/',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  calcular('4');
                },
                child: Text(
                  '4',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('5');
                },
                child: Text(
                  '5',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('6');
                },
                child: Text(
                  '6',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('x');
                },
                child: Text(
                  'x',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  calcular('1');
                },
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('2');
                },
                child: Text(
                  '2',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('3');
                },
                child: Text(
                  '3',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('-');
                },
                child: Text(
                  '-',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  calcular('0');
                },
                child: Text(
                  '0',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('.');
                },
                child: Text(
                  '.',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('=');
                },
                child: Text(
                  '=',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('+');
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
        ],
      ),
      )
    ));
  }
}
