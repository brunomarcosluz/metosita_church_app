import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _urlCells = Uri.parse('https://www.google.com/maps/d/embed?mid=1B3rih6dfIGOgi8rtiKp8Xp9uIUWZVJo&ehbc=2E312F');

class Cells extends StatelessWidget {
  const Cells({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Células',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: BackButton(
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
                  child: Container(
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
              child: Text(
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
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              width: 300,
              child: Text(
                '“O ferro se afia com ferro, e uma pessoa, pela presença do seu próximo.”',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),/*
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromARGB(230, 245, 5, 5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Placeholder(),
            ),
             */
            
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
                child: Text(
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