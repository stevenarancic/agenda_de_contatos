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
        Icon(
          this.communicationMethodIcon,
        ),
        Text(
          this.communicationMethodName,
        ),
      ],
    );
  }
}
