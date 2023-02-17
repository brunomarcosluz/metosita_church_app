import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
               Container(
                margin: EdgeInsets.all(30),
                //alignment: Alignment.center,
                color: Colors.blue,
                height: 70,
                child: Image.asset(
                  'assets/images/logo-horizontal.png',
                  fit: BoxFit.cover,
                ),
               ),
            ],
          )
        ],
      ),
    );
  }
}
