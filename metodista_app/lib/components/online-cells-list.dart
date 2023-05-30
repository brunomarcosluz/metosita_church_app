import 'package:flutter/material.dart';

class OnlineCellsList extends StatefulWidget {
  const OnlineCellsList({super.key});

  @override
  State<OnlineCellsList> createState() => _OnlineCellsListState();
}

class _OnlineCellsListState extends State<OnlineCellsList> {
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
