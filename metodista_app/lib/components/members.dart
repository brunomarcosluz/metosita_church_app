import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class Members extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final String videoId = "QBUoL8hXcxs";
    final String html = '<iframe '
        'src="https://www.youtube.com/embed/$videoId" '
        'frameborder="0" allowfullscreen>'
        '</iframe>';

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
            Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
              padding: EdgeInsets.all(10),
              width: 340,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(217, 245, 5, 5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: HtmlWidget(html)
            ),
          ],
        ),
      ),
    );
  }
}
