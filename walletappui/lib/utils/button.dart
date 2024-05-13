// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  final iconImagePath;
  final String buttonText;
  const ButtonPage(
      {super.key, required this.iconImagePath, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            height: 80,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 40,
                  spreadRadius: 10,
                )
              ],
            ),
            child: Center(child: Image.asset(iconImagePath)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700]),
          ),
        ),
      ],
    );
  }
}
