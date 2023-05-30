import 'package:flutter/material.dart';
import 'package:metodista_app/components/online-cells-list.dart';
import 'package:metodista_app/components/presencial-cells-list.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _urlCells = Uri.parse(
    'https://www.google.com/maps/d/embed?mid=1B3rih6dfIGOgi8rtiKp8Xp9uIUWZVJo&ehbc=2E312F');

class Cells extends StatelessWidget {
  const Cells({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Células',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: const BackButton(
          color: Color.fromARGB(230, 245, 5, 5),
        ),
        toolbarHeight: 85,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                      height: 148,
                      child: Image.asset(
                        'assets/images/banner-igreja.png',
                        fit: BoxFit.cover,
                      )),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
              child: const Text(
                'Provérbios 27:17 NAA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(230, 245, 5, 5),
                ),
              ),
            ),
            Container(
              // Provérbios
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              width: 300,
              child: const Text(
                '“O ferro se afia com ferro, e uma pessoa, pela presença do seu próximo.”',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              // Conheça nossas células
              margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: const Text(
                'Conheça as nossas células',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(230, 245, 5, 5),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
              padding: EdgeInsets.all(20),
              width: 260,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(230, 245, 5, 5),
                  width: 1
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: OnlineCellsList(),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
              padding: EdgeInsets.all(20),
              width: 260,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(230, 245, 5, 5),
                  width: 1
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: PresencialCellsList(),
            ),
            GestureDetector(
              onTap: () => {_LaunchCells()},
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 15),
                padding: EdgeInsets.all(20),
                width: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(230, 245, 5, 5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  'Mapa de Células',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _LaunchCells() async {
  if (!await launchUrl(_urlCells)) {
    throw Exception('Não é possível abrir $_urlCells');
  }
}
