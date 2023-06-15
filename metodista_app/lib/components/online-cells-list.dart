import 'package:flutter/material.dart';

class OnlineCellsClosedList extends StatefulWidget {
  const OnlineCellsClosedList({super.key});

  @override
  State<OnlineCellsClosedList> createState() => _OnlineCellListClosedState();
}

class _OnlineCellListClosedState extends State<OnlineCellsClosedList> {
  bool _openOnlineCells = false;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, 
    children: [
      Text(
        'Células Online',
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