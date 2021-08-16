import 'package:agenda_de_contatos/model/contact.dart';
import 'package:agenda_de_contatos/provider/contacts.dart';
import 'package:agenda_de_contatos/styles.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus Contatos"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            Contact contact = contacts.elementAt(index);

            return ListTile(
              leading: IconButton(
                icon: (contact.isFavorite)
                    ? Icon(Icons.star)
                    : Icon(Icons.star_outline),
                onPressed: () {
                  setState(() {
                    contact.isFavorite = !contact.isFavorite;
                  });
                },
                color: blueTheme,
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.chevron_right,
                ),
                onPressed: null,
                color: grayTheme,
              ),
              title: Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      contact.photo,
                      width: 45,
                      height: 45,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          contact.name,
                          style: TextStyle(
                            color: grayTheme,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          contact.phone,
                          style: TextStyle(
                            color: grayTheme,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemCount: contacts.length),
    );
  }
}
