import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClick;
  const ButtonWidget({super.key, required this.text, required this.onClick});

  @override
  Widget build(BuildContext context) => ElevatedButton(
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          shape: const StadiumBorder(),
          padding: const EdgeInsets.all(10.0),
          textStyle: const TextStyle(fontFamily: 'Morvarid'),
          primary: const Color.fromARGB(255, 23, 4, 99),
          elevation: 15,
          side: const BorderSide(
              color: Color.fromARGB(255, 60, 54, 54), width: 1)),
      onPressed: onClick,
      child: Text(text));
}
