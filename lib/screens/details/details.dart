import 'package:agenda_de_contatos/model/contact.dart';
import 'package:agenda_de_contatos/styles.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final Contact _contact;

  Details(this._contact);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          (_contact.isFavorite) ? Icon(Icons.star) : Icon(Icons.star_outline),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(_contact.photo),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  top: 12,
                ),
                child: Text(
                  _contact.name,
                  style: TextStyle(
                    color: grayTheme,
                    fontSize: 26,
                  ),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.email_outlined,
                    color: blueTheme,
                    size: 28,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    _contact.email,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
