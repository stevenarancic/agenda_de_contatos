import 'package:agenda_de_contatos/screens/home/home.dart';
import 'package:agenda_de_contatos/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: blueTheme,
        dividerColor: grayDivider,
      ),
    ),
  );
}
