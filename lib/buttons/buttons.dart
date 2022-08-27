import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // Variable declarartion
  final color;
  final textColor;
  final String? buttonText;
  final buttonTapped;

  // Constructor
  const MyButton({this.color, this.textColor, this.buttonText, this.buttonTapped, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(0.2),
        child: ClipRRect(
          // borderRadius: BorderRadius.circular(25),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText!,
                style: TextStyle(
                    color: textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
