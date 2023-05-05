import 'package:flutter/material.dart';

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
            ),
          ],
        ),
      ),
    );
  }
}