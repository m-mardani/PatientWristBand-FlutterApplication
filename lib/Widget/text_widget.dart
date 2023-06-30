import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String TextTop;
  final String TextIn;
  const TextWidget({super.key, required this.TextTop, required this.TextIn});

  @override
  Widget build(BuildContext context) => Card(
        clipBehavior: Clip.antiAlias,
        shadowColor: Color.fromARGB(240, 0, 0, 0),
        elevation: 8,
        color: Color.fromARGB(255, 6, 1, 26),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(33, 43, 100, 1),
            Color.fromARGB(255, 6, 1, 26)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  TextTop,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(242, 4, 244, 152),
                    fontFamily: 'Morvarid',
                  ),
                ),
              ),
              SizedBox(height: 2),
              Container(
                padding: EdgeInsets.only(left: 2, right: 2),
                child: Divider(
                  color: Color.fromARGB(130, 158, 158, 158),
                  thickness: 2,
                  height: 20,
                ),
              ),
              SizedBox(height: 8),
              Container(
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.end,
                  TextIn,
                  style: TextStyle(color: Colors.white, fontFamily: 'Morvarid'),
                ),
              )
            ],
          ),
        ),
      );
}
