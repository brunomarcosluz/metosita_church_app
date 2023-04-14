import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _urlMember = Uri.parse('https://www.youtube.com/watch?v=6VcQDoL7DTM&ab_channel=DanielAlencar%2FAbaPai');
class Members extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Seja Membro',
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
                'Seja Membro!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(230, 245, 5, 5),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              width: 300,
              child: Text(
                'Se você tem interesse em se tornar membro da nossa comunidade toque no botão abaixo! \n Você será redirecionado ao nosso formulário de interesse.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {_LaunchMemberURL()},
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 15),
                padding: EdgeInsets.all(20),
                width: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(230, 245, 5, 5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Saiba Mais',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 15),
              child: Text(
                'Uma Família para pertencer.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
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

Future<void> _LaunchMemberURL() async {
  if (!await launchUrl(_urlMember)) {
    throw Exception('Não é possível abrir $_urlMember');
  }
}