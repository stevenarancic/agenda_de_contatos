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
            return ListTile(
              leading: IconButton(
                icon: Icon(Icons.star),
                onPressed: null,
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
                      "assets/images/Nicole.jpg",
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
                          "Nicole",
                          style: TextStyle(
                            color: grayTheme,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "+55 51 99371-2339",
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
          itemCount: 55),
    );
  }
}
