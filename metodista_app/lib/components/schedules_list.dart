import 'package:flutter/material.dart';

class SchedulesList extends StatelessWidget {
  const SchedulesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              height: 200,
              color: Colors.blue,
              child: Image.asset('assets/images/cultos.png', fit: BoxFit.cover,),
            ),
            Container(
              height: 200,
              color: Colors.blue,
              child: Image.asset('assets/images/juventude.jpeg', fit: BoxFit.cover,),
            ),
           Container(
              height: 200,
              color: Colors.blue,
              child: Image.asset('assets/images/kids.png', fit: BoxFit.cover,),
            ),
            Container(
              height: 200,
              color: Colors.blue,
              child: Image.asset('assets/images/bebe-apontando.png', fit: BoxFit.cover,),
            ),
          ],
          scrollDirection: Axis.vertical,
          
        ),
    );
  }
}
