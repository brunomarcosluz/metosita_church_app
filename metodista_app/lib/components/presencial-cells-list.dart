import 'package:flutter/material.dart';

class PresencialCellsList extends StatefulWidget {
  const PresencialCellsList({super.key});

  @override
  State<PresencialCellsList> createState() => _PresencialCellsListState();
}

class _PresencialCellsListState extends State<PresencialCellsList> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, 
    children: [
      Text(
        'Células Presenciais',
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(230, 245, 5, 5),
        ),
      ),
      SizedBox(
        width: 8,
      ),
      Icon(
          Icons.arrow_forward,
          color: Color.fromARGB(230, 245, 5, 5),
          size: 18,
        ),
    ]);
  }
}
