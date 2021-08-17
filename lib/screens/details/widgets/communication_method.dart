import 'package:agenda_de_contatos/styles.dart';
import 'package:flutter/material.dart';

class CommunicationMethod extends StatelessWidget {
  final String communicationMethodName;
  final IconData communicationMethodIcon;

  CommunicationMethod(
      {required this.communicationMethodName,
      required this.communicationMethodIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(this.communicationMethodIcon),
          color: blueTheme,
          iconSize: 28,
        ),
        Text(
          this.communicationMethodName,
          style: TextStyle(
            color: blueTheme,
          ),
        ),
      ],
    );
  }
}
