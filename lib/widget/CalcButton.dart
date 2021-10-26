import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final double textSize;
  final Function callback;

  const CalcButton({
    required this.text,
    this.textColor = const Color(0xFFDE1306),
    this.textSize = 28,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: TextButton(
          onPressed: () {
            callback(text);
          },
          style: TextButton.styleFrom(
            primary: Colors.white,
            textStyle: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: textSize,
                color: textColor,
              ),
            ),
          ),
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
