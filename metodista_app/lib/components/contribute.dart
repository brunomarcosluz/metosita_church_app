import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _urlPIX = Uri.parse('https://www.youtube.com/watch?v=6VcQDoL7DTM&ab_channel=DanielAlencar%2FAbaPai');
class Contribute extends StatelessWidget {
  const Contribute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(230, 245, 5, 5),
        title: Text(
          'Ofertas e Contribuições',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: BackButton(
          color: Colors.white,
        ),
        toolbarHeight: 85,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //color: Colors.blue,
              height: 70,
              margin: EdgeInsets.all(25),
              child: Image.asset(
                'assets/images/logo-horizontal.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Text(
                '2 Coríntios 9:7',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Text(
                  '“Cada um dê conforme determinou em seu coração,\n não com pesar ou por obrigação, pois Deus ama quem \n dá com alegria.”',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto-Italic',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  )),
            ),
            Container(
              height: 200,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/qrcode.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Text('chave pix: pixmetodista@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  )),
            ),
            GestureDetector(
              onTap: () => {_LaunchPIXUrl()},
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 15),
                padding: EdgeInsets.all(20),
                width: 158,
                decoration: BoxDecoration(
                  color: Color.fromARGB(230, 245, 5, 5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Contribua',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future<void> _LaunchPIXUrl() async {
  if (!await launchUrl(_urlPIX)) {
    throw Exception('Não é possível abrir $_urlPIX');
  }
}